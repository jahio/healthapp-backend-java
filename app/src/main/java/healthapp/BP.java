package healthapp;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Table(name = "bp_entry")
@Entity
@Getter
@Setter
@RequiredArgsConstructor
@ToString
public class BP extends BaseModel {
    @Column(name = "diastolic", nullable = false)
    private Integer diastolic;

    @Column(nullable = false)
    private Integer systolic;

    private Integer heartrate;
}
