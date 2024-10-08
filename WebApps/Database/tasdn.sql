PGDMP     $    !             
    {            tsdn    15.1    15.1 l    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    17285    tsdn    DATABASE        CREATE DATABASE tsdn WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE tsdn;
                postgres    false            �            1259    17309 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    17308    auth_group_id_seq    SEQUENCE     �   ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    221            �            1259    17317    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    17316    auth_group_permissions_id_seq    SEQUENCE     �   ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            �            1259    17303    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    17302    auth_permission_id_seq    SEQUENCE     �   ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    219            �            1259    17323 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    17331    auth_user_groups    TABLE     ~   CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    17330    auth_user_groups_id_seq    SEQUENCE     �   ALTER TABLE public.auth_user_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    227            �            1259    17322    auth_user_id_seq    SEQUENCE     �   ALTER TABLE public.auth_user ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225            �            1259    17337    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    17336 !   auth_user_user_permissions_id_seq    SEQUENCE     �   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    229            �            1259    17432    authtoken_token    TABLE     �   CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.authtoken_token;
       public         heap    postgres    false            �            1259    17483 	   datafraud    TABLE     �   CREATE TABLE public.datafraud (
    id integer NOT NULL,
    ip character varying(255),
    username text,
    password text,
    browser text,
    dateinput timestamp without time zone,
    fraudtype text
);
    DROP TABLE public.datafraud;
       public         heap    postgres    false            �            1259    17482    datafraud_id_seq    SEQUENCE     �   CREATE SEQUENCE public.datafraud_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.datafraud_id_seq;
       public          postgres    false    235            �           0    0    datafraud_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.datafraud_id_seq OWNED BY public.datafraud.id;
          public          postgres    false    234            �            1259    17395    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    17394    django_admin_log_id_seq    SEQUENCE     �   ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    231            �            1259    17295    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    17294    django_content_type_id_seq    SEQUENCE     �   ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    217            �            1259    17287    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    17286    django_migrations_id_seq    SEQUENCE     �   ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    215            �            1259    17423    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    17566    techteam    TABLE     |   CREATE TABLE public.techteam (
    id integer NOT NULL,
    name text,
    phone text,
    jobtitle text,
    email text
);
    DROP TABLE public.techteam;
       public         heap    postgres    false            �            1259    17565    techteam_id_seq    SEQUENCE     �   CREATE SEQUENCE public.techteam_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.techteam_id_seq;
       public          postgres    false    239            �           0    0    techteam_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.techteam_id_seq OWNED BY public.techteam.id;
          public          postgres    false    238            �            1259    17557 	   userlogin    TABLE     �   CREATE TABLE public.userlogin (
    id integer NOT NULL,
    username text,
    password text,
    name text,
    email text
);
    DROP TABLE public.userlogin;
       public         heap    postgres    false            �            1259    17556    userlogin_id_seq    SEQUENCE     �   CREATE SEQUENCE public.userlogin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.userlogin_id_seq;
       public          postgres    false    237            �           0    0    userlogin_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.userlogin_id_seq OWNED BY public.userlogin.id;
          public          postgres    false    236            �           2604    17486    datafraud id    DEFAULT     l   ALTER TABLE ONLY public.datafraud ALTER COLUMN id SET DEFAULT nextval('public.datafraud_id_seq'::regclass);
 ;   ALTER TABLE public.datafraud ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    17569    techteam id    DEFAULT     j   ALTER TABLE ONLY public.techteam ALTER COLUMN id SET DEFAULT nextval('public.techteam_id_seq'::regclass);
 :   ALTER TABLE public.techteam ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    238    239    239            �           2604    17560    userlogin id    DEFAULT     l   ALTER TABLE ONLY public.userlogin ALTER COLUMN id SET DEFAULT nextval('public.userlogin_id_seq'::regclass);
 ;   ALTER TABLE public.userlogin ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    237    237            �          0    17309 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    221   �       �          0    17317    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    223   3�                 0    17303    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    219   P�       �          0    17323 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    225   ��       �          0    17331    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    227   ʐ       �          0    17337    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    229   �       �          0    17432    authtoken_token 
   TABLE DATA           @   COPY public.authtoken_token (key, created, user_id) FROM stdin;
    public          postgres    false    233   �       �          0    17483 	   datafraud 
   TABLE DATA           ^   COPY public.datafraud (id, ip, username, password, browser, dateinput, fraudtype) FROM stdin;
    public          postgres    false    235   _�       �          0    17395    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    231   ��       }          0    17295    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    217   ��       {          0    17287    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    215   7�       �          0    17423    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    232   �       �          0    17566    techteam 
   TABLE DATA           D   COPY public.techteam (id, name, phone, jobtitle, email) FROM stdin;
    public          postgres    false    239   !�       �          0    17557 	   userlogin 
   TABLE DATA           H   COPY public.userlogin (id, username, password, name, email) FROM stdin;
    public          postgres    false    237   ��       �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    220            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    222            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 32, true);
          public          postgres    false    218            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    226            �           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
          public          postgres    false    224            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    228            �           0    0    datafraud_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.datafraud_id_seq', 47, true);
          public          postgres    false    234            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    230            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);
          public          postgres    false    216            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 21, true);
          public          postgres    false    214            �           0    0    techteam_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.techteam_id_seq', 2, true);
          public          postgres    false    238            �           0    0    userlogin_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.userlogin_id_seq', 1, true);
          public          postgres    false    236            �           2606    17421    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    221            �           2606    17352 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    223    223            �           2606    17321 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    223            �           2606    17313    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    221            �           2606    17343 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    219    219            �           2606    17307 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    219            �           2606    17335 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    227            �           2606    17367 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    227    227            �           2606    17327    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    225            �           2606    17341 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    229            �           2606    17381 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    229    229            �           2606    17416     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    225            �           2606    17436 $   authtoken_token authtoken_token_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);
 N   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_pkey;
       public            postgres    false    233            �           2606    17438 +   authtoken_token authtoken_token_user_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);
 U   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_key;
       public            postgres    false    233            �           2606    17490    datafraud datafraud_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.datafraud
    ADD CONSTRAINT datafraud_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.datafraud DROP CONSTRAINT datafraud_pkey;
       public            postgres    false    235            �           2606    17402 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    231            �           2606    17301 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    217    217            �           2606    17299 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    217            �           2606    17293 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    215            �           2606    17429 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    232            �           2606    17573    techteam techteam_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.techteam
    ADD CONSTRAINT techteam_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.techteam DROP CONSTRAINT techteam_pkey;
       public            postgres    false    239            �           2606    17564    userlogin userlogin_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.userlogin
    ADD CONSTRAINT userlogin_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.userlogin DROP CONSTRAINT userlogin_pkey;
       public            postgres    false    237            �           1259    17422    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    221            �           1259    17363 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    223            �           1259    17364 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    223            �           1259    17349 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    219            �           1259    17379 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    227            �           1259    17378 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    227            �           1259    17393 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    229            �           1259    17392 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    229            �           1259    17417     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    225            �           1259    17444 !   authtoken_token_key_10f0b77e_like    INDEX     p   CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);
 5   DROP INDEX public.authtoken_token_key_10f0b77e_like;
       public            postgres    false    233            �           1259    17413 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    231            �           1259    17414 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    231            �           1259    17431 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    232            �           1259    17430 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    232            �           2606    17358 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    223    219    3250            �           2606    17353 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    3255    223    221            �           2606    17344 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    3245    217    219            �           2606    17373 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    227    3255    221            �           2606    17368 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    225    227    3263            �           2606    17387 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    219    229    3250            �           2606    17382 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    3263    225    229            �           2606    17439 @   authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id;
       public          postgres    false    233    3263    225            �           2606    17403 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    3245    231    217            �           2606    17408 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    3263    231    225            �      x������ � �      �      x������ � �         O  x�]�An�0��}����!����T!bѨ4��Ж�7?{f�ŞO�/18�z�s�U�x�°L��z�X�t�����<\�R�aM���h���	���W��QS��0}�����xJ�{�q
�N�V�)�@a���$5
w*��)�GSS }[��qy�.'�2A������0�=l���������: O��ocLO�a[^��aY�jy��4T���ƺ�y�R�$��<���;�|Ҕ��+�sH�ꁂq�^�;t����
�Έ�
�M�_a0-�,۷�j��- j�3A�X��c�b�0G.������*g$3��>g'[��Rg�Aɼ�Xk�DY��      �     x���Oo�0 �s��k�`�q[tꦋ�d�`��c����d���;�����ϑ$��I�3jc~8V�s5+t�����Ϥ�U�i>�xM��
�fV�m��[�Yu��TF�Ű�?\���8(�� mk)U�D�CqwL��a���E"��q�v\�]ĠC�E�.��GH��p�/�mp�g�O��z�u|���a��锏c��zF�,�()d�ݣW��H.W���1�`�Z��6���a{���(��!�Z���~���Zfi      �      x������ � �      �      x������ � �      �   K   x����0гL�ݴ�Oi�Y�B�A_^Ub����d:o��e[Z39�� C�H=%n���Ç^�����0�      �   )  x���MO1�s�W4�X	M��.m��`bH��xT[ݥ�]���-�".�C'�4m��M H!�N�v��7�s[;��t�QT�w���xA����wۮK�^�*M�:Toi�!uQ��oWeN��M���-WAk���zB'��x�ʯ�ԇ*/'��P)�x�#O�Q�J`D�M	h�,6�&��n4h
:��/��7�bغ���x�O�Mظ~k�W�/JG��x-�K6�s�b|P34d|s9�����3{q��wf���L�xv���ϩ$�H���޹9��ɘF������$�v9I�      �      x������ � �      }   r   x�]��
1E׹#��qS�0S�IIR��t���gK�^��Sg����U��ݳ
���M[�a��l8Ҥ�,ze���y��=8�2��Bcq�7���q�T3OKp*�m ���9a      {   �  x����n� F�����U#f�ϳ��PB]��q1���/�IU�ɍe	���h�aHnH�<��!���O�v�O O@��:p} �ƕ���ac��r?��)]����D$(���F�t�ͅƳ��o�������6C��_���9c�ɇ�<w�5Ǘ����6K�,�M^�Y̲bۻM%�,(Y���]rь.�~������������6Q +JU]Q�����KA�[(�R�-ey�r��P����2�-��SZ�����m:�r�P)"�}�}�z�w�Hۆ���u>�Zʛ��ɦ�r�.�M�ɶ?<e�&Zqj��=�\+��U����!����������1��U�b��cV�����f"�����q�����G��T	ZX��ܺ�ݻ�A��J�s~S��~�b�Ձ�=Ә��c�k?�$ �0 ��Dp�\���"�)�����n�� 	��      �     x���In�@ ��u|��[X5PP�c��j	1c&�b0p�$���+d���I���~��t��5+����h3RV��4\��Ԭ�q�ڪ%�Wf���`�E`۷�h�E��z��B�%�g�Ɠ.��'��������L�ʯo�!;�9B��CXZ�_(�
7io�zƭ�e0a� U����~��������k|Yk��(��eo����TL�
���\$�l9kͺ�^��Ǝ�*u-����q�/|-
H~E�T0�D(�~y�q�[0<��^=��H�\�A.��O~�&�2.VǾK��v���ÇuZ��q��?�hl�uǹ^mX�O��� � 8�I��YH	\�Q�Y�II=2�yS<��D�Yd)�Fsl\��^ש�Cw2���ɋ�����Y���.�A�Q�d�	�L���(�
�<����lPۇ���经�(t�#eF3rr���i\����A��l~���b^������_!^!TDI��K�?/�=�L&�-js�      �   ~   x�M̱
�0 �����Фi�m
]
��.Gz�äI�~����9�;e��!	4;�,��c�x���(�DJ�γD�d.�[&I&�YY�A�����K��j�}���a��0Ug�_��_p5J�z�)�      �   ^   x�3�,)N�㴴HLLI1�01HN1OK460�4N��H420O2055�	v�S�q�Vpqq�L���OK�L�L���K-qH�M���K������� ��     