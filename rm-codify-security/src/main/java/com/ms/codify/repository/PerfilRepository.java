package com.ms.codify.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.ms.codify.entities.PerfilModel;

/**
 * @description The Interface CobPagareRepository.
 * @author BS2
 */
@Repository
public interface PerfilRepository extends JpaRepository<PerfilModel, Long> {

	@Query(value = "SELECT p FROM UsuarioPerfilModel up "
			+ "INNER JOIN up.perfilModel p " + 
			"WHERE up.usuarioModel.idUsuario = :idUsuario ")
	List<PerfilModel> findbyIdUsuario(@Param("idUsuario") Long idUsuario);
	
	
	@Query(value = "SELECT p FROM PerfilModel p WHERE p.nombre = :nombre ")
	PerfilModel findByNameProfile(@Param("nombre") String nombre);

}
