package bean;

import java.sql.Timestamp;

public class CommentInfo {
    private String userName;
    private String commentContent;
    private String commentDate;


    public CommentInfo() {
    }

    public CommentInfo(String userName, String commentContent, String commentDate) {
        this.userName = userName;
        this.commentContent = commentContent;
        this.commentDate = commentDate;
    }


    public String getUserName() {
        return userName;
    }


    public void setUserName(String userName) {
        this.userName = userName;
    }


    public String getCommentContent() {
        return commentContent;
    }


    public void setCommentContent(String commentContent) {
        this.commentContent = commentContent;
    }


    public String getCommentDate() {
        return commentDate;
    }


    public void setCommentDate(String commentDate) {
        this.commentDate = commentDate;
    }

    public String toString() {
        return "CommentInfo{userName = " + userName + ", commentContent = " + commentContent + ", commentDate = " + commentDate + "}";
    }
}
