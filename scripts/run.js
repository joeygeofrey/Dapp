const main = async () => {
    const [owner, randomPerson] = await hre.ethers.getSigners();
    const dappContractFactory = await hre.ethers.getContractFactory("Dapp");
    const dappContract = await dappContractFactory.deploy();
    await dappContract.deployed();
  
    console.log("Contract deployed to:", dappContract.address);
    console.log("Contract deployed by:", owner.address);
  
    await dappContract.getTotalDapps();
  
    const firstDappTxn = await dappContract.dapp();
    await firstDappTxn.wait();
  
    await dappContract.getTotalDapps();
  
    const secondDappTxn = await dappContract.connect(randomPerson).dapp();
    await secondDappTxn.wait();
  
    await dappContract.getTotalDapps();
};
  
  const runMain = async () => {
    try {
      await main();
      process.exit(0);
    } catch (error) {
      console.log(error);
      process.exit(1);
    }
};
  
runMain();