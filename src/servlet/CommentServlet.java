package servlet;

import bean.Comment;
import bean.CommentInfo;
import bean.User;
import com.google.gson.Gson;
import service.CommentService;
import service.impl.CommentServiceImpl;
import utils.BaseServlet;
import utils.WebUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(value = "/CommentServlet")
public class CommentServlet extends BaseServlet {
    private final CommentService commentService = new CommentServiceImpl();

    protected void submitComment(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int flowerId = WebUtils.parseInt(req.getParameter("flowerId"), 0);
        String commentText = req.getParameter("commentText");
        User user = (User) req.getSession().getAttribute("user");

        commentService.submitComment(user.getId(), flowerId, commentText);
    }

    protected void findCommentByFlowerId(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int flowerId = WebUtils.parseInt(req.getParameter("flowerId"), 0);

        List<CommentInfo> commentList = commentService.findCommentByFlowerId(flowerId);

        resp.setContentType("application/json;charset=utf-8");
        new Gson().toJson(commentList, resp.getWriter());
    }
}
