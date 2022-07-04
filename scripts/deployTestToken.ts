// We require the Hardhat Runtime Environment explicitly here. This is optional
// but useful for running the script in a standalone fashion through `node <script>`.
//
// When running the script with `npx hardhat run <script>` you'll find the Hardhat
// Runtime Environment's members available in the global scope.
import { ethers } from "hardhat";

async function main() {
  // Hardhat always runs the compile task when running scripts with its command
  // line interface.
  //
  // If this script is run directly using `node` you may want to call compile
  // manually to make sure everything is compiled
  // await hre.run('compile');

  // We get the contract to deploy
  const TestERC20= await ethers.getContractFactory("testERC20");

  var testERC20;
  testERC20 = await TestERC20.deploy("testERC20A","TEA");
  await testERC20.deployed();
  console.log("testERC20 deployed to:", testERC20.address);

  testERC20 = await TestERC20.deploy("testERC20B","TEB");
  await testERC20.deployed();
  console.log("testERC20 deployed to:", testERC20.address);

  testERC20 = await TestERC20.deploy("testERC20C","TEC");
  await testERC20.deployed();
  console.log("testERC20 deployed to:", testERC20.address);

  testERC20 = await TestERC20.deploy("testERC20D","TED");
  await testERC20.deployed();
  console.log("testERC20 deployed to:", testERC20.address);

  testERC20 = await TestERC20.deploy("testERC20E","TEE");
  await testERC20.deployed();
  console.log("testERC20 deployed to:", testERC20.address);

  testERC20 = await TestERC20.deploy("testERC20F","TEF");
  await testERC20.deployed();
  console.log("testERC20 deployed to:", testERC20.address);

  testERC20 = await TestERC20.deploy("testERC20G","TEG");
  await testERC20.deployed();
  console.log("testERC20 deployed to:", testERC20.address);

}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
