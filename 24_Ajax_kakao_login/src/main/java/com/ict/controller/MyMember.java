package com.ict.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MyMember
 */
@WebServlet("/MyMember")
public class MyMember extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html charset=utf-8 ");
		PrintWriter out = response.getWriter();
		
		String access_token = (String) request.getSession().getAttribute("access_token");
		// 사용자 정보 요청에 필요한 URL
		String header = "Bearer " + access_token;
		String apiurl = "https://kapi.kakao.com/v2/user/me";

		Map<String, String> requestHeaders = new HashMap<String, String>();
		requestHeaders.put("Authorization", header);

		StringBuffer responseBody = new StringBuffer();
		URL url2 = new URL(apiurl);
		HttpURLConnection conn2 = (HttpURLConnection) url2.openConnection();
		conn2.setRequestMethod("POST");
		conn2.setDoOutput(true);

		for (Map.Entry<String, String> k : requestHeaders.entrySet()) {
			conn2.setRequestProperty(k.getKey(), k.getValue());
		}
		
		int responseCode = conn2.getResponseCode();
		System.out.println("responseCode : " + responseCode);

		if (responseCode == HttpURLConnection.HTTP_OK) {
			InputStreamReader reader = new InputStreamReader(conn2.getInputStream());
			BufferedReader br2 = new BufferedReader(reader);
			StringBuffer sb3 = new StringBuffer();
			String line2 = "";
			while ((line2 = br2.readLine()) != null) {
				responseBody.append(line2);
			}
		} else {
			responseBody.append("실패");
		}
		out.print(responseBody.toString());
	}

}
