const FarmToken = artifacts.require("FarmToken");
const FarmAsset = artifacts.require("FarmAsset");
const FarmToEarn = artifacts.require("FarmToEarn");

module.exports = async function (deployer, network, accounts) {
  await deployer.deploy(FarmToken);
  const farmTokenInstance = await FarmToken.deployed();

  await deployer.deploy(FarmAsset);
  const farmAssetInstance = await FarmAsset.deployed();

  await deployer.deploy(FarmToEarn, farmTokenInstance.address, farmAssetInstance.address);
  const farmToEarnInstance = await FarmToEarn.deployed();

  console.log("FarmToken deployed at:", farmTokenInstance.address);
  console.log("FarmAsset deployed at:", farmAssetInstance.address);
  console.log("FarmToEarn deployed at:", farmToEarnInstance.address);
};