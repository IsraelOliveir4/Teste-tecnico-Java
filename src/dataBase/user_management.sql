PGDMP  /                    |            user_management    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16397    user_management    DATABASE     �   CREATE DATABASE user_management WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE user_management;
                postgres    false            �            1259    16399    users    TABLE     �   CREATE TABLE public.users (
    id integer NOT NULL,
    nome character varying(100),
    telefone character varying(15),
    email character varying(100),
    cpf character varying(11),
    senha_hash character varying(255)
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16398    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    216            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    215            P           2604    16402    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    215    216            �          0    16399    users 
   TABLE DATA           K   COPY public.users (id, nome, telefone, email, cpf, senha_hash) FROM stdin;
    public          postgres    false    216   �       �           0    0    users_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.users_id_seq', 2, true);
          public          postgres    false    215            R           2606    16406    users users_cpf_key 
   CONSTRAINT     M   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_cpf_key UNIQUE (cpf);
 =   ALTER TABLE ONLY public.users DROP CONSTRAINT users_cpf_key;
       public            postgres    false    216            T           2606    16404    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    216            �   :   x�3���O��4442266115����s3s���s9L�L��-M8�b���� a�X     