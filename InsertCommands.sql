
insert into glassdoor.advertisor (AdvertisorID, AdvertisorsName, payperclickamount, payperviewamount, carddetails ) values (1, 'Bradtke-Schaden', 5, 10, '3561114591203009');
insert into glassdoor.advertisor (AdvertisorID, AdvertisorsName, payperclickamount, payperviewamount, carddetails) values (2, 'Harvey Inc', 3, 8, '3539140560193136');
insert into glassdoor.advertisor (AdvertisorID, AdvertisorsName, payperclickamount, payperviewamount, carddetails) values (3, 'O''Keefe, Beatty and Ebert', 5, 10, '5521628747490537');
insert into glassdoor.advertisor (AdvertisorID, AdvertisorsName, payperclickamount, payperviewamount, carddetails) values (4, 'Kulas Inc', 10, 4, '5225573530025901');
insert into glassdoor.advertisor (AdvertisorID, AdvertisorsName, payperclickamount, payperviewamount, carddetails) values (5, 'Dooley Group', 5, 3, '3550361374311391');
insert into glassdoor.advertisor (AdvertisorID, AdvertisorsName, payperclickamount, payperviewamount, carddetails) values (6, 'Adams and Sons', 2, 5, '4903253042781927');
insert into glassdoor.advertisor (AdvertisorID, AdvertisorsName, payperclickamount, payperviewamount, carddetails) values (7, 'Muller LLC', 14, 5, '30410631653396');
insert into glassdoor.advertisor (AdvertisorID, AdvertisorsName, payperclickamount, payperviewamount, carddetails) values (8, 'Ortiz, Adams and Hane', 2, 8, '3533689968282673');
insert into glassdoor.advertisor (AdvertisorID, AdvertisorsName, payperclickamount, payperviewamount, carddetails) values (9, 'Cronin, Tremblay and Sanford', 4, 5, '3584922557413328');
insert into glassdoor.advertisor (AdvertisorID, AdvertisorsName, payperclickamount, payperviewamount, carddetails) values (10, 'Maggio-Schinner', 5, 5, '374288367459079');

insert into AdvertisorFinances (AdvertisorId, NoOfViews, NoOfClicks) values (1, 8, 5);
insert into AdvertisorFinances (AdvertisorId, NoOfViews, NoOfClicks) values (2, 21, 8);
insert into AdvertisorFinances (AdvertisorId, NoOfViews, NoOfClicks) values (3, 33, 23);
insert into AdvertisorFinances (AdvertisorId, NoOfViews, NoOfClicks) values (4, 14, 8);
insert into AdvertisorFinances (AdvertisorId, NoOfViews, NoOfClicks) values (5, 15, 9);
insert into AdvertisorFinances (AdvertisorId, NoOfViews, NoOfClicks) values (6, 44, 34);
insert into AdvertisorFinances (AdvertisorId, NoOfViews, NoOfClicks) values (7, 71, 70);
insert into AdvertisorFinances (AdvertisorId, NoOfViews, NoOfClicks) values (8,78, 6);
insert into AdvertisorFinances (AdvertisorId, NoOfViews, NoOfClicks) values (9, 56, 32);
insert into AdvertisorFinances (AdvertisorId, NoOfViews, NoOfClicks) values (10, 12, 89);

