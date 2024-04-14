package Dao;

import java.util.List;

public abstract class DaoWozeric<E, K> {
	abstract public void Insert(E entity);

	abstract public void Update(E entity);

	abstract public void Delete(K Key);

	abstract public List<E> FindAll();

	abstract public E FindByID(K Key);
}
