package sample.springboot.repository;

import org.springframework.data.repository.CrudRepository;

import sample.springboot.model.User;

public interface UserRepository extends CrudRepository<User, Integer> {
    
    public User findByUsername(String username);
    
}
