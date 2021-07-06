package io.jah.healthapp;

import io.ebean.annotation.NotNull;
import io.ebean.annotation.WhenCreated;
import io.ebean.annotation.WhenModified;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.ToString;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import java.time.Instant;
import java.util.UUID;

@MappedSuperclass
@Getter
@RequiredArgsConstructor
@ToString
public abstract class BaseModel {
    @Column(nullable = false)
    @Id @NotNull
    UUID id;

    @Column(name = "createdAt", insertable = true, updatable = false)
    @WhenCreated(@Column(name = "createdAt")) @NotNull
    Instant whenCreated;

    @Column(name = "updatedAt", insertable = false)
    @WhenModified @NotNull
    Instant whenModified;
}
