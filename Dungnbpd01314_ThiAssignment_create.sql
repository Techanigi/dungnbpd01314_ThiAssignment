-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2016-03-10 00:52:01.683




-- tables
-- Table: TNhanvien
CREATE TABLE TNhanvien (
    MaNV nvarchar(4)  NOT NULL,
    TenNV nvarchar(30)  NULL,
    Ngaysinh datetime  NULL,
    Gioitinh nvarchar(4)  NULL,
    Email nvarchar(30)  NULL,
    MucLuong int  NULL,
    MaPhong nvarchar(3)  NOT NULL,
    CONSTRAINT TNhanvien_pk PRIMARY KEY  (MaNV)
)
;





-- Table: TPhongban
CREATE TABLE TPhongban (
    MaPhong nvarchar(3)  NOT NULL,
    TenPhong nvarchar(30)  NULL,
    CONSTRAINT TPhongban_pk PRIMARY KEY  (MaPhong)
)
;









-- foreign keys
-- Reference:  TNhanvien_TPhongban (table: TNhanvien)

ALTER TABLE TNhanvien ADD CONSTRAINT TNhanvien_TPhongban 
    FOREIGN KEY (MaPhong)
    REFERENCES TPhongban (MaPhong)
;





-- End of file.

