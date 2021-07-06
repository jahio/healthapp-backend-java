//package io.jah.healthapp;
//
//import io.ebean.Model;
//import io.ebean.annotation.NotNull;
//import io.ebean.annotation.WhenCreated;
//import io.ebean.annotation.WhenModified;
//import lombok.Getter;
//import lombok.RequiredArgsConstructor;
//import lombok.ToString;
//
//import javax.persistence.Column;
//import javax.persistence.Id;
//import javax.persistence.MappedSuperclass;
//import javax.persistence.PrePersist;
//import java.time.Instant;
//import java.util.UUID;
//
//@MappedSuperclass
//@Getter
//@RequiredArgsConstructor
//@ToString
//public abstract class BaseModel extends Model {
//    @Column(nullable = false)
//    @Id @NotNull
//    UUID id;
//
//    @Column(columnDefinition = "createdAt", name = "createdAt", insertable = true, updatable = false)
//    @WhenCreated @NotNull
//    Instant createdAt;
//
//    @Column(columnDefinition = "updatedAt", name = "updatedAt", insertable = true, updatable = true)
//    @WhenModified @NotNull
//    Instant updatedAt;
//}
