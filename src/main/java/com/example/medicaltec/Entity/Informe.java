package com.example.medicaltec.Entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Entity
@Table(name = "informe")
public class Informe {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idinforme", nullable = false)
    private Integer id;

    @Column(name = "diagnostico", nullable = false, length = 200)
    private String diagnostico;

    @Column(name = "firma", nullable = false)
    private byte[] firma;

    @Column(name = "bitacora", length = 500)
    private String bitacora;

    @ManyToOne
    @JoinColumn(name = "historialmedico_idhistorialmedico", nullable = false)
    private Historialmedico historialmedicoIdhistorialmedico;

    @ManyToOne
    @JoinColumn(name = "cita_idcita", nullable = false)
    private Cita citaIdcita;

}