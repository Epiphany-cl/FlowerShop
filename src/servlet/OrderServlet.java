package servlet;

import bean.Order;
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

        User user = (User)req.getSession().getAttribute("user");


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
}
