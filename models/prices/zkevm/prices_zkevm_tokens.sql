{{ config(
        schema='prices_zkevm',
        alias = 'tokens',
        materialized='table',
        file_format = 'delta',
        tags = ['static']
        )
}}
SELECT
    token_id
    , blockchain
    , symbol
    , contract_address
    , decimals
FROM
(
    VALUES
    ('weth-weth','zkevm','WETH',0x4f9a0e7fd2bf6067db6994cf12e4495df938e6e9,18),
    ('reth-rocket-pool-eth','zkevm','RETH',0xb23c20efce6e24acca0cef9b7b7aa196b84ec942,18),
    ('usdc-usdc','zkevm','USDC',0x37eaa0ef3549a5bb7d431be78a3d99bd360d19e5,6),
    ('dai-dai','zkevm','DAI',0x744c5860ba161b5316f7e80d9ec415e2727e5bd5,18),
    ('rseth-rseth','zkevm','RSETH',0x8c7d118b5c47a5bcbd47cc51789558b98dad17c5,18),
    ('aura-aura-finance','zkevm','AURA',0x1509706a6c66ca549ff0cb464de88231ddbe213b,18),
    ('matic-polygon','zkevm','MATIC',0xa2036f0538221a77a3937f1379699f44945018d0,18),
    ('aeth-ankreth','zkevm','AETH',0x12d8ce035c5de3ce39b1fdd4c1d5a745eaba3b8c,18),
    ('bal-balancer','zkevm','BAL',0x120ef59b80774f02211563834d8e3b72cb1649d6,18),
    ('usdt-tether','zkevm','USDT',0x1e4a5963abfd975d8c9021ce480b42188849d41d,6)
) as temp (token_id, blockchain, symbol, contract_address, decimals)

