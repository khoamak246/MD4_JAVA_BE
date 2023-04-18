-- =============================== Create DB ===============================
-- create database TicketFilm;
-- use TicketFilm;

-- =============================== Create Talbe ===============================
-- create table tblPhim(
-- PhimID int primary key auto_increment,
-- Ten_Phim varchar(30),
-- Loai_Phim varchar(25),
-- Thoi_Gian int
-- );

-- create table tblPhong(
-- PhongID int primary key auto_increment,
-- Ten_Phong varchar(20),
-- Trang_Thai tinyInt
-- );

-- create table tblGhe(
-- GheID int primary key auto_increment,
-- PhongID int,
-- So_Ghe varchar(10)
-- );

-- alter table tblGhe add constraint FK_tblGhe_PhongID foreign key (PhongID) references tblPhong(PhongID);

-- create table tblVe(
-- PhimID int,
-- GheID int,
-- Ngay_Chieu datetime,
-- Trang_Thai varchar(20)
-- );

-- alter table tblVe add constraint FK_tblVe_PhimID foreign key (PhimID) references tblPhim(PhimID), 
-- add constraint FK_tblVe_GheID foreign key (GheID) references tblGhe(GheID);

-- =============================== Insert Value ===============================
-- insert into tblPhim(Ten_Phim, Loai_Phim, Thoi_Gian) values
-- ("Em be Ha Noi", "Tam ly", 90),
-- ("Nhiem vu bat kha thi", "Hanh dong", 100),
-- ("Di nhan", "Vien Tuong", 90),
-- ("Cuon theo chieu gio", "Tinh cam", 120);

-- insert into tblPhong(Ten_Phong, Trang_Thai) values
-- ("Phong chieu 1", 1),
-- ("Phong chieu 2", 1),
-- ("Phong chieu 3", 0);

-- insert into tblGhe(PhongID, So_Ghe) values 
-- (1, "A3"),
-- (1, "B5"),
-- (2, "A7"),
-- (2, "D1"),
-- (3, "T2");

-- insert into tblVe values 
-- (1, 1, "2008-10-20", "Da ban"),
-- (1, 3, "2008-11-20", "Da ban"),
-- (1, 4, "2008-12-23", "Da ban"),
-- (2, 1, "2009-02-14", "Da ban"),
-- (3, 1, "2009-02-14", "Da ban"),
-- (2, 5, "2009-08-03", "Chua ban"),
-- (2, 3, "2009-08-03", "Chua ban");

-- =============================== Requirement 2 ===============================
-- select * from tblPhim order by Thoi_Gian asc;

-- =============================== Requirement 3 ===============================
-- select Ten_Phim from tblPhim where Thoi_Gian = (select max(Thoi_Gian) from tblPhim);

-- =============================== Requirement 4 ===============================
-- select Ten_Phim from tblPhim where Thoi_Gian = (select min(Thoi_Gian) from tblPhim);

-- =============================== Requirement 5 ===============================
-- select So_Ghe from tblGhe where So_Ghe like 'A%';

-- =============================== Requirement 6 ===============================
-- alter table tblPhong modify column Trang_Thai varchar(25);

-- =============================== Requirement 7 ===============================
-- update tblPhong set Trang_Thai = case
-- when Trang_Thai = 0 then "Dang sua"
-- when Trang_Thai = 1 then "Dang sua chua"
-- when Trang_Thai = null then "Unknow"
-- end;
-- select * from tblPhong;

-- =============================== Requirement 8 ===============================
-- select * from tblPhim where length(Ten_Phim) > 15 and length(Ten_Phim) < 25;

-- =============================== Requirement 9 ===============================
-- select concat(Ten_Phong, ' ', Trang_Thai ) as Trang_Thai_Phong_Chieu from tblPhong;

-- =============================== Requirement 10 ===============================
-- create table tblRank as select rank() over (order by Ten_Phim asc) as STT, Ten_Phim, Thoi_Gian from tblPhim;

-- =============================== Requirement 11 ===============================
-- alter table tblPhim add column Mo_Ta varchar(8000);
-- update tblPhim set Mo_ta = concat("Day la bo phim the loai:", ' ', Loai_Phim);
-- update tblPhim set Mo_Ta = replace(Mo_Ta, "bo phim", "film");
-- select * from tblPhim;

-- =============================== Requirement 12 ===============================
-- alter table tblGhe drop foreign key FK_tblGhe_PhongID;
-- alter table tblVe drop foreign key FK_tblVe_GheID;
-- alter table tblVe drop foreign key FK_tblVe_PhimID;

-- =============================== Requirement 13 ===============================
-- delete from tblGhe;

-- =============================== Requirement 14 ===============================
-- select addtime(now(), 5000) as currentTime;







