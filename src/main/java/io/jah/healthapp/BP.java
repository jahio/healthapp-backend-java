package io.jah.healthapp;

//import lombok.Getter;
//import lombok.RequiredArgsConstructor;
//import lombok.Setter;
//import lombok.ToString;
//
//import javax.persistence.Column;
//import javax.persistence.Entity;
//import javax.persistence.Table;
import java.sql.ResultSet;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

//@Table(name = "bp_entry")
//@Entity
//@Getter
//@Setter
//@RequiredArgsConstructor
//@ToString
public class BP {
    // Logger
    Logger logger = LoggerFactory.getLogger(io.jah.healthapp.App.class);

//    @Column(name = "diastolic", nullable = false)
//    private Integer diastolic;
//
//    @Column(nullable = false)
//    private Integer systolic;
//
//    private Integer heartrate;


    public BP(ResultSet src) {

    }
}
