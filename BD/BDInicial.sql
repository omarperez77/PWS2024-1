PGDMP     !    *                 |         
   biblioteca    15.5    15.5     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    32769 
   biblioteca    DATABASE     ~   CREATE DATABASE biblioteca WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE biblioteca;
                postgres    false            �            1259    32771    libros    TABLE     C  CREATE TABLE public.libros (
    "bookId" integer NOT NULL,
    "bookTitle" character varying NOT NULL,
    "bookAuthor" character varying NOT NULL,
    "bookEditorial" character varying NOT NULL,
    "bookEdition" character varying,
    "bookISBN" character varying NOT NULL,
    "bookPrice" money,
    "bookDate" date
);
    DROP TABLE public.libros;
       public         heap    postgres    false            �            1259    32770    libros_bookId_seq    SEQUENCE     �   CREATE SEQUENCE public."libros_bookId_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public."libros_bookId_seq";
       public          postgres    false    215            �           0    0    libros_bookId_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."libros_bookId_seq" OWNED BY public.libros."bookId";
          public          postgres    false    214            e           2604    32774    libros bookId    DEFAULT     r   ALTER TABLE ONLY public.libros ALTER COLUMN "bookId" SET DEFAULT nextval('public."libros_bookId_seq"'::regclass);
 >   ALTER TABLE public.libros ALTER COLUMN "bookId" DROP DEFAULT;
       public          postgres    false    214    215    215            �          0    32771    libros 
   TABLE DATA           �   COPY public.libros ("bookId", "bookTitle", "bookAuthor", "bookEditorial", "bookEdition", "bookISBN", "bookPrice", "bookDate") FROM stdin;
    public          postgres    false    215   �       �           0    0    libros_bookId_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public."libros_bookId_seq"', 1, false);
          public          postgres    false    214            g           2606    32778    libros libros_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.libros
    ADD CONSTRAINT libros_pkey PRIMARY KEY ("bookId");
 <   ALTER TABLE ONLY public.libros DROP CONSTRAINT libros_pkey;
       public            postgres    false    215            �      x������ � �     