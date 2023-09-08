package dao;

import bean.Comment;

import java.util.List;

public interface CommentDao {
    public void saveComment(Comment comment);

    public List<Comment> getCommentByFlowerId(int flowerId);
}
