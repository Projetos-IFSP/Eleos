package com.example.javawebapp;

import java.io.IOException;

import com.example.javawebapp.DAO.CampaignDAO;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "Campaigns", value = "/campaigns")
public class CampaignsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.setAttribute("campanhas", CampaignDAO.buscarTodasCampanhas());
        req.getRequestDispatcher("WEB-INF/campaigns.jsp").forward(req, res);
    }
}
