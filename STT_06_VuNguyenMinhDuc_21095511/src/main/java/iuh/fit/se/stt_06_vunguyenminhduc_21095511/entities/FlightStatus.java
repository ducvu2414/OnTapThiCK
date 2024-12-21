package iuh.fit.se.stt_06_vunguyenminhduc_21095511.entities;

public enum FlightStatus {
    NEW((byte) 0), SCHEDULED((byte) 1);

    private final byte value;

    FlightStatus(byte value) {
        this.value = value;
    }

    public byte getValue() {
        return value;
    }


    @Override
    public String toString() {
        return name() ;
    }

}
