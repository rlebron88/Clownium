let OmeOme1MToken = artifacts.require("OmeOme1MToken");

module.exports = function (deployer) {
	deployer.deploy(OmeOme1MToken, {from: "0x627306090abaB3A6e1400e9345bC60c78a8BEf57", gas: 5000000});
};