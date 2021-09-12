CREATE TABLE [dbo].[OrderItem] (
    [Id]        INT             IDENTITY (1, 1) NOT NULL,
    [OrderId]   INT             NOT NULL,
    [ProductId] INT             NOT NULL,
    [UnitPrice] DECIMAL (12, 2) DEFAULT ((0)) NOT NULL,
    [Quantity]  INT             DEFAULT ((1)) NOT NULL,
    CONSTRAINT [PK_ORDERITEM] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OrderItem_Order] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Order] ([Id])
);

