CREATE TABLE scheduledetail (
  ScheduleId int(11) NOT NULL,
  DateOut date NOT NULL,
  TimeSheetDate date NOT NULL,
  AbsenceCode varchar(25) DEFAULT NULL,
  PRIMARY KEY (ScheduleId, DateOut)
);
 
CREATE TABLE scheduletemplatedetail (
  TemplateId int(11) NOT NULL,
  DayOrder int(11) NOT NULL,
  AbsenceCode varchar(25) DEFAULT NULL,
  WorkShiftCd varchar(25) DEFAULT NULL,
  PRIMARY KEY (TemplateId, DayOrder)
);
 