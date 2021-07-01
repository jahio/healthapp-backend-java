package healthapp;

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

    @Column(name = "created_at", insertable = true, updatable = false)
    @WhenCreated @NotNull
    Instant whenCreated;

    @Column(name = "updated_at", insertable = false)
    @WhenModified @NotNull
    Instant whenModified;
}