insert into glassdoor.person (personid, personName, age, sex, StreetAddress, zip, city, state, ssn, CreditCardNo) values (1, 'Siouxie', 1, 'Female', '45 Burning Wood Place', '09915', 'Waterloo', 'Iowa', '881361592', '56022230691170400');
insert into glassdoor.person (personid, personName, age, sex, StreetAddress, zip, city, state, ssn, CreditCardNo) values (2, 'Lib', 2, 'Female', '4 Havey Terrace', '80912', 'Stamford', 'Connecticut', '560405186', '3567838861081448');
insert into glassdoor.person (personid, personName, age, sex, StreetAddress, zip, city, state, ssn, CreditCardNo) values (3, 'Vivi', 3, 'Transgender', '9 Anzinger Terrace', '30145', 'Boulder', 'Colorado', '857584486', '3528930436695394');
insert into glassdoor.person (personid, personName, age, sex, StreetAddress, zip, city, state, ssn, CreditCardNo) values (4, 'Beatriz', 4, 'Female', '1329 Weeping Birch Court', '69217', 'Oklahoma City', 'Oklahoma', '309110946', '3531743585596080');
insert into glassdoor.person (personid, personName, age, sex, StreetAddress, zip, city, state, ssn, CreditCardNo) values (5, 'Correy', 5, 'Transgender', '95 Dexter Drive', '02215', 'Saint Louis', 'Missouri', '411309866', '3541310265329139');
insert into glassdoor.person (personid, personName, age, sex, StreetAddress, zip, city, state, ssn, CreditCardNo) values (6, 'Fin', 6, 'Male', '56817 Everett Junction', '11225', 'Clearwater', 'Florida', '180976890', '6759557987192290');
insert into glassdoor.person (personid, personName, age, sex, StreetAddress, zip, city, state, ssn, CreditCardNo) values (7, 'Shawnee', 7, 'Decline to respond', '947 Londonderry Alley', '02115', 'Tampa', 'Florida', '157948469', '3568167103958232');
insert into glassdoor.person (personid, personName, age, sex, StreetAddress, zip, city, state, ssn, CreditCardNo) values (8, 'Anet', 8, 'Female', '697 Bonner Pass', '2562', '20135', 'Georgia', '399745038', '3545766357641499');
insert into glassdoor.person (personid, personName, age, sex, StreetAddress, zip, city, state, ssn, CreditCardNo) values (9, 'Marijn', 9, 'Male', '1633 Tony Parkway', '45109', 'Virginia Beach', 'Virginia', '198966226', '3564366207368280');
insert into glassdoor.person (personid, personName, age, sex, StreetAddress, zip, city, state, ssn, CreditCardNo) values (10, 'Merralee', 10, 'Decline to respond', '084 Annamark Lane', '12903', 'Elizabeth', 'New Jersey', '412196764', '3540840776994725');

insert into glassdoor.activities (eventID, eventType, RegistrationAmount,eventDate,AvailableSeats) values (1, 'Workshop', 10, '2017-07-03',30);
insert into glassdoor.activities (eventID, eventType, RegistrationAmount,eventDate,AvailableSeats) values (2, 'Conference', 70,'2017-07-09',45);
insert into glassdoor.activities (eventID, eventType, RegistrationAmount,eventDate,AvailableSeats) values (3, 'Retreat', 30,'2016-12-16',10);
insert into glassdoor.activities (eventID, eventType, RegistrationAmount,eventDate,AvailableSeats) values (4, 'CompanyTrip', 20, '2017-07-13',60);
insert into glassdoor.activities (eventID, eventType, RegistrationAmount,eventDate,AvailableSeats) values (5, 'Retreat', 15, '2017-11-28',15);
insert into glassdoor.activities (eventID, eventType, RegistrationAmount,eventDate,AvailableSeats) values (6, 'Conference', 12, '2017-11-11',30);
insert into glassdoor.activities (eventID, eventType, RegistrationAmount,eventDate,AvailableSeats) values (7, 'Workshop', 10, '2017-09-16',25);
insert into glassdoor.activities (eventID, eventType, RegistrationAmount,eventDate,AvailableSeats) values (8, 'Retreat', 25, '2017-06-22',50);
insert into glassdoor.activities (eventID, eventType, RegistrationAmount,eventDate,AvailableSeats) values (9, 'Workshop', 30,'2017-11-08',100);
insert into glassdoor.activities (eventID, eventType, RegistrationAmount,eventDate,AvailableSeats) values (10, 'Conference', 15, '2017-07-05',35);

