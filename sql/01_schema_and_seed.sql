-- Step 1. Database, trade table, and the same ten rows as the Databricks notebook.

IF DB_ID(N'CommodityClose') IS NULL
    CREATE DATABASE CommodityClose;
GO

USE CommodityClose;
GO

IF OBJECT_ID(N'dbo.commodity_trades', N'U') IS NOT NULL
    DROP TABLE dbo.commodity_trades;
GO

CREATE TABLE dbo.commodity_trades
(
    trade_id    int IDENTITY(1, 1) NOT NULL PRIMARY KEY,
    trade_date  date           NOT NULL,
    commodity   nvarchar(20)   NOT NULL,
    market      nvarchar(10)   NOT NULL,
    price       decimal(18, 2) NOT NULL,
    volume      int            NOT NULL,
    side        nvarchar(4)    NOT NULL,
    CONSTRAINT CK_commodity_trades_side CHECK (side IN (N'Buy', N'Sell')),
    CONSTRAINT CK_commodity_trades_volume CHECK (volume > 0),
    CONSTRAINT CK_commodity_trades_price CHECK (price > 0)
);
GO

INSERT INTO dbo.commodity_trades (trade_date, commodity, market, price, volume, side)
VALUES
    ('2025-01-05', N'Power', N'DE', 85.40, 1200, N'Buy'),
    ('2025-01-05', N'Gas',   N'NL', 32.10, 5000, N'Sell'),
    ('2025-01-12', N'Power', N'DE', 91.20,  800, N'Buy'),
    ('2025-01-18', N'CO2',   N'EU', 68.50, 2000, N'Buy'),
    ('2025-01-22', N'Gas',   N'NL', 29.80, 4500, N'Sell'),
    ('2025-01-28', N'Power', N'DE', 78.90, 1500, N'Sell'),
    ('2025-02-03', N'Power', N'DE', 88.30, 1100, N'Buy'),
    ('2025-02-10', N'CO2',   N'EU', 71.20, 1800, N'Sell'),
    ('2025-02-15', N'Gas',   N'NL', 31.50, 5200, N'Buy'),
    ('2025-02-25', N'Power', N'DE', 82.70,  950, N'Sell');
GO

SELECT trade_id, trade_date, commodity, market, price, volume, side
FROM dbo.commodity_trades
ORDER BY trade_date, commodity;
GO
