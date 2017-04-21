package solutions.systems.simple.springboot.repository;

import org.springframework.data.repository.CrudRepository;

import solutions.systems.simple.springboot.model.User;

public interface UserRepository extends CrudRepository<User, Integer> {
    
    public User findByUsername(String username);
    
}
