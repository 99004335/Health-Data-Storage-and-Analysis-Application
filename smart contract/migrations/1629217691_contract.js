const patientdata = artifacts.require("patientdata");

module.exports = function (deployer) {
  deployer.deploy(patientdata);
};