insert into glassdoor.registration (registrationID, eventID, PersonId) values (1, 4, 7);
insert into glassdoor.registration (registrationID, eventID, PersonId) values (2, 4,1 );
insert into glassdoor.registration (registrationID, eventID, PersonId) values (3, 4, 2);
insert into glassdoor.registration (registrationID, eventID, PersonId) values (4, 4, 9);
insert into glassdoor.registration (registrationID, eventID, PersonId) values (5, 3, 3);
insert into glassdoor.registration (registrationID, eventID, PersonId) values (6, 2, 4);
insert into glassdoor.registration (registrationID, eventID, PersonId) values (7, 2, 8);
insert into glassdoor.registration (registrationID, eventID, PersonId) values (8, 6, 6);
insert into glassdoor.registration (registrationID, eventID, PersonId) values (9, 6, 5);
insert into glassdoor.registration (registrationID, eventID, PersonId) values (10, 6, 10);

use glassdoor;
insert into SalaryReport (SalaryReportID, PersonID, Salary, JobTitle) values (1, 5, 100000, 'Data Analyst');
insert into SalaryReport (SalaryReportID, PersonID, Salary, JobTitle) values (2, 1, 120000, 'Accountant');
insert into SalaryReport (SalaryReportID, PersonID, Salary, JobTitle) values (3, 2, 30000, 'Data Analyst');
insert into SalaryReport (SalaryReportID, PersonID, Salary, JobTitle) values (4, 3, 60000, 'Data Analyst');
insert into SalaryReport (SalaryReportID, PersonID, Salary, JobTitle) values (5, 4, 50000, 'Accountant');
insert into SalaryReport (SalaryReportID, PersonID, Salary, JobTitle) values (6, 10, 100000, 'Data Analyst');
insert into SalaryReport (SalaryReportID, PersonID, Salary, JobTitle) values (7, 8, 120000, 'Accountant');
insert into SalaryReport (SalaryReportID, PersonID, Salary, JobTitle) values (8, 7, 30000, 'Data Analyst');
insert into SalaryReport (SalaryReportID, PersonID, Salary, JobTitle) values (9, 6, 60000, 'Accountant');
insert into SalaryReport (SalaryReportID, PersonID, Salary, JobTitle) values (10, 9, 50000, 'Accountant');

insert into glassdoor.EmployerBranding (EmployerBrandingID, EmployerID, BrandingType) values (1, 1, 'vLog');
insert into glassdoor.EmployerBranding (EmployerBrandingID, EmployerID, BrandingType) values (2, 2, 'blog');
insert into glassdoor.EmployerBranding (EmployerBrandingID, EmployerID, BrandingType) values (3, 3, 'Social Media Branding');
insert into glassdoor.EmployerBranding (EmployerBrandingID, EmployerID, BrandingType) values (4, 4, 'Cultural Branding');
insert into glassdoor.EmployerBranding (EmployerBrandingID, EmployerID, BrandingType) values (5, 5, 'blog');

insert into glassdoor.userEmployer (Personid, EmployerID, CompanyName) values (1, 1, 'Microsoft');
insert into glassdoor.userEmployer (Personid, EmployerID, CompanyName) values (2, 2, 'Microsoft');
insert into glassdoor.userEmployer (Personid, EmployerID, CompanyName) values (3, 3, 'Apple');
insert into glassdoor.userEmployer (Personid, EmployerID, CompanyName) values (4, 4, 'Apple');
insert into glassdoor.userEmployer (Personid, EmployerID, CompanyName) values (5, 5, 'Microsoft');

insert into glassdoor.registration (registrationID, eventID, PersonId) values (1, 4, 7);
insert into glassdoor.registration (registrationID, eventID, PersonId) values (2, 4,1 );
insert into glassdoor.registration (registrationID, eventID, PersonId) values (3, 4, 2);
insert into glassdoor.registration (registrationID, eventID, PersonId) values (4, 4, 9);
insert into glassdoor.registration (registrationID, eventID, PersonId) values (5, 3, 3);
insert into glassdoor.registration (registrationID, eventID, PersonId) values (6, 2, 4);
insert into glassdoor.registration (registrationID, eventID, PersonId) values (7, 2, 8);
insert into glassdoor.registration (registrationID, eventID, PersonId) values (8, 6, 6);
insert into glassdoor.registration (registrationID, eventID, PersonId) values (9, 6, 5);
insert into glassdoor.registration (registrationID, eventID, PersonId) values (10, 6, 10);

