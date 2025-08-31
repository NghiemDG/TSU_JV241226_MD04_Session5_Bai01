<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: dogia
  Date: 9/1/2025
  Time: 6:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh Sách Sinh Viên</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
<div class="container">
    <h1 class="title">Danh Sách Sinh Viên</h1>

    <div class="search-section">
        <input type="text" class="search-input" placeholder="Tìm kiếm...">
        <select class="filter-select">
            <option value="">Giới tính</option>
            <option value="nam">Nam</option>
            <option value="nu">Nữ</option>
        </select>
        <button class="search-btn">Lọc</button>
    </div>

    <div class="table-container">
        <table class="student-table">
            <thead>
            <tr>
                <th>ID</th>
                <th>Tên</th>
                <th>Email</th>
                <th>Ngày Sinh</th>
                <th>Điểm Trung Bình</th>
                <th>Hành Động</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${students}" varStatus="status" var="stu">
                <tr>
                    <td>${stu.id}</td>
                    <td>${stu.studentName}</td>
                    <td>${stu.email}</td>
                    <td>${stu.birthday}</td>
                    <td>${stu.avgMark}</td>
                    <td>
                        <a href="#" class="action-link edit">Sửa</a>
                        <a href="#" class="action-link delete">Xóa</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

    <div class="add-section">
        <button class="add-btn">Thêm Sinh Viên</button>
    </div>
</div>

<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        color: #333;
        line-height: 1.6;
    }

    .container {
        max-width: 1200px;
        margin: 0 auto;
        padding: 20px;
        background-color: white;
        min-height: 100vh;
    }

    .title {
        text-align: center;
        color: #2c3e50;
        margin-bottom: 30px;
        font-size: 2.2em;
        font-weight: 600;
    }

    .search-section {
        display: flex;
        gap: 15px;
        margin-bottom: 25px;
        padding: 20px;
        background-color: #f8f9fa;
        border-radius: 8px;
        align-items: center;
        flex-wrap: wrap;
    }

    .search-input {
        flex: 1;
        min-width: 200px;
        padding: 12px 16px;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 14px;
        transition: border-color 0.3s ease;
    }

    .search-input:focus {
        outline: none;
        border-color: #4CAF50;
    }

    .filter-select {
        padding: 12px 16px;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 14px;
        background-color: white;
        min-width: 120px;
    }

    .search-btn {
        background-color: #4CAF50;
        color: white;
        border: none;
        padding: 12px 24px;
        border-radius: 5px;
        cursor: pointer;
        font-size: 14px;
        font-weight: 500;
        transition: background-color 0.3s ease;
    }

    .search-btn:hover {
        background-color: #45a049;
    }

    .table-container {
        overflow-x: auto;
        margin-bottom: 25px;
        border-radius: 8px;
        box-shadow: 0 2px 10px rgba(0,0,0,0.1);
    }

    .student-table {
        width: 100%;
        border-collapse: collapse;
        background-color: white;
    }

    .student-table th {
        background-color: #34495e;
        color: white;
        padding: 15px 12px;
        text-align: left;
        font-weight: 600;
        font-size: 14px;
        border-bottom: 2px solid #2c3e50;
    }

    .student-table td {
        padding: 12px;
        border-bottom: 1px solid #eee;
        font-size: 14px;
    }

    .student-table tr:nth-child(even) {
        background-color: #f8f9fa;
    }

    .student-table tr:hover {
        background-color: #e8f4f8;
        transition: background-color 0.2s ease;
    }

    .action-link {
        text-decoration: none;
        padding: 6px 12px;
        border-radius: 4px;
        font-size: 12px;
        font-weight: 500;
        margin-right: 5px;
        display: inline-block;
        transition: all 0.3s ease;
    }

    .action-link.edit {
        background-color: #3498db;
        color: white;
    }

    .action-link.edit:hover {
        background-color: #2980b9;
    }

    .action-link.delete {
        background-color: #e74c3c;
        color: white;
    }

    .action-link.delete:hover {
        background-color: #c0392b;
    }

    .add-section {
        text-align: center;
        margin-top: 30px;
    }

    .add-btn {
        background-color: #27ae60;
        color: white;
        border: none;
        padding: 15px 30px;
        border-radius: 6px;
        cursor: pointer;
        font-size: 16px;
        font-weight: 600;
        transition: background-color 0.3s ease;
    }

    .add-btn:hover {
        background-color: #229954;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .container {
            padding: 15px;
        }

        .title {
            font-size: 1.8em;
            margin-bottom: 20px;
        }

        .search-section {
            flex-direction: column;
            align-items: stretch;
        }

        .search-input,
        .filter-select,
        .search-btn {
            width: 100%;
            margin-bottom: 10px;
        }

        .student-table {
            font-size: 12px;
        }

        .student-table th,
        .student-table td {
            padding: 8px 6px;
        }

        .action-link {
            padding: 4px 8px;
            font-size: 11px;
            margin: 2px;
            display: block;
            text-align: center;
        }
    }

    @media (max-width: 480px) {
        .student-table th:nth-child(3),
        .student-table td:nth-child(3) {
            display: none;
        }

        .student-table th:nth-child(4),
        .student-table td:nth-child(4) {
            display: none;
        }
    }
</style>
</body>
</html>