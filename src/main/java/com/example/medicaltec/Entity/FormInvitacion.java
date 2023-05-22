package com.example.medicaltec.Entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "form_invitacion")
public class FormInvitacion {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idform_invitacion", nullable = false)
    private Integer id;

    @Column(name = "nombres", length = 45)
    private String nombres;

    @Column(name = "apellidos", length = 45)
    private String apellidos;

    @Column(name = "id_sede", length = 45)
    private String idSede;

    @Column(name = "dni", length = 45)
    private String dni;

    @Column(name = "edad", length = 45)
    private String edad;

    @Column(name = "sexo", length = 45)
    private String sexo;

    @Column(name = "domicilio", length = 45)
    private String domicilio;

    @Column(name = "correo", length = 45)
    private String correo;

    @Column(name = "id_seguro", length = 45)
    private String idSeguro;

    @Column(name = "celular", length = 45)
    private String celular;

    @Column(name = "medicamentos", length = 200)
    private String medicamentos;

    @Column(name = "alergias", length = 200)
    private String alergias;

}