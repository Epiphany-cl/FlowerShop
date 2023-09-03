package servlet;


import bean.User;
import com.google.gson.Gson;
import service.UserService;
import service.impl.UserServiceImpl;
import utils.BaseServlet;
import utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/UserServlet")
public class UserServlet extends BaseServlet {

    private final UserService userService = new UserServiceImpl();


    protected void logout(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        session.invalidate();
        resp.sendRedirect("index.jsp");
    }

    protected void loginUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json;charset=utf-8");
        PrintWriter out = resp.getWriter();

        User user = WebUtils.copyParamToBean(req.getParameterMap(), new User());
        User login = userService.login(user);
        if (login != null) {
            setUserCookie(resp, user);
            HttpSession session = req.getSession();
            session.setAttribute("user", login);
            out.print("true");
        } else {
            out.print("false");
        }
    }

    private void setUserCookie(HttpServletResponse resp, User user) {
        Cookie emil = new Cookie("email", user.getEmail());
        Cookie password = new Cookie("password", user.getPassword());
        emil.setMaxAge(3600);
        emil.setPath("/");
        password.setMaxAge(3600);
        password.setPath("/");

        resp.addCookie(emil);
        resp.addCookie(password);
    }

    protected void registerUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = WebUtils.copyParamToBean(req.getParameterMap(), new User());
        int row = userService.registerUser(user);
        if (row == 1) {
            setUserCookie(resp, user);

            resp.sendRedirect("registeredSuccessfully.jsp");
        }

    }

    protected void existsUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        boolean msg = userService.existsUser(email);//可true 不可是false

        String msgJson = new Gson().toJson(msg);
        resp.setContentType("application/json;charset=utf-8");
        resp.getWriter().print(msgJson);

    }
}
