INSERT INTO [dbo].[Place] ([PlaceId], [PlaceName], [Address], [City], [State], [ZipCode], [PlacePrice])
VALUES (1, 'Mountain', 'Tiger Mountain' ,'Issaquah', 'WA', 98027, 0)

INSERT INTO [dbo].[Place] ([PlaceId], [PlaceName], [Address], [City], [State], [ZipCode], [PlacePrice])
VALUES (2, 'Bellevue College', 'Main Street', 'Bellevue', 'WA', 98048, 500)

INSERT INTO [dbo].[Place] ([PlaceId], [PlaceName], [Address], [City], [State], [ZipCode], [PlacePrice])
VALUES (3, 'Sammamish Lake', 'Lake Sammamish Street', 'Sammamish', 'WA', 98075, 760)

INSERT INTO [dbo].[Catalog] ([Id], [Name], [Description], [PlaceId], [StartDate], [EndDate], [PriceType], [Price], [ImageURL], [Type], [Category], [InitialTicketCount])
VALUES (1, 'Camping', 'Sleeping in a tent outdoor', 1, '8/12/2018', '8/12/2019', 1, 100, 'null', 0, 0, 100)

INSERT INTO [dbo].[Catalog] ([Id], [Name], [Description], [PlaceId], [StartDate], [EndDate], [PriceType], [Price], [ImageURL], [Type], [Category], [InitialTicketCount])
VALUES (2, 'Java Class', 'Learn Java', 2, '8/11/2018', '8/11/2019', 0, 0, 'null', 0, 4, 200)

INSERT INTO [dbo].[Catalog] ([Id], [Name], [Description], [PlaceId], [StartDate], [EndDate], [PriceType], [Price], [ImageURL], [Type], [Category], [InitialTicketCount])
VALUES (3, 'DotNet Class', 'Learn DotNet', 2, '9/11/2018', '9/11/2019', 0, 0, 'null', 0, 4, 300)

INSERT INTO [dbo].[Catalog] ([Id], [Name], [Description], [PlaceId], [StartDate], [EndDate], [PriceType], [Price], [ImageURL], [Type], [Category], [InitialTicketCount])
VALUES (4, 'php Class', 'Learn php', 2, '8/14/2018', '9/11/2019', 0, 0, 'null', 0, 4, 400)

INSERT INTO [dbo].[Catalog] ([Id], [Name], [Description], [PlaceId], [StartDate], [EndDate], [PriceType], [Price], [ImageURL], [Type], [Category], [InitialTicketCount])
VALUES (5, 'perl Class', 'Learn perl', 2, '8/14/2018', '8/16/2018', 0, 0, 'null', 0, 4, 500)

INSERT INTO [dbo].[Catalog] ([Id], [Name], [Description], [PlaceId], [StartDate], [EndDate], [PriceType], [Price], [ImageURL], [Type], [Category], [InitialTicketCount])
VALUES (6, 'Fishing ', 'Salmon fishing', 3, '8/19/2018', '8/27/2018', 1, 760, 'fishing-1.png', 6, 16, 75)
