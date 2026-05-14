package com.example.schoolmanager1.model;

import java.time.LocalDate;
import java.util.UUID;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "students")
public class Student {
    @Id
    @Column(name = "MaSV")
    private UUID id;
    
    @Column(name = "HoTen")
    private String name;
    
    @Column(name = "NgaySinh")
    private LocalDate ngaySinh;
    
    @Column(name = "GioiTinh")
    private String gioiTinh;
    
    @Column(name = "DiaChi")
    private String diaChi;
    
    @Column(name = "Email")
    private String email;
    
    @Column(name = "DienThoai")
    private String dienThoai;
    
    @Column(name = "MaLop")
    private String maLop;
    
    @Column(name = "NgayNhapHoc")
    private LocalDate ngayNhapHoc;

    public Student() {}
    public Student(UUID id, String name, LocalDate ngaySinh, String gioiTinh, String diaChi, String email, String dienThoai, String maLop, LocalDate ngayNhapHoc) {
        this.id = id;
        this.name = name;
        this.ngaySinh = ngaySinh;
        this.gioiTinh = gioiTinh;
        this.diaChi = diaChi;
        this.email = email;
        this.dienThoai = dienThoai;
        this.maLop = maLop;
        this.ngayNhapHoc = ngayNhapHoc;
    }
    public UUID getId() {
        return id;
    }
    public String getName() {
        return name;
    }
    public LocalDate getNgaySinh() {
        return ngaySinh;
    }
    public String getGioiTinh() {
        return gioiTinh;
    }
    public String getDiaChi() {
        return diaChi;
    }
    public String getEmail() {
        return email;
    }
    public String getDienThoai() {
        return dienThoai;
    }
    public String getMaLop() {
        return maLop;
    }
    public LocalDate getNgayNhapHoc() {
        return ngayNhapHoc;
    }
    public void setId(UUID id) {
        this.id = id;
    }
    public void setName(String name) {
        this.name = name;
    }
    public void setNgaySinh(LocalDate ngaySinh) {
        this.ngaySinh = ngaySinh;
    }
    public void setGioiTinh(String gioiTinh) {
        this.gioiTinh = gioiTinh;
    }
    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public void setDienThoai(String dienThoai) {
        this.dienThoai = dienThoai;
    }
    public void setMaLop(String maLop) {
        this.maLop = maLop;
    }
    public void setNgayNhapHoc(LocalDate ngayNhapHoc) {
        this.ngayNhapHoc = ngayNhapHoc;
    }
}
