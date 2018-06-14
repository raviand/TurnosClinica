namespace Datos
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class ClinicaContext : DbContext
    {
        public ClinicaContext()
            : base("name=ClinicaContext")
        {
        }

        public virtual DbSet<ATENCION> ATENCIONs { get; set; }
        public virtual DbSet<ATENCION_PROFESIONAL> ATENCION_PROFESIONAL { get; set; }
        public virtual DbSet<CANCELACIONE> CANCELACIONES { get; set; }
        public virtual DbSet<COBERTURA_PACIENTES> COBERTURA_PACIENTES { get; set; }
        public virtual DbSet<COBERTURA_PROFESIONAL> COBERTURA_PROFESIONAL { get; set; }
        public virtual DbSet<COBERTURAS_MEDICAS> COBERTURAS_MEDICAS { get; set; }
        public virtual DbSet<CONSULTORIO> CONSULTORIOS { get; set; }
        public virtual DbSet<DIA_ATENCION_PROFESIONAL> DIA_ATENCION_PROFESIONAL { get; set; }
        public virtual DbSet<DIA> DIAS { get; set; }
        public virtual DbSet<ESPECIALIDADE> ESPECIALIDADES { get; set; }
        public virtual DbSet<ESTADO> ESTADOes { get; set; }
        public virtual DbSet<HORARIO> HORARIOS { get; set; }
        public virtual DbSet<INTERNACIONE> INTERNACIONES { get; set; }
        public virtual DbSet<localidade> localidades { get; set; }
        public virtual DbSet<PACIENTE_TELEFONOS> PACIENTE_TELEFONOS { get; set; }
        public virtual DbSet<PACIENTE> PACIENTES { get; set; }
        public virtual DbSet<PERMISO> PERMISOS { get; set; }
        public virtual DbSet<PLANE> PLANES { get; set; }
        public virtual DbSet<PROFESIONALE> PROFESIONALES { get; set; }
        public virtual DbSet<PROFESIONALES_ESPECIALIDADES> PROFESIONALES_ESPECIALIDADES { get; set; }
        public virtual DbSet<PROFESIONALES_TELEFONOS> PROFESIONALES_TELEFONOS { get; set; }
        public virtual DbSet<provincia> provincias { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<TELEFONO> TELEFONOes { get; set; }
        public virtual DbSet<TIPO_TEL> TIPO_TEL { get; set; }
        public virtual DbSet<TURNO> TURNOS { get; set; }
        public virtual DbSet<USUARIO> USUARIOS { get; set; }
        public virtual DbSet<CV_SELECT_PROFESIONALES> CV_SELECT_PROFESIONALES { get; set; }
        public virtual DbSet<VW_BUSCAR_PACIENTES> VW_BUSCAR_PACIENTES { get; set; }
        public virtual DbSet<VW_COBERTURA_PROFESIONAL> VW_COBERTURA_PROFESIONAL { get; set; }
        public virtual DbSet<VW_DIAS_ATENCION> VW_DIAS_ATENCION { get; set; }
        public virtual DbSet<VW_SELECT_TURNOS> VW_SELECT_TURNOS { get; set; }
        public virtual DbSet<VW_SERVICIOS> VW_SERVICIOS { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ATENCION>()
                .Property(e => e.INDICACION)
                .IsUnicode(false);

            modelBuilder.Entity<ATENCION_PROFESIONAL>()
                .Property(e => e.ATENCION)
                .IsUnicode(false);

            modelBuilder.Entity<ATENCION_PROFESIONAL>()
                .HasMany(e => e.DIA_ATENCION_PROFESIONAL)
                .WithRequired(e => e.ATENCION_PROFESIONAL)
                .HasForeignKey(e => e.ID_ATENCION)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<CANCELACIONE>()
                .Property(e => e.COMENTARIO)
                .IsUnicode(false);

            modelBuilder.Entity<COBERTURAS_MEDICAS>()
                .Property(e => e.NOMBRE)
                .IsUnicode(false);

            modelBuilder.Entity<COBERTURAS_MEDICAS>()
                .HasMany(e => e.COBERTURA_PROFESIONAL)
                .WithRequired(e => e.COBERTURAS_MEDICAS)
                .HasForeignKey(e => e.ID_COBERTURA)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<COBERTURAS_MEDICAS>()
                .HasMany(e => e.PLANES)
                .WithRequired(e => e.COBERTURAS_MEDICAS)
                .HasForeignKey(e => e.ID_COBERTURA)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<CONSULTORIO>()
                .Property(e => e.CALLE)
                .IsUnicode(false);

            modelBuilder.Entity<DIA>()
                .Property(e => e.NOMBRE)
                .IsUnicode(false);

            modelBuilder.Entity<DIA>()
                .HasMany(e => e.DIA_ATENCION_PROFESIONAL)
                .WithRequired(e => e.DIA)
                .HasForeignKey(e => e.ID_DIA)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ESPECIALIDADE>()
                .Property(e => e.NOMBRE)
                .IsUnicode(false);

            modelBuilder.Entity<ESPECIALIDADE>()
                .HasMany(e => e.INTERNACIONES)
                .WithRequired(e => e.ESPECIALIDADE)
                .HasForeignKey(e => e.ID_ESPECIALIDAD)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ESPECIALIDADE>()
                .HasMany(e => e.PROFESIONALES_ESPECIALIDADES)
                .WithRequired(e => e.ESPECIALIDADE)
                .HasForeignKey(e => e.ID_ESPECIALIDAD)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ESPECIALIDADE>()
                .HasMany(e => e.TURNOS)
                .WithRequired(e => e.ESPECIALIDADE)
                .HasForeignKey(e => e.ID_ESPECIALIDAD)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<ESTADO>()
                .Property(e => e.NOMBRE)
                .IsUnicode(false);

            modelBuilder.Entity<ESTADO>()
                .HasMany(e => e.TURNOS)
                .WithRequired(e => e.ESTADO)
                .HasForeignKey(e => e.ID_ESTADO)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<HORARIO>()
                .HasMany(e => e.CONSULTORIOS)
                .WithRequired(e => e.HORARIO)
                .HasForeignKey(e => e.ID_HORARIO)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<INTERNACIONE>()
                .Property(e => e.DIAGNOSTICO)
                .IsUnicode(false);

            modelBuilder.Entity<INTERNACIONE>()
                .Property(e => e.OBSERVACION_ALTA)
                .IsUnicode(false);

            modelBuilder.Entity<localidade>()
                .Property(e => e.localidad)
                .IsUnicode(false);

            modelBuilder.Entity<localidade>()
                .HasMany(e => e.CONSULTORIOS)
                .WithRequired(e => e.localidade)
                .HasForeignKey(e => e.ID_LOCALIDAD)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<localidade>()
                .HasMany(e => e.PACIENTES)
                .WithRequired(e => e.localidade)
                .HasForeignKey(e => e.ID_LOCALIDAD)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<localidade>()
                .HasMany(e => e.PROFESIONALES)
                .WithOptional(e => e.localidade)
                .HasForeignKey(e => e.ID_LOCALIDAD);

            modelBuilder.Entity<PACIENTE>()
                .Property(e => e.NOMBRE)
                .IsUnicode(false);

            modelBuilder.Entity<PACIENTE>()
                .Property(e => e.APELLIDO)
                .IsUnicode(false);

            modelBuilder.Entity<PACIENTE>()
                .Property(e => e.CALLE)
                .IsUnicode(false);

            modelBuilder.Entity<PACIENTE>()
                .Property(e => e.DEPARTAMENTO)
                .IsUnicode(false);

            modelBuilder.Entity<PACIENTE>()
                .Property(e => e.MAIL)
                .IsUnicode(false);

            modelBuilder.Entity<PACIENTE>()
                .HasMany(e => e.ATENCIONs)
                .WithRequired(e => e.PACIENTE)
                .HasForeignKey(e => e.ID_PACIENTE)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PACIENTE>()
                .HasMany(e => e.COBERTURA_PACIENTES)
                .WithRequired(e => e.PACIENTE)
                .HasForeignKey(e => e.ID_PACIENTE)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PACIENTE>()
                .HasMany(e => e.INTERNACIONES)
                .WithRequired(e => e.PACIENTE)
                .HasForeignKey(e => e.ID_PACIENTE)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PACIENTE>()
                .HasMany(e => e.PACIENTE_TELEFONOS)
                .WithRequired(e => e.PACIENTE)
                .HasForeignKey(e => e.ID_PACIENTE)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PACIENTE>()
                .HasMany(e => e.TURNOS)
                .WithRequired(e => e.PACIENTE)
                .HasForeignKey(e => e.ID_PACIENTE)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PERMISO>()
                .Property(e => e.PERMISO1)
                .IsFixedLength()
                .IsUnicode(false);

            modelBuilder.Entity<PERMISO>()
                .Property(e => e.NOMBRE)
                .IsUnicode(false);

            modelBuilder.Entity<PLANE>()
                .Property(e => e.NOMBRE)
                .IsUnicode(false);

            modelBuilder.Entity<PLANE>()
                .HasMany(e => e.COBERTURA_PACIENTES)
                .WithOptional(e => e.PLANE)
                .HasForeignKey(e => e.ID_PLAN);

            modelBuilder.Entity<PROFESIONALE>()
                .Property(e => e.NOMBRE)
                .IsUnicode(false);

            modelBuilder.Entity<PROFESIONALE>()
                .Property(e => e.APELLIDO)
                .IsUnicode(false);

            modelBuilder.Entity<PROFESIONALE>()
                .Property(e => e.CALLE)
                .IsUnicode(false);

            modelBuilder.Entity<PROFESIONALE>()
                .Property(e => e.MAIL)
                .IsUnicode(false);

            modelBuilder.Entity<PROFESIONALE>()
                .Property(e => e.DEPARTAMENTO)
                .IsUnicode(false);

            modelBuilder.Entity<PROFESIONALE>()
                .HasMany(e => e.ATENCIONs)
                .WithRequired(e => e.PROFESIONALE)
                .HasForeignKey(e => e.ID_PROFESIONAL)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PROFESIONALE>()
                .HasMany(e => e.COBERTURA_PROFESIONAL)
                .WithRequired(e => e.PROFESIONALE)
                .HasForeignKey(e => e.ID_PROFESIONAL)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PROFESIONALE>()
                .HasMany(e => e.DIA_ATENCION_PROFESIONAL)
                .WithRequired(e => e.PROFESIONALE)
                .HasForeignKey(e => e.ID_PROFESIONAL)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PROFESIONALE>()
                .HasMany(e => e.INTERNACIONES)
                .WithRequired(e => e.PROFESIONALE)
                .HasForeignKey(e => e.ID_DERIVADOR)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PROFESIONALE>()
                .HasMany(e => e.PROFESIONALES_TELEFONOS)
                .WithRequired(e => e.PROFESIONALE)
                .HasForeignKey(e => e.ID_PROFESIONALES)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PROFESIONALE>()
                .HasMany(e => e.PROFESIONALES_ESPECIALIDADES)
                .WithRequired(e => e.PROFESIONALE)
                .HasForeignKey(e => e.ID_PROFESIONAL)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<PROFESIONALE>()
                .HasMany(e => e.TURNOS)
                .WithRequired(e => e.PROFESIONALE)
                .HasForeignKey(e => e.ID_PROFESIONAL)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<provincia>()
                .Property(e => e.provincia1)
                .IsUnicode(false);

            modelBuilder.Entity<provincia>()
                .HasMany(e => e.localidades)
                .WithRequired(e => e.provincia)
                .HasForeignKey(e => e.id_privincia)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TELEFONO>()
                .HasMany(e => e.PACIENTE_TELEFONOS)
                .WithRequired(e => e.TELEFONO)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TELEFONO>()
                .HasMany(e => e.PROFESIONALES_TELEFONOS)
                .WithRequired(e => e.TELEFONO)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TIPO_TEL>()
                .Property(e => e.NOMBRE)
                .IsUnicode(false);

            modelBuilder.Entity<TIPO_TEL>()
                .HasMany(e => e.TELEFONOes)
                .WithRequired(e => e.TIPO_TEL)
                .HasForeignKey(e => e.TIPO)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<TURNO>()
                .Property(e => e.HORA_TURNO)
                .HasPrecision(0);

            modelBuilder.Entity<TURNO>()
                .HasMany(e => e.CANCELACIONES)
                .WithRequired(e => e.TURNO)
                .HasForeignKey(e => e.ID_TURNO)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<USUARIO>()
                .Property(e => e.USUARIO1)
                .IsUnicode(false);

            modelBuilder.Entity<USUARIO>()
                .Property(e => e.PASS)
                .IsUnicode(false);

            modelBuilder.Entity<USUARIO>()
                .HasMany(e => e.CANCELACIONES)
                .WithRequired(e => e.USUARIO)
                .HasForeignKey(e => e.ID_USUARIO)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<CV_SELECT_PROFESIONALES>()
                .Property(e => e.NOMBRE)
                .IsUnicode(false);

            modelBuilder.Entity<CV_SELECT_PROFESIONALES>()
                .Property(e => e.APELLIDO)
                .IsUnicode(false);

            modelBuilder.Entity<CV_SELECT_PROFESIONALES>()
                .Property(e => e.CALLE)
                .IsUnicode(false);

            modelBuilder.Entity<CV_SELECT_PROFESIONALES>()
                .Property(e => e.DEPARTAMENTO)
                .IsUnicode(false);

            modelBuilder.Entity<CV_SELECT_PROFESIONALES>()
                .Property(e => e.MAIL)
                .IsUnicode(false);

            modelBuilder.Entity<CV_SELECT_PROFESIONALES>()
                .Property(e => e.provincia)
                .IsUnicode(false);

            modelBuilder.Entity<CV_SELECT_PROFESIONALES>()
                .Property(e => e.localidad)
                .IsUnicode(false);

            modelBuilder.Entity<VW_BUSCAR_PACIENTES>()
                .Property(e => e.NOMBRE)
                .IsUnicode(false);

            modelBuilder.Entity<VW_BUSCAR_PACIENTES>()
                .Property(e => e.APELLIDO)
                .IsUnicode(false);

            modelBuilder.Entity<VW_BUSCAR_PACIENTES>()
                .Property(e => e.CALLE)
                .IsUnicode(false);

            modelBuilder.Entity<VW_BUSCAR_PACIENTES>()
                .Property(e => e.DEPARTAMENTO)
                .IsUnicode(false);

            modelBuilder.Entity<VW_BUSCAR_PACIENTES>()
                .Property(e => e.MAIL)
                .IsUnicode(false);

            modelBuilder.Entity<VW_BUSCAR_PACIENTES>()
                .Property(e => e.LOCALIDAD)
                .IsUnicode(false);

            modelBuilder.Entity<VW_BUSCAR_PACIENTES>()
                .Property(e => e.PROVINCIA)
                .IsUnicode(false);

            modelBuilder.Entity<VW_BUSCAR_PACIENTES>()
                .Property(e => e.COBERTURA)
                .IsUnicode(false);

            modelBuilder.Entity<VW_BUSCAR_PACIENTES>()
                .Property(e => e.NOMBRE_PLAN)
                .IsUnicode(false);

            modelBuilder.Entity<VW_COBERTURA_PROFESIONAL>()
                .Property(e => e.COBERTURA)
                .IsUnicode(false);

            modelBuilder.Entity<VW_DIAS_ATENCION>()
                .Property(e => e.DIA)
                .IsUnicode(false);

            modelBuilder.Entity<VW_DIAS_ATENCION>()
                .Property(e => e.TURNO)
                .IsUnicode(false);

            modelBuilder.Entity<VW_DIAS_ATENCION>()
                .Property(e => e.NOMBRE)
                .IsUnicode(false);

            modelBuilder.Entity<VW_DIAS_ATENCION>()
                .Property(e => e.APELLIDO)
                .IsUnicode(false);

            modelBuilder.Entity<VW_SELECT_TURNOS>()
                .Property(e => e.NOMBRE_PACIENTE)
                .IsUnicode(false);

            modelBuilder.Entity<VW_SELECT_TURNOS>()
                .Property(e => e.APELLIDO_PACIENTE)
                .IsUnicode(false);

            modelBuilder.Entity<VW_SELECT_TURNOS>()
                .Property(e => e.HORA_TURNO)
                .HasPrecision(0);

            modelBuilder.Entity<VW_SELECT_TURNOS>()
                .Property(e => e.ESPECIALIDAD)
                .IsUnicode(false);

            modelBuilder.Entity<VW_SELECT_TURNOS>()
                .Property(e => e.ESTADO)
                .IsUnicode(false);

            modelBuilder.Entity<VW_SELECT_TURNOS>()
                .Property(e => e.NOMBRE_PROFESIONAL)
                .IsUnicode(false);

            modelBuilder.Entity<VW_SELECT_TURNOS>()
                .Property(e => e.APELLIDO_PROFESIONAL)
                .IsUnicode(false);

            modelBuilder.Entity<VW_SERVICIOS>()
                .Property(e => e.NOMBRE)
                .IsUnicode(false);
        }
    }
}
