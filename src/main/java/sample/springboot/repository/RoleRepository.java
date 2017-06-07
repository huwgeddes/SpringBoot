package sample.springboot.repository;

import org.springframework.data.repository.CrudRepository;

import sample.springboot.model.Role;

public interface RoleRepository extends CrudRepository<Role, Integer>{
    
    public Role findByRole(String role);

}