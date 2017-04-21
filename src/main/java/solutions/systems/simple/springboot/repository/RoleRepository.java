package solutions.systems.simple.springboot.repository;

import org.springframework.data.repository.CrudRepository;

import solutions.systems.simple.springboot.model.Role;

public interface RoleRepository extends CrudRepository<Role, Integer>{
    
    public Role findByRole(String role);

}