// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

interface IBlastPoints {
  function configurePointsOperator(address operator) external;
  function configurePointsOperatorOnBehalf(address contractAddress, address operator) external;
}

contract BlastPointsCollector {
  constructor(address _pointsOperator) {
    // be sure to use the appropriate testnet/mainnet BlastPoints address
    IBlastPoints(0x2536FE9ab3F511540F2f9e2eC2A805005C3Dd800).configurePointsOperator(_pointsOperator);
  }
}
