CREATE DATABASE host7;
GO
Drop database host7
USE host7;
GO

CREATE TABLE students (
    id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(100) NULL,
    email NVARCHAR(100) NULL,
    NgaySinh DATE,
    GioiTinh NVARCHAR(10),
    DiaChi NVARCHAR(200),
    DienThoai VARCHAR(15),
    MaLop VARCHAR(20),
    NgayNhapHoc DATE DEFAULT GETDATE()
);

INSERT INTO students(name, NgaySinh, GioiTinh, DiaChi, email, DienThoai, MaLop)
VALUES
(N'Nguyễn Văn An', '2002-01-15', N'Nam', N'Hà Nội', 'an.nguyen@gmail.com', '0901111111', 'CNTT01'),
(N'Trần Thị Mai', '2002-03-20', N'Nữ', N'Hải Phòng', 'mai.tran@gmail.com', '0902222222', 'CNTT01'),
(N'Lê Văn Bình', '2001-11-05', N'Nam', N'Nam Định', 'binh.le@gmail.com', '0903333333', 'CNTT02'),
(N'Phạm Thị Lan', '2002-07-18', N'Nữ', N'Hà Nam', 'lan.pham@gmail.com', '0904444444', 'CNTT02'),
(N'Hoàng Văn Đức', '2001-09-30', N'Nam', N'Hà Nội', 'duc.hoang@gmail.com', '0905555555', 'CNTT03'),
(N'Vũ Thị Hương', '2002-12-12', N'Nữ', N'Bắc Ninh', 'huong.vu@gmail.com', '0906666666', 'CNTT03'),
(N'Đỗ Văn Khánh', '2001-06-25', N'Nam', N'Thái Bình', 'khanh.do@gmail.com', '0907777777', 'CNTT01'),
(N'Bùi Thị Ngọc', '2002-08-08', N'Nữ', N'Hưng Yên', 'ngoc.bui@gmail.com', '0908888888', 'CNTT02'),
(N'Nguyễn Minh Quân', '2001-04-14', N'Nam', N'Hà Nội', 'quan.nguyen@gmail.com', '0909999999', 'CNTT03'),
(N'Trịnh Thị Thu', '2002-10-22', N'Nữ', N'Ninh Bình', 'thu.trinh@gmail.com', '0910000000', 'CNTT01');
SELECT * FROM students;

DELETE FROM students WHERE name IS NULL OR email IS NULL;



SELECT * FROM students ORDER BY id ASC;
DELETE FROM students;
DBCC CHECKIDENT ('students', RESEED, 0);

