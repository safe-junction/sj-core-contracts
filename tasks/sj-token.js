task('sjToken:xTransfer')
  .addParam('sjToken', 'SJToken address')
  .addParam('destinationChainId', 'destination chain id')
  .addParam('account', 'Address where funds are mint')
  .addParam('amount', 'Address where funds are mint')
  .setAction(async (_args) => {
    const SJToken = await ethers.getContractFactory('SJToken')
    const sjToken = await SJToken.attach(_args.sjToken)
    const tx = await sjToken.xTransfer(_args.destinationChainId, _args.account, _args.amount)
    console.log('Transfer sent:', tx.hash)
  })
