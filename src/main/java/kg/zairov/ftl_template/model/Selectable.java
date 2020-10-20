package kg.zairov.ftl_template.model;

public interface Selectable {
        String getSelectorId();

        String getSelectorTitle();

    default public String getClassName() {
        return "";
    }

}
