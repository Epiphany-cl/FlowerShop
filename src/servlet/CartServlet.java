package servlet;

import bean.CartItem;
import bean.User;
import com.google.gson.Gson;
import dao.CartItemDao;
import service.CartItemService;
import service.FlowerService;
import service.impl.CartItemServiceImpl;
import service.impl.FlowerServiceImpl;
import utils.BaseServlet;
import utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CartServlet", urlPatterns = "/CartServlet")
public class CartServlet extends BaseServlet {
    private final FlowerService flowerService = new FlowerServiceImpl();
    private final CartItemService cartItemService = new CartItemServiceImpl();

    protected void findCartInfo(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");

        if (user != null) {
            Integer id = user.getId();
            List<CartItem> cartItemList = cartItemService.getAllCartItemsByUserId(id);

            Gson gson = new Gson();
            String json = gson.toJson(cartItemList);
            resp.setContentType("application/json;charset=utf-8");
            resp.getWriter().print(json);
        }
    }

    protected void removeCartItem(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int cartId = WebUtils.parseInt(req.getParameter("cartId"), 0);
        System.out.println(cartId);
        cartItemService.deleteCartItem(cartId);
    }

    protected void updateCartItemNum(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int cartId = WebUtils.parseInt(req.getParameter("cartId"), 0);
        int delta = WebUtils.parseInt(req.getParameter("delta"), 0);


        cartItemService.updateCartItemNum(cartId, delta);
    }
}
