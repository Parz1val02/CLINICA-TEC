package com.example.medicaltec.repository;

import com.example.medicaltec.Entity.Cita;
import com.example.medicaltec.dto.CitaxReunionDto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

public interface CitaRepository extends JpaRepository<Cita, Integer> {

    @Query(nativeQuery = true, value = "SELECT * FROM telesystem_2.cita where str_to_date(fecha, '%d-%m-%Y') < current_date() and citacancelada=0 and pagada=1 and estadoscita_idestados=3 and paciente_dni=?1")
    List<Cita> historialCitas2(String dniPaciente);

    @Query(value = "SELECT * FROM telesystem_2.cita WHERE doctor_dni1=?1 " +
            "AND estadoscita_idestados=3 ORDER BY fecha DESC, hora DESC;",
            nativeQuery = true)
    List<Cita> pacientesAtendidos(String dni);

    @Query(value = "SELECT paciente_dni from telesystem_2.cita where doctor_dni1=?1" +
            " AND estadoscita_idestados=3 group by paciente_dni",nativeQuery = true)
    List<String> pacientesdeldoctor(String dni);

    @Query(value = "SELECT * FROM telesystem_2.cita WHERE doctor_dni1=?1 " +
            "AND estadoscita_idestados=1 ORDER BY fecha DESC, hora DESC;",
            nativeQuery = true)
    List<Cita> proximasCitasAgendadas(String dni);

    @Modifying
    @Transactional
    @Query(nativeQuery = true, value = "update cita set citacancelada=1 where idcita=?1")
    void cancelarCita(Integer id);

    @Modifying
    @Transactional
    @Query(nativeQuery = true, value = "update cita set pagada=1 where idcita=?1")
    void pagarCita(Integer id);
    @Modifying
    @Transactional
    @Query(nativeQuery = true, value = "update cita set estadoscita_idestados=2 where idcita=?1")
    void estadoPagada(Integer id);

    //para videollamada
    @Query(nativeQuery = true, value = "SELECT c.idcita, rv.enlace FROM telesystem_2.cita c inner join reunion_virtual rv on c.idcita = rv.cita_idcita")
    List<CitaxReunionDto> citasxEnlace();

    @Modifying
    @Transactional
    @Query(nativeQuery = true, value = "update cita set estadoscita_idestados=?1 where idcita=?2 ")
    void cambiarEstadoCita( int idEstado , int idCita);

    //para ver cual es la cita en transcurso
    @Query(nativeQuery = true, value = "select idcita, paciente_dni from telesystem_2.cita where estadoscita_idestados=2")
    Cita citaEnTranscurso();


    //cambair a estado de cita en transcurso
    @Modifying
    @Transactional
    @Query(nativeQuery = true, value = "update cita set estadoscita_idestados=2 where idcita=?1 and fecha=current_date() and hora=?2 and pagada=1 and citacancelada=0 ")
    void cambiarEstadoCitaEnTranscurso(int idCita, LocalTime hora);


}