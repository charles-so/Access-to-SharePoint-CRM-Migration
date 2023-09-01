PRINT '';
PRINT '*** Populating with dummies';
GO

-- Insert sample data into Diets table
INSERT INTO [dbo].[Diets] ([Diet]) VALUES ('Vegetarian');
INSERT INTO [dbo].[Diets] ([Diet]) VALUES ('Vegan');
INSERT INTO [dbo].[Diets] ([Diet]) VALUES ('Gluten-free');
INSERT INTO [dbo].[Diets] ([Diet]) VALUES ('Keto');
INSERT INTO [dbo].[Diets] ([Diet]) VALUES ('Paleo');

-- Insert sample data into GroupsList table
INSERT INTO [dbo].[GroupsList] ([Group]) VALUES ('Developers');
INSERT INTO [dbo].[GroupsList] ([Group]) VALUES ('Designers');
INSERT INTO [dbo].[GroupsList] ([Group]) VALUES ('Managers');
INSERT INTO [dbo].[GroupsList] ([Group]) VALUES ('Marketing');
INSERT INTO [dbo].[GroupsList] ([Group]) VALUES ('Sales');

-- Insert sample data into Reports table
INSERT INTO [dbo].[Reports] ([Days], [Events], [Accepted], [Attended], [DNA], [Speaker], [Response], [Diet])
VALUES ('Monday', 3, 2, 2, 0, 1, 5, 1);
INSERT INTO [dbo].[Reports] ([Days], [Events], [Accepted], [Attended], [DNA], [Speaker], [Response], [Diet])
VALUES ('Tuesday', 2, 1, 1, 0, 0, 3, 2);
INSERT INTO [dbo].[Reports] ([Days], [Events], [Accepted], [Attended], [DNA], [Speaker], [Response], [Diet])
VALUES ('Wednesday', 1, 1, 0, 1, 1, 1, 3);

-- Insert sample data into Responses table
INSERT INTO [dbo].[Responses] ([Response]) VALUES ('Positive');
INSERT INTO [dbo].[Responses] ([Response]) VALUES ('Neutral');
INSERT INTO [dbo].[Responses] ([Response]) VALUES ('Negative');

-- Insert sample data into Events table
INSERT INTO [dbo].[Events] ([EventName], [EventDescription], [Status], [Location], [AvailableSpaces], [StartDate], [EndDate], [StartTime], [MorningBreak], [LunchBreak], [EndTime], [Sundowner], [Caterer], [CatererTel], [CatererEmail], [Notes], [ID])
VALUES ('Tech Conference', 'Annual technology conference', 'Upcoming', 'Convention Center', 500, '2023-10-15', '2023-10-17', '09:00:00', '10:30:00', '12:30:00', '17:00:00', '18:30:00', 'Catering Co.', '123-456-7890', 'catering@example.com', 'Bring your own device', 1);
INSERT INTO [dbo].[Events] ([EventName], [EventDescription], [Status], [Location], [AvailableSpaces], [StartDate], [EndDate], [StartTime], [MorningBreak], [LunchBreak], [EndTime], [Sundowner], [Caterer], [CatererTel], [CatererEmail], [Notes], [ID])
VALUES ('Marketing Seminar', 'Strategies for effective marketing', 'Completed', 'Hotel Ballroom', 200, '2023-09-20', '2023-09-21', '10:00:00', '11:30:00', '13:00:00', '16:00:00', '17:30:00', 'Delicious Catering', '987-654-3210', 'info@deliciouscatering.com', 'Networking session after', 2);
INSERT INTO [dbo].[Events] ([EventName], [EventDescription], [Status], [Location], [AvailableSpaces], [StartDate], [EndDate], [StartTime], [MorningBreak], [LunchBreak], [EndTime], [Sundowner], [Caterer], [CatererTel], [CatererEmail], [Notes], [ID])
VALUES ('Conference Workshop', 'Interactive sessions on various topics', 'Ongoing', 'Conference Center', 150, '2023-10-25', '2023-10-26', '10:00:00', '11:30:00', '13:00:00', '16:30:00', '18:00:00', 'Eventful Eats', '777-555-9999', 'contact@eventfuleats.com', 'Hands-on experience', 5);
INSERT INTO [dbo].[Events] ([EventName], [EventDescription], [Status], [Location], [AvailableSpaces], [StartDate], [EndDate], [StartTime], [MorningBreak], [LunchBreak], [EndTime], [Sundowner], [Caterer], [CatererTel], [CatererEmail], [Notes], [ID])
VALUES ('Leadership Summit', 'Bringing together industry leaders', 'Upcoming', 'Grand Hotel', 250, '2023-11-08', '2023-11-10', '09:30:00', '11:00:00', '12:30:00', '18:30:00', '19:00:00', 'Epic Cuisine', '123-987-4567', 'info@epiccuisine.net', 'Panel discussions', 6);

-- Insert sample data into Attendees table
INSERT INTO [dbo].[Attendees] ([EventName], [Accepted], [Declined], [Attended], [Speaker], [Subject], [Presentation], [Day], [Diet], [StartTalkTime], [EndTalkTime], [ID], [EventsID], [Extra])
VALUES ('Tech Conference', 1, 0, 1, 0, 'AI and the Future', 0, '2023-10-15', 1, '10:30:00', '11:30:00', 12345, 1, 0);
INSERT INTO [dbo].[Attendees] ([EventName], [Accepted], [Declined], [Attended], [Speaker], [Subject], [Presentation], [Day], [Diet], [StartTalkTime], [EndTalkTime], [ID], [EventsID], [Extra])
VALUES ('Marketing Seminar', 1, 0, 1, 1, 'Social Media Trends', 1, '2023-09-20', 2, '11:30:00', '12:30:00', 67890, 2, 1);
INSERT INTO [dbo].[Attendees] ([EventName], [Accepted], [Declined], [Attended], [Speaker], [Subject], [Presentation], [Day], [Diet], [StartTalkTime], [EndTalkTime], [ID], [EventsID], [Extra])
VALUES ('Conference Workshop', 1, 0, 1, 0, 'Data Analytics Basics', 0, '2023-10-25', 3, '11:30:00', '12:30:00', 98765, 5, 1);
INSERT INTO [dbo].[Attendees] ([EventName], [Accepted], [Declined], [Attended], [Speaker], [Subject], [Presentation], [Day], [Diet], [StartTalkTime], [EndTalkTime], [ID], [EventsID], [Extra])
VALUES ('Leadership Summit', 1, 0, 0, 1, 'Building High-Performing Teams', 0, '2023-11-08', 2, '10:30:00', '11:30:00', 54321, 6, 0);