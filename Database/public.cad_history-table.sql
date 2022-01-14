-- Table: public.cad_history

-- DROP TABLE IF EXISTS public.cad_history;

CREATE TABLE IF NOT EXISTS public.cad_history
(
    des character varying(50) COLLATE pg_catalog."default",
    orbit_id character varying(50) COLLATE pg_catalog."default",
    jd character varying(100) COLLATE pg_catalog."default",
    cd timestamp without time zone,
    dist numeric(24,16),
    dist_min numeric(24,16),
    dist_max numeric(24,16),
    v_rel numeric(24,16),
    v_inf numeric(24,16),
    t_sigma_f character varying(50) COLLATE pg_catalog."default",
    h numeric(24,16)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.cad_history
    OWNER to postgres;