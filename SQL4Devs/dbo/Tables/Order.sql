CREATE TABLE [dbo].[Order] (
    [Id]          INT             IDENTITY (1, 1) NOT NULL,
    [OrderDate]   DATETIME        DEFAULT (getdate()) NOT NULL,
    [OrderNumber] NVARCHAR (10)   NULL,
    [CustomerId]  INT             NOT NULL,
    [TotalAmount] DECIMAL (12, 2) DEFAULT ((0)) NULL,
    CONSTRAINT [PK_ORDER] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Order_Customer] FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([Id])
);

