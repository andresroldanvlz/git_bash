PGDMP       ;                |            stok    16.1    16.1     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16397    stok    DATABASE     z   CREATE DATABASE stok WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE stok;
                postgres    false                        2615    16398    tabla    SCHEMA        CREATE SCHEMA tabla;
    DROP SCHEMA tabla;
                postgres    false            �            1259    16400 	   promocion    TABLE     }   CREATE TABLE tabla.promocion (
    id integer NOT NULL,
    shampoo integer NOT NULL,
    acondicionador integer NOT NULL
);
    DROP TABLE tabla.promocion;
       tabla         heap    postgres    false    6            �            1259    16399    promocion_id_seq    SEQUENCE     �   CREATE SEQUENCE tabla.promocion_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE tabla.promocion_id_seq;
       tabla          postgres    false    217    6            �           0    0    promocion_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE tabla.promocion_id_seq OWNED BY tabla.promocion.id;
          tabla          postgres    false    216            Q           2604    16403    promocion id    DEFAULT     j   ALTER TABLE ONLY tabla.promocion ALTER COLUMN id SET DEFAULT nextval('tabla.promocion_id_seq'::regclass);
 :   ALTER TABLE tabla.promocion ALTER COLUMN id DROP DEFAULT;
       tabla          postgres    false    217    216    217            �          0    16400 	   promocion 
   TABLE DATA           ?   COPY tabla.promocion (id, shampoo, acondicionador) FROM stdin;
    tabla          postgres    false    217   �       �           0    0    promocion_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('tabla.promocion_id_seq', 1, false);
          tabla          postgres    false    216            S           2606    16405    promocion promocion_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY tabla.promocion
    ADD CONSTRAINT promocion_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY tabla.promocion DROP CONSTRAINT promocion_pkey;
       tabla            postgres    false    217            U           2606    16407 .   promocion promocion_shampoo_acondicionador_key 
   CONSTRAINT     {   ALTER TABLE ONLY tabla.promocion
    ADD CONSTRAINT promocion_shampoo_acondicionador_key UNIQUE (shampoo, acondicionador);
 W   ALTER TABLE ONLY tabla.promocion DROP CONSTRAINT promocion_shampoo_acondicionador_key;
       tabla            postgres    false    217    217            �      x������ � �     