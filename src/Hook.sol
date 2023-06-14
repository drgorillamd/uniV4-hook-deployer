// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {IHooks, IPoolManager, BalanceDelta} from "@uniswap/core-next/contracts/interfaces/IHooks.sol";

contract Hook is IHooks {
    uint256 _dummyToSilenceSolcWarnings = 6942069;

    function beforeInitialize(address sender, IPoolManager.PoolKey calldata key, uint160 sqrtPriceX96)
        external
        returns (bytes4)
    {
        sender;
        key;
        sqrtPriceX96;
        _dummyToSilenceSolcWarnings = 69420;
        return IHooks.beforeInitialize.selector;
    }

    function afterInitialize(address sender, IPoolManager.PoolKey calldata key, uint160 sqrtPriceX96, int24 tick)
        external
        returns (bytes4)
    {
        sender;
        key;
        sqrtPriceX96;
        tick;
        _dummyToSilenceSolcWarnings = 69420;

        return IHooks.afterInitialize.selector;
    }

    function beforeModifyPosition(
        address sender,
        IPoolManager.PoolKey calldata key,
        IPoolManager.ModifyPositionParams calldata params
    ) external returns (bytes4) {
        sender;
        key;
        params;
        _dummyToSilenceSolcWarnings = 69420;

        return IHooks.beforeModifyPosition.selector;
    }

    function afterModifyPosition(
        address sender,
        IPoolManager.PoolKey calldata key,
        IPoolManager.ModifyPositionParams calldata params,
        BalanceDelta delta
    ) external returns (bytes4) {
        sender;
        key;
        params;
        delta;
        _dummyToSilenceSolcWarnings = 69420;

        return IHooks.afterModifyPosition.selector;
    }

    function beforeSwap(address sender, IPoolManager.PoolKey calldata key, IPoolManager.SwapParams calldata params)
        external
        returns (bytes4)
    {
        sender;
        key;
        params;
        _dummyToSilenceSolcWarnings = 69420;

        return IHooks.beforeSwap.selector;
    }

    function afterSwap(
        address sender,
        IPoolManager.PoolKey calldata key,
        IPoolManager.SwapParams calldata params,
        BalanceDelta delta
    ) external returns (bytes4) {
        sender;
        key;
        params;
        delta;
        _dummyToSilenceSolcWarnings = 69420;

        return IHooks.afterSwap.selector;
    }

    function beforeDonate(address sender, IPoolManager.PoolKey calldata key, uint256 amount0, uint256 amount1)
        external
        returns (bytes4)
    {
        sender;
        key;
        amount0;
        amount1;
        _dummyToSilenceSolcWarnings = 69420;

        return IHooks.beforeDonate.selector;
    }

    function afterDonate(address sender, IPoolManager.PoolKey calldata key, uint256 amount0, uint256 amount1)
        external
        returns (bytes4)
    {
        sender;
        key;
        amount0;
        amount1;
        _dummyToSilenceSolcWarnings = 69420;

        return IHooks.afterDonate.selector;
    }
}
