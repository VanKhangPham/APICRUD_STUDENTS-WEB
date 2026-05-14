CREATE DATABASE schoolmanager1;
GO

USE schoolmanager1;
GO

SET ANSI_NULLS ON;
GO

SET QUOTED_IDENTIFIER ON;
GO

-- Tạo bảng SinhVien
CREATE TABLE dbo.students
(
    MaSV INT IDENTITY(1,1) NOT NULL PRIMARY KEY,

    HoTen NVARCHAR(100) NOT NULL,

    NgaySinh DATE NULL,

    GioiTinh NVARCHAR(10)
        CHECK (GioiTinh IN (N'Nam', N'Nu')),

    DiaChi NVARCHAR(200) NULL,

    Email VARCHAR(100) NOT NULL UNIQUE,

    DienThoai VARCHAR(15) UNIQUE NULL,

    MaLop VARCHAR(20) NULL,

    NgayNhapHoc DATE DEFAULT GETDATE()
);
GO

-- Cho phép insert giá trị vào cột IDENTITY
SET IDENTITY_INSERT dbo.students ON;
GO

-- Thêm dữ liệu
INSERT INTO dbo.students
(MaSV, HoTen, NgaySinh, GioiTinh, DiaChi, Email, DienThoai, MaLop, NgayNhapHoc)
VALUES
(1, N'Nguyen Van An', '2002-01-15', N'Nam', N'Ha Noi', 'an.nguyen@gmail.com', '0901111111', 'CNTT01', '2026-01-14'),
(2, N'Tran Thi Mai', '2002-03-20', N'Nu', N'Hai Phong', 'mai.tran@gmail.com', '0902222222', 'CNTT01', '2026-01-14'),
(3, N'Le Van Binh', '2001-11-05', N'Nam', N'Nam Dinh', 'binh.le@gmail.com', '0903333333', 'CNTT02', '2026-01-14'),
(4, N'Pham Thi Lan', '2002-07-18', N'Nu', N'Ha Nam', 'lan.pham@gmail.com', '0904444444', 'CNTT02', '2026-01-14'),
(5, N'Hoang Van Duc', '2001-09-30', N'Nam', N'Ha Noi', 'duc.hoang@gmail.com', '0905555555', 'CNTT03', '2026-01-14'),
(6, N'Vu Thi Huong', '2002-12-12', N'Nu', N'Bac Ninh', 'huong.vu@gmail.com', '0906666666', 'CNTT03', '2026-01-14'),
(7, N'Do Van Khanh', '2001-06-25', N'Nam', N'Thai Binh', 'khanh.do@gmail.com', '0907777777', 'CNTT01', '2026-01-14');
GO

-- Tắt IDENTITY_INSERT
SET IDENTITY_INSERT dbo.students OFF;
GO