package servlet;

import bean.Flower;
import bean.FlowerDetail;
import bean.User;
import com.google.gson.Gson;
import service.FlowerService;
import service.impl.FlowerServiceImpl;
import utils.BaseServlet;
import utils.Page;
import utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(value = "/FlowerServlet")
public class FlowerServlet extends BaseServlet {
    private final FlowerService flowerService = new FlowerServiceImpl();

    protected void findFlowers(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int pageNo = WebUtils.parseInt(req.getParameter("pageNo"), 1);
        int pageSize = WebUtils.parseInt(req.getParameter("pageSize"), Page.PAGE_SIZE);
        Page<Flower> flowersByPage = flowerService.getFlowersByPage(pageNo, pageSize);

        resp.setContentType("application/json;charset=utf-8");
        new Gson().toJson(flowersByPage, resp.getWriter());
    }

    protected void findFlowerDetailById(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int flowerId = WebUtils.parseInt(req.getParameter("flowerId"), 0);
        FlowerDetail flowerDetail = flowerService.getFlowerDetailById(flowerId);


        resp.setContentType("application/json;charset=utf-8");
        new Gson().toJson(flowerDetail, resp.getWriter());
    }

    protected void findFlowersCategoriesById(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int flowerId = WebUtils.parseInt(req.getParameter("flowerId"), 0);
        System.out.println(flowerId);

        resp.setContentType("application/json;charset=utf-8");
        resp.getWriter().write(new Gson().toJson(flowerService.getFlowersCategoriesById(flowerId)));

    }

    protected void addFlowerToCart(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int flowerId = WebUtils.parseInt(req.getParameter("flowerId"), 0);
        User user = (User) req.getSession().getAttribute("user");
        int num = WebUtils.parseInt(req.getParameter("num"), 1);
        Integer userId = user.getId();

        boolean b = flowerService.addCartItem(flowerId, userId, num);

    }
}
