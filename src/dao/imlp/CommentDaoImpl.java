package dao.imlp;

import bean.Comment;
import dao.CommentDao;
import utils.BaseDao;

import java.util.List;

public class CommentDaoImpl extends BaseDao<Comment> implements CommentDao {
    @Override
    public void saveComment(Comment comment) {
        super.update(
                "insert into t_comment(user_id, flower_id, comment_content, comment_date) value (?,?,?,?);",
                comment.getUserId(),
                comment.getFlowerId(),
                comment.getCommentContent(),
                comment.getCommentDate()
        );
    }

    @Override
    public List<Comment> getCommentByFlowerId(int flowerId) {
        return super.getBeanList(
                "select * from t_comment where flower_id = ? order by comment_date desc;",
                flowerId
        );
    }
}
