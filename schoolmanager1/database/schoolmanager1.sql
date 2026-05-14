USE master;
GO
IF DB_ID('schoolmanager1') IS NOT NULL
BEGIN
    ALTER DATABASE schoolmanager1 SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE schoolmanager1;
END
GO

CREATE DATABASE schoolmanager1;
GO

USE schoolmanager1;
GO

SET ANSI_NULLS ON;
GO

SET QUOTED_IDENTIFIER ON;
GO

CREATE TABLE dbo.students
(
    MaSV UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),

    HoTen NVARCHAR(100) NOT NULL,

    NgaySinh DATE NULL,

    GioiTinh NVARCHAR(10)
        CHECK (GioiTinh IN (N'Nam', N'Nữ')),

    DiaChi NVARCHAR(200) NULL,

    Email NVARCHAR(100) NOT NULL UNIQUE,

    DienThoai VARCHAR(15) UNIQUE NULL,

    MaLop VARCHAR(20) NULL,

    NgayNhapHoc DATE DEFAULT CAST(GETDATE() AS DATE)
);
GO

INSERT INTO dbo.students
(HoTen, NgaySinh, GioiTinh, DiaChi, Email, DienThoai, MaLop)
VALUES
(N'Nguyễn Văn An', '2002-01-15', N'Nam', N'Hà Nội','an.nguyen@gmail.com', '0901111111', 'CNTT01'),
(N'Trần Thị Mai', '2002-03-20', N'Nữ', N'Hải Phòng','mai.tran@gmail.com', '0902222222', 'CNTT01'),
(N'Lê Văn Bình', '2001-11-05', N'Nam', N'Nam Định','binh.le@gmail.com', '0903333333', 'CNTT02'),
(N'Phạm Thị Lan', '2002-07-18', N'Nữ', N'Hà Nam','lan.pham@gmail.com', '0904444444', 'CNTT02'),
(N'Hoàng Văn Đức', '2001-09-30', N'Nam', N'Hà Nội','duc.hoang@gmail.com', '0905555555', 'CNTT03'),
(N'Vũ Thị Hương', '2002-12-12', N'Nữ', N'Bắc Ninh','huong.vu@gmail.com', '0906666666', 'CNTT03'),
(N'Đỗ Văn Khánh', '2001-06-25', N'Nam', N'Thái Bình','khanh.do@gmail.com', '0907777777', 'CNTT01');
GO
SELECT * FROM dbo.students;