insert into glassdoor.activities (eventID, eventType, RegistrationAmount,eventDate,AvailableSeats) values (1, 'Workshop', 10, '2017-07-03',30);
insert into glassdoor.activities (eventID, eventType, RegistrationAmount,eventDate,AvailableSeats) values (2, 'Conference', 70,'2017-07-09',45);
insert into glassdoor.activities (eventID, eventType, RegistrationAmount,eventDate,AvailableSeats) values (3, 'Retreat', 30,'2016-12-16',10);
insert into glassdoor.activities (eventID, eventType, RegistrationAmount,eventDate,AvailableSeats) values (4, 'CompanyTrip', 20, '2017-07-13',60);
insert into glassdoor.activities (eventID, eventType, RegistrationAmount,eventDate,AvailableSeats) values (5, 'Retreat', 15, '2017-11-28',15);
insert into glassdoor.activities (eventID, eventType, RegistrationAmount,eventDate,AvailableSeats) values (6, 'Conference', 12, '2017-11-11',30);
insert into glassdoor.activities (eventID, eventType, RegistrationAmount,eventDate,AvailableSeats) values (7, 'Workshop', 10, '2017-09-16',25);
insert into glassdoor.activities (eventID, eventType, RegistrationAmount,eventDate,AvailableSeats) values (8, 'Retreat', 25, '2017-06-22',50);
insert into glassdoor.activities (eventID, eventType, RegistrationAmount,eventDate,AvailableSeats) values (9, 'Workshop', 30,'2017-11-08',100);
insert into glassdoor.activities (eventID, eventType, RegistrationAmount,eventDate,AvailableSeats) values (10, 'Conference', 15, '2017-07-05',35);

insert into glassdoor.EmployerFinances (EmpFinancesID, EmployerID, vlogPay, BlogPay, SocialMediaPay, CulturalBrandingPay) values (1, 1, 10, 0, 0, 0);
insert into glassdoor.EmployerFinances (EmpFinancesID, EmployerID, vlogPay, BlogPay, SocialMediaPay, CulturalBrandingPay) values (2, 2, 0, 25, 0, 0);
insert into glassdoor.EmployerFinances (EmpFinancesID, EmployerID, vlogPay, BlogPay, SocialMediaPay, CulturalBrandingPay) values (3, 3, 0, 1, 30, 0);
insert into glassdoor.EmployerFinances (EmpFinancesID, EmployerID, vlogPay, BlogPay, SocialMediaPay, CulturalBrandingPay) values (4, 4, 0, 0,0, 44);
insert into glassdoor.EmployerFinances (EmpFinancesID, EmployerID, vlogPay, BlogPay, SocialMediaPay, CulturalBrandingPay) values (5, 5, 0, 12, 0, 0);

insert into glassdoor.UserCandidate  (UserID, personid, EducationLevel, WorkAuthorizationStatus) values (1, 1, 'Graduate', 'Eligible');
insert into glassdoor.UserCandidate  (UserID, personid, EducationLevel, WorkAuthorizationStatus) values (2, 2, 'PostGraduate', 'Eligible');
insert into glassdoor.UserCandidate  (UserID, personid, EducationLevel, WorkAuthorizationStatus) values (3, 3, 'Undergraduate', 'Eligible');
insert into glassdoor.UserCandidate  (UserID, personid, EducationLevel, WorkAuthorizationStatus) values (4, 4, 'High School', 'Not Eligible');
insert into glassdoor.UserCandidate  (UserID, personid, EducationLevel, WorkAuthorizationStatus) values (5, 5, 'Graduate', 'Eligible');