CREATE TABLE Organiser (
    organiser_id INT PRIMARY KEY IDENTITY,
    name NVARCHAR(100) NOT NULL,
    email NVARCHAR(100) UNIQUE NOT NULL,
    phone NVARCHAR(20)
);

CREATE TABLE Participant (
    participant_id INT PRIMARY KEY IDENTITY,
    name NVARCHAR(100) NOT NULL,
    email NVARCHAR(100) UNIQUE NOT NULL,
    dob DATE,
    gender NVARCHAR(10)
);

CREATE TABLE Event (
    event_id INT PRIMARY KEY IDENTITY,
    organiser_id INT FOREIGN KEY REFERENCES Organiser(organiser_id),
    name NVARCHAR(100) NOT NULL,
    date DATE NOT NULL,
    location NVARCHAR(100)
);

CREATE TABLE Category (
    category_id INT PRIMARY KEY IDENTITY,
    event_id INT FOREIGN KEY REFERENCES Event(event_id),
    name NVARCHAR(50),
    distance_km DECIMAL(5,2)
);

CREATE TABLE Enrolment (
    enrolment_id INT PRIMARY KEY IDENTITY,
    participant_id INT FOREIGN KEY REFERENCES Participant(participant_id),
    event_id INT FOREIGN KEY REFERENCES Event(event_id),
    category_id INT FOREIGN KEY REFERENCES Category(category_id),
    status NVARCHAR(20) DEFAULT 'Registered'
);

CREATE TABLE Result (
    result_id INT PRIMARY KEY IDENTITY,
    enrolment_id INT FOREIGN KEY REFERENCES Enrolment(enrolment_id),
    finish_time TIME,
    position INT
);

-- Sample Data
INSERT INTO Organiser (name, email, phone) VALUES
('Cape Town Marathon Org', 'ctmarathon@raceday.com', '0211234567'),
('Soweto Marathon Org', 'soweto@raceday.com', '0117654321');

INSERT INTO Participant (name, email, dob, gender) VALUES
('Busisiwe M', 'busisiwe@raceday.com', '2000-05-15', 'F'),
('Thabo K', 'thabo@raceday.com', '1998-09-21', 'M');

INSERT INTO Event (organiser_id, name, date, location) VALUES
(1, 'Cape Town Marathon', '2026-10-01', 'Cape Town'),
(2, 'Soweto Marathon', '2026-11-15', 'Johannesburg'),
(1, 'Two Oceans Half', '2026-04-10', 'Cape Town');
