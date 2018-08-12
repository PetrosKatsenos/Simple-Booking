INSERT INTO [dbo].[Place] ([PlaceId], [PlaceName], [Address], [City], [State], [ZipCode], [PlacePrice])
VALUES (1, 'Mountain', 'Tiger Mountain' ,'Issaquah', 'WA', 98027, 0)

INSERT INTO [dbo].[Place] ([PlaceId], [PlaceName], [Address], [City], [State], [ZipCode], [PlacePrice])
VALUES (2, 'Bellevue College', 'MAin Street', 'Bellevue', 'WA', 98048, 500)

INSERT INTO [dbo].[Catalog] ([EventId], [EventName], [Description], [PlaceId], [EventDate], [EventPrice], [EventImageURL], [EventPriceType], [EventCategory])
VALUES (1, 'Camping', 'Sleeping in a tent outdoor', 1, '8/12/2018', 0, 'null', 0, 0)

INSERT INTO [dbo].[Catalog] ([EventId], [EventName], [Description], [PlaceId], [EventDate], [EventPrice], [EventImageURL], [EventPriceType], [EventCategory])
VALUES (2, 'Java Class', 'Learn Java', 2, '8/12/2018', 0, 'null', 1, 4)
