package service.impl;

import bean.Comment;
import bean.CommentInfo;
import dao.CommentDao;
import dao.UserDao;
import dao.imlp.CommentDaoImpl;
import dao.imlp.UserDaoImpl;
import service.CommentService;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CommentServiceImpl implements CommentService {
    private final CommentDao commentDao = new CommentDaoImpl();
    private final UserDao userDao = new UserDaoImpl();
    @Override
    public void submitComment(int userId, int flowerId, String commentText) {
        Comment comment = new Comment();

        comment.setUserId(userId);
        comment.setFlowerId(flowerId);
        comment.setCommentContent(commentText);

        //获得当前时间
        comment.setCommentDate(new Timestamp(System.currentTimeMillis()));

        commentDao.saveComment(comment);
    }

    @Override
    public List<CommentInfo> findCommentByFlowerId(int flowerId) {
        List<Comment> commentList = commentDao.getCommentByFlowerId(flowerId);

        List<CommentInfo> commentInfoList = new ArrayList<>();
        for (Comment comment : commentList) {
            Integer userId = comment.getUserId();
            String username = userDao.queryUserByUserId(userId).getUsername();

            String commentContent = comment.getCommentContent();

            Timestamp commentDate = comment.getCommentDate();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy年M月d日HH:mm");
            String commentDateStr = sdf.format(commentDate);

            CommentInfo commentInfo = new CommentInfo();
            commentInfo.setUserName(username);
            commentInfo.setCommentContent(commentContent);
            commentInfo.setCommentDate(commentDateStr);

            commentInfoList.add(commentInfo);
        }

        return commentInfoList;
    }
}
