package utils;


import java.util.List;

public interface SuperDao<E> {
    public int save(E e);
    public int updateById(E e);
    public int deleteById(Integer id);
    public E findById(Integer id);
    public List<E> findAll();
    public Page<E> findPage(Page<E> page);
}
