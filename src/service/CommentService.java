package service;

import bean.Comment;
import bean.CommentInfo;

import java.util.List;

public interface CommentService {
    public void submitComment(int userId,int flowerId,String commentText);
    public List<CommentInfo> findCommentByFlowerId(int flowerId);
}
