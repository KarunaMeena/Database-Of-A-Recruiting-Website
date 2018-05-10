CREATE TABLE glassdoor.Advertisor (
    AdvertisorID INT PRIMARY KEY,
    AdvertisorsName VARCHAR(45),
    Payperclickamount INT,
    Payperviewamount INT,
    Carddetails VARCHAR(50) DEFAULT 'No Payment Method Provided'
    );
    
    CREATE TABLE glassdoor.AdvertisorFinances (
    AdvertisorID INT,
    NoOfViews VARCHAR(100) NOT NULL DEFAULT 'No views',
    NoOfClicks VARCHAR(100) NOT NULL DEFAULT 'No clicks',
    FOREIGN KEY (AdvertisorID)
        REFERENCES glassdoor.Advertisor (AdvertisorID)
);

CREATE TABLE glassdoor.Person (
    Personid INT PRIMARY KEY,
    PersonName varchar(45) not null,
    Age INT NOT NULL,
    Sex ENUM('Decline to respond', 'Male', 'Female', 'Transgender'),
    StreetAddress VARCHAR(45) NOT NULL,
    Zip INT NOT NULL,
    City VARCHAR(45) NOT NULL,
    State VARCHAR(45) NOT NULL,
    SSN INT DEFAULT 0000,
    CreditCardNo varchar(100) NOT NULL default 'No Payment Method Provided'
);
drop table person;

CREATE TABLE glassdoor.Activities (
    EventID INT PRIMARY KEY NOT NULL,
    EventType ENUM('Workshop', 'Conference', 'Retreat', 'CompanyTrip'),
    RegistrationAmount INT,
    EventDate date,
    AvailableSeats int
    );

CREATE TABLE glassdoor.Registration (
    RegistrationID INT PRIMARY KEY NOT NULL,
    EventID INT,
    PersonId int,
    FOREIGN KEY (eventID)
        REFERENCES glassdoor.activities (eventID),
    FOREIGN KEY (PersonId)
        REFERENCES glassdoor.Person (personId)
);

create table glassdoor.SalaryReport(
SalaryReportID int primary key,
PersonId int,
Salary bigint,
JobTitle Varchar(100),
   FOREIGN KEY (PersonId)
        REFERENCES glassdoor.person (Personid)
       
        );
        
        CREATE TABLE glassdoor.UserEmployer (
    Personid INT,
    FOREIGN KEY (personid)
        REFERENCES person (personid),
    EmployerID INT PRIMARY KEY NOT NULL,
    
    CompanyName VARCHAR(45)
    
);
CREATE TABLE glassdoor.EmployerBranding (
    EmployerBrandingID INT PRIMARY KEY,
    EmployerID INT,
    BrandingType ENUM('vLog', 'Blog', 'Social
    Media Branding', 'Cultural Branding'),
    FOREIGN KEY (EmployerID)
        REFERENCES glassdoor.userEmployer (EmployerID)
);

create table glassdoor.EmployerFinances(
EmpFinancesID int primary key,EmployerID int, 
vlogPay int, BlogPay int, SocialMediaPay int, CulturalBrandingPay int,
foreign key (EmployerID) references glassdoor.useremployer(EmployerID)
);

CREATE TABLE glassdoor.jobs (
    EmployerID INT,
    JobID INT PRIMARY KEY,
    JobTitle VARCHAR(45) NOT NULL,
    datePosted DATE,
    FOREIGN KEY (EmployerID)
        REFERENCES glassdoor.userEmployer (EmployerID)
);

 CREATE TABLE glassdoor.UserCandidate (
    UserID INT PRIMARY KEY NOT NULL,
    Personid int,
    foreign key (personid) references person(personid),
   EducationLevel ENUM('High School', 'Undergraduate', 'Graduate', 'Postgraduate'),
   WorkAuthorizationStatus enum ('Not Eligible', 'Eligible')
);       

CREATE TABLE glassdoor.JobApplication (
    ApplicatioNo INT PRIMARY key,
    CandidateNo INT NOT NULL,
    JobID INT,
    CompletedDate DATE,
    NoOfApplications INT DEFAULT '0',
    
    FOREIGN KEY (JobID)
        REFERENCES glassdoor.jobs (JobID),
    FOREIGN KEY (CandidateNo)
        REFERENCES glassdoor.UserCandidate (userID)
);



