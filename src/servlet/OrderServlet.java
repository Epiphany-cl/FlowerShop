package servlet;

import bean.Order;
import bean.OrderDetailInfo;
import bean.User;
import com.google.gson.Gson;
import service.OrderService;
import service.impl.OrderServiceImpl;
import utils.BaseServlet;
import utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "OrderServlet", urlPatterns = "/OrderServlet")
public class OrderServlet extends BaseServlet {
    private final OrderService orderService = new OrderServiceImpl();

    protected void submitOrder(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String orderUsername = req.getParameter("name");
        String orderPhone = req.getParameter("phone");
        String orderCountry = req.getParameter("country");
        String orderAddress = req.getParameter("address");
        String orderPaymentMethod = req.getParameter("paymentMethod");
        double priceTotal = WebUtils.parseDouble(req.getParameter("priceTotal"), 0);

        User user = (User) req.getSession().getAttribute("user");


        Order order = new Order(
                null,
                orderUsername,
                orderPhone,
                orderCountry,
                orderAddress,
                orderPaymentMethod,
                priceTotal,
                user.getId(),
                "已下单"
        );

        String orderId = orderService.submitOrder(order);

        Gson gson = new Gson();
        String json = gson.toJson(orderId);
        resp.setContentType("application/json;charset=utf-8");
        resp.getWriter().write(json);
    }

    protected void findOrderById(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String orderId = req.getParameter("orderId");
        Order orderById = orderService.findOrderById(orderId);

        Gson gson = new Gson();
        String json = gson.toJson(orderById);
        resp.setContentType("application/json;charset=utf-8");
        resp.getWriter().write(json);

        //write(json)和print(json)的区别
        /*
         *  如果你希望以原始形式输出JSON，可以使用print。
         *  如果你希望格式化JSON，使其更易于阅读，可以使用write并在写入之前对JSON进行格式化处理。
         */
    }

    protected void findAllOrder(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User user = (User)req.getSession().getAttribute("user");
        Integer userId = user.getId();
        List<Order> orderList = orderService.findAllOrder(userId);

        Gson gson = new Gson();
        String json = gson.toJson(orderList);
        resp.setContentType("application/json;charset=utf-8");
        resp.getWriter().write(json);

    }

    protected void findOrderDetail(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String orderId = req.getParameter("orderId");

        OrderDetailInfo orderDetail = orderService.findOrderDetail(orderId);

        Gson gson = new Gson();
        String json = gson.toJson(orderDetail);
        resp.setContentType("application/json;charset=utf-8");
        resp.getWriter().print(json);
    }
}

