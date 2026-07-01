package com.example.jsp.step1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/secure")
public class SecureServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // /secure라는 가상경로를 요청 받았을 때 주소창 및 요청 객체의 변경 없이
        // 연동되는 jsp로 이동시킨다
        // webapp 안에 있는 경로를 인식함
        req.getRequestDispatcher("01_secure.jsp") // webapp 경로 기준 jsp로 이동
                .forward(req, resp); // 전달.
    }
}
