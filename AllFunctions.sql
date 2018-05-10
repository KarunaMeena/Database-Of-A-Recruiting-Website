--function for multiplying two values
delimiter //
create function AdvFees(a int, b int)
returns int
begin
declare fees int; 
set fees=a*b;
return fees;
end;
//

--function for multiplying two values
delimiter //
create function temp(c int, d int)
returns int
begin
declare fees2 int; 
set fees2=c*d;
return fees2;
end;
//

--calling the user defined functions to calculate the advertisor fees for each advertisor
select advertisor.advertisorid,advertisor.advertisorsname,Advfees(Advertisor.PayPerClickamount,AdvertisorFinances.NoOfClicks)
+ temp(Advertisor.PayPerViewamount,AdvertisorFinances.NoOfViews)  AS TOTAL
from advertisor inner join advertisorfinances on advertisor.AdvertisorID=advertisorfinances.AdvertisorID;

--view for entries for specific eventtype 
create view EventTypeAndPersonName
as
select r.registrationid,a.eventtype,p.personname
from registration r 
join activities a
on r.eventid=a.eventid
join person p
on r.personid=p.personid;

--procedure for getting the revenue of all eventtypes
delimiter //
 create procedure Revenue(In E varchar(50))
 Begin
 select sum(registrationamount) from glassdoor.activities 
 where EventType = E;
 end //
 call Revenue ('Workshop');
 
  --trigger for checking availability for the registration
 delimiter //
 create trigger AvailabilityCheck
 after
 insert
 on Registration
 for each row
 begin
 update activities
 set availableseats=availableseats-1; 
 end
 //

 
--procedure for specifying the top 10 jobs by their job title
delimiter //
create procedure topJobsbySalary(JT varchar(100))
begin
select salary,jobtitle from salaryreport
where JobTitle=Jt
limit 2;
end //
Call topjobsbysalary('Accountant')

--procedure for specifying the top 10 jobs by their location
delimiter //
create procedure topjobsbyLocation(c varchar(45))
begin
select p.city as City,sr.salary as Salary,sr.jobtitle as JobTitle
from person p inner join salaryreport sr
on p.personid=sr.personid
where p.city=c;
end
//

call topjobsbyLocation('Boulder');

--trigger to add the no of applications in the Jobs table
delimiter //
 Create trigger AddNoOfApplications
 after
 insert
 on JobApplication
 for each row
 begin
 update JobApplication
 set NoOfApplications=NoOfApplications+1;
 end
 //

--view to show all Eligible Graduate Candidates
delimiter //
create view EligibleCandidates
as
select p.PersonName 
from person p 
join usercandidate u
on p.personid=u.personid
where u.WorkAuthorizationStatus='Eligible' and (u.EducationLevel='Graduate' or u.EducationLevel='PostGraduate');

 //
 
call EligibleCandidates;


----Table to find out what each employer owes in Branding
select e.employerid,p.personname,ef.vlogpay,ef.blogpay,ef.SocialMediaPay,ef.CulturalBrandingPay, 
(ef.vlogpay+ef.blogpay+ef.SocialMediaPay+ef.CulturalBrandingPay) as Total
from person p
join userEmployer e
on p.personid=e.personid
join EmployerBranding eb
on e.employerid=eb.employerid
join employerfinances ef
on e.employerid=ef.employerid;

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE



--Table to find out what each employer owes in Branding
select e.employerid,p.personname,ef.vlogpay,ef.blogpay,ef.SocialMediaPay,ef.CulturalBrandingPay, 
ef.vlogpay+ef.blogpay+ef.SocialMediaPay+ef.CulturalBrandingPay as T
from person p
join userEmployer e
on p.personid=e.personid
join EmployerBranding eb
on e.employerid=eb.employerid
join employerfinances ef
on e.employerid=ef.employerid;


SET TRANSACTION ISOLATION LEVEL SERIALIZABLE










 
 
 
 
 
 
