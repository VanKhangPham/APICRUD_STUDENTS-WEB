DROP DATABASE schoolmanager1;
GO

CREATE DATABASE schoolmanager1;
GO

USE schoolmanager1;
GO

SET ANSI_NULLS ON;
GO

SET QUOTED_IDENTIFIER ON;
GO

-- Tạo bảng students với UUID
CREATE TABLE dbo.students
(
    MaSV UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
    HoTen NVARCHAR(100) NOT NULL,
    NgaySinh DATE NULL,
    GioiTinh NVARCHAR(10)
        CHECK (GioiTinh IN (N'Nam', N'Nữ')),
    DiaChi NVARCHAR(200) NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    DienThoai VARCHAR(15) UNIQUE NULL,
    MaLop VARCHAR(20) NULL,
    NgayNhapHoc DATE DEFAULT GETDATE()
);
GO

INSERT INTO dbo.students (HoTen, NgaySinh, GioiTinh, DiaChi, Email, DienThoai, MaLop)
VALUES
(N'Nguyen Van An', '2002-01-15', N'Nam', N'Ha Noi', 'an.nguyen@gmail.com', '0901111111', 'CNTT01'),
(N'Tran Thi Mai', '2002-03-20', N'Nữ', N'Hai Phong', 'mai.tran@gmail.com', '0902222222', 'CNTT01'),
(N'Le Van Binh', '2001-11-05', N'Nam', N'Nam Dinh', 'binh.le@gmail.com', '0903333333', 'CNTT02'),
(N'Pham Thi Lan', '2002-07-18', N'Nữ', N'Ha Nam', 'lan.pham@gmail.com', '0904444444', 'CNTT02'),
(N'Hoang Van Duc', '2001-09-30', N'Nam', N'Ha Noi', 'duc.hoang@gmail.com', '0905555555', 'CNTT03'),
(N'Vu Thi Huong', '2002-12-12', N'Nữ', N'Bac Ninh', 'huong.vu@gmail.com', '0906666666', 'CNTT03'),
(N'Do Van Khanh', '2001-06-25', N'Nam', N'Thai Binh', 'khanh.do@gmail.com', '0907777777', 'CNTT01');
GO