/**
 * Starts an request to the ___-Import-Api to get all vehicles from a given ___-User
 *
 * @returns {Object} VehicleResponse
 *
 * @author Jonathan Silber
 */
const fs = require("fs");
const ms = require("ms");
const path = require("path");
const got = require("got");

const {
  enqueue,
  polling,
  importConnectionParams,
} = require("@audaris/conveyor-import-source");
const getSecret = (secret, key) =>
  fs.readFileSync(path.join("/secrets/default/", secret, key), "utf-8");

const dbUrl = getSecret("mongo-connection-string", "URL");
const dbEncryptionKey = getSecret("mongo-connection-string", "ENCRYPTION_SECRET");

const s3Bucket = getSecret("conveyor-s3", "BUCKET");
const s3AccessKey = getSecret("conveyor-s3", "ACCESS_KEY");
const s3SecretKey = getSecret("conveyor-s3", "SECRET_KEY");
const s3Endpoint = getSecret("conveyor-s3", "ENDPOINT");

module.exports = polling({
  crossroadsUrl: "http://crossroads.audarisx",

  dbUrl,
  s3Bucket,
  s3AccessKey,
  s3SecretKey,
  s3Endpoint,
  delay: "3 hours",
  transferType: "",
  format: "",

  async poll(config, import_) {
    const oneDayAgo = new Date(Date.now() - ms("1 day"));
    const startDate = import_.started_at || oneDayAgo;

    const params = importConnectionParams(dbEncryptionKey, import_);
    
    //! YOUR CODE GOES BELOW HERE

    if (!vehiclesSinceLastImport.length) {
      return [];
    }

    const item = await enqueue(
      config,
      import_,
      "data.json",
      JSON.stringify(vehiclesSinceLastImport)
    );
    return [item];
  },
});


async function makeRequest(reqUrl, params, body) {
  try {
    const { response } = await got.post(reqUrl, {
      responseType: "json",
      resolveBodyOnly: true,
      followRedirect: true,
      headers: {
        "Content-Type": "application/json",
      },
      timeout: {
        connect: ms("1 min"),
        send: ms("15 min"),
      },
      json: body,

      username: params.username,
      password: params.password,
    });
    return response;
  } catch (err) {
    console.log(err);
  }
}