package bean;

import java.sql.Timestamp;

public class Comment {
    private Integer commentId;
    private Integer userId;
    private Integer flowerId;
    private String commentContent;
    private Timestamp commentDate;

    @Override
    public String toString() {
        return "Comment{" +
                "commentId=" + commentId +
                ", userId=" + userId +
                ", flowerId=" + flowerId +
                ", commentContent='" + commentContent + '\'' +
                ", commentDate=" + commentDate +
                '}';
    }

    public Integer getCommentId() {
        return commentId;
    }

    public void setCommentId(Integer commentId) {
        this.commentId = commentId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getFlowerId() {
        return flowerId;
    }

    public void setFlowerId(Integer flowerId) {
        this.flowerId = flowerId;
    }

    public String getCommentContent() {
        return commentContent;
    }

    public void setCommentContent(String commentContent) {
        this.commentContent = commentContent;
    }

    public Timestamp getCommentDate() {
        return commentDate;
    }

    public void setCommentDate(Timestamp commentDate) {
        this.commentDate = commentDate;
    }

    public Comment() {
    }

    public Comment(Integer commentId, Integer userId, Integer flowerId, String commentContent, Timestamp commentDate) {
        this.commentId = commentId;
        this.userId = userId;
        this.flowerId = flowerId;
        this.commentContent = commentContent;
        this.commentDate = commentDate;
    }
}
