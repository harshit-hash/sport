PGDMP     *    ,                y            postgres    12.6    12.6 )    A           0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
                      false            B           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            C           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            D           1262    13318    postgres    DATABASE     ?   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_India.1252' LC_CTYPE = 'English_India.1252';
    DROP DATABASE postgres;
                postgres    false            E           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    2884                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            F           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    1            ?            1259    24612    cricket    TABLE     ?   CREATE TABLE public.cricket (
    team character varying(20),
    game character varying(20),
    pname character varying(50),
    jerssyno numeric(3,0)
);
    DROP TABLE public.cricket;
       public         heap    postgres    false            G           0    0    TABLE cricket    COMMENT     7   COMMENT ON TABLE public.cricket IS 'For Cplayer page';
          public          postgres    false    205            H           0    0    TABLE cricket    ACL     s   REVOKE ALL ON TABLE public.cricket FROM postgres;
GRANT ALL ON TABLE public.cricket TO postgres WITH GRANT OPTION;
          public          postgres    false    205            ?            1259    24642    gamename    TABLE     A   CREATE TABLE public.gamename (
    game character varying(20)
);
    DROP TABLE public.gamename;
       public         heap    postgres    false            I           0    0    TABLE gamename    ACL     u   REVOKE ALL ON TABLE public.gamename FROM postgres;
GRANT ALL ON TABLE public.gamename TO postgres WITH GRANT OPTION;
          public          postgres    false    209            ?            1259    24648    login    TABLE     x   CREATE TABLE public.login (
    username character varying(50) NOT NULL,
    password character varying(20) NOT NULL
);
    DROP TABLE public.login;
       public         heap    postgres    false            J           0    0    TABLE login    ACL     o   REVOKE ALL ON TABLE public.login FROM postgres;
GRANT ALL ON TABLE public.login TO postgres WITH GRANT OPTION;
          public          postgres    false    211            ?            1259    24645 
   pballstate    TABLE     t  CREATE TABLE public.pballstate (
    over double precision,
    run numeric(5,0),
    wicket numeric(2,0),
    pname character varying(20),
    status character(1) DEFAULT 'N'::bpchar,
    totalover double precision DEFAULT 0,
    teamname character varying,
    playstatus character(1) DEFAULT 'N'::bpchar,
    game character varying,
    tournament character varying
);
    DROP TABLE public.pballstate;
       public         heap    postgres    false            K           0    0    TABLE pballstate    ACL     y   REVOKE ALL ON TABLE public.pballstate FROM postgres;
GRANT ALL ON TABLE public.pballstate TO postgres WITH GRANT OPTION;
          public          postgres    false    210            ?            1259    24621    playerstate    TABLE     ?  CREATE TABLE public.playerstate (
    run numeric(4,0) DEFAULT 0,
    ball numeric(3,0) DEFAULT 0,
    four numeric(3,0) DEFAULT 0,
    six numeric DEFAULT 0,
    pname character varying(50),
    status character(1) DEFAULT 'N'::bpchar,
    teamname character varying,
    totalrun numeric(3,0) DEFAULT 0,
    totalwicket numeric(2,0) DEFAULT 0,
    tournament character varying,
    playstatus character(1) DEFAULT 'N'::bpchar,
    game character varying
);
    DROP TABLE public.playerstate;
       public         heap    postgres    false            L           0    0    TABLE playerstate    COMMENT     ;   COMMENT ON TABLE public.playerstate IS 'For adscore page';
          public          postgres    false    206            M           0    0    TABLE playerstate    ACL     {   REVOKE ALL ON TABLE public.playerstate FROM postgres;
GRANT ALL ON TABLE public.playerstate TO postgres WITH GRANT OPTION;
          public          postgres    false    206            ?            1259    24653    pointtbl    TABLE     ?   CREATE TABLE public.pointtbl (
    teamname character varying,
    played numeric(3,0),
    win numeric(3,0),
    loss numeric(3,0),
    point numeric(3,0),
    runr double precision,
    game character varying,
    tournament character varying
);
    DROP TABLE public.pointtbl;
       public         heap    postgres    false            N           0    0    TABLE pointtbl    ACL     u   REVOKE ALL ON TABLE public.pointtbl FROM postgres;
GRANT ALL ON TABLE public.pointtbl TO postgres WITH GRANT OPTION;
          public          postgres    false    212            ?            1259    16393    registration    TABLE     ?   CREATE TABLE public.registration (
    fullname character varying(50) NOT NULL,
    username character varying(50) NOT NULL,
    password character varying(50) NOT NULL,
    email character varying(50),
    flag character(1) DEFAULT 'U'::bpchar
);
     DROP TABLE public.registration;
       public         heap    postgres    false            O           0    0    TABLE registration    ACL     }   REVOKE ALL ON TABLE public.registration FROM postgres;
GRANT ALL ON TABLE public.registration TO postgres WITH GRANT OPTION;
          public          postgres    false    203            ?            1259    16396    sport    TABLE     ?   CREATE TABLE public.sport (
    team1 character varying,
    team2 character varying,
    game character varying(20),
    tourn character varying,
    matchdate date,
    state character(1) DEFAULT 'N'::bpchar
);
    DROP TABLE public.sport;
       public         heap    postgres    false            P           0    0    TABLE sport    COMMENT     5   COMMENT ON TABLE public.sport IS 'For cricket page';
          public          postgres    false    204            Q           0    0    TABLE sport    ACL     o   REVOKE ALL ON TABLE public.sport FROM postgres;
GRANT ALL ON TABLE public.sport TO postgres WITH GRANT OPTION;
          public          postgres    false    204            ?            1259    24630    teams    TABLE     ?   CREATE TABLE public.teams (
    teamname character varying(50),
    shortname character varying(10),
    game character varying(20),
    tournament character varying
);
    DROP TABLE public.teams;
       public         heap    postgres    false            R           0    0    TABLE teams    ACL     o   REVOKE ALL ON TABLE public.teams FROM postgres;
GRANT ALL ON TABLE public.teams TO postgres WITH GRANT OPTION;
          public          postgres    false    207            ?            1259    24636    tournamentname    TABLE     q   CREATE TABLE public.tournamentname (
    tournamentname character varying(50),
    game character varying(20)
);
 "   DROP TABLE public.tournamentname;
       public         heap    postgres    false            S           0    0    TABLE tournamentname    ACL     ?   REVOKE ALL ON TABLE public.tournamentname FROM postgres;
GRANT ALL ON TABLE public.tournamentname TO postgres WITH GRANT OPTION;
          public          postgres    false    208            7          0    24612    cricket 
   TABLE DATA           >   COPY public.cricket (team, game, pname, jerssyno) FROM stdin;
    public          postgres    false    205   ?*       ;          0    24642    gamename 
   TABLE DATA           (   COPY public.gamename (game) FROM stdin;
    public          postgres    false    209   ?+       =          0    24648    login 
   TABLE DATA           3   COPY public.login (username, password) FROM stdin;
    public          postgres    false    211   ?+       <          0    24645 
   pballstate 
   TABLE DATA           y   COPY public.pballstate (over, run, wicket, pname, status, totalover, teamname, playstatus, game, tournament) FROM stdin;
    public          postgres    false    210   ?+       8          0    24621    playerstate 
   TABLE DATA           ?   COPY public.playerstate (run, ball, four, six, pname, status, teamname, totalrun, totalwicket, tournament, playstatus, game) FROM stdin;
    public          postgres    false    206   ,       >          0    24653    pointtbl 
   TABLE DATA           ^   COPY public.pointtbl (teamname, played, win, loss, point, runr, game, tournament) FROM stdin;
    public          postgres    false    212   ,       5          0    16393    registration 
   TABLE DATA           Q   COPY public.registration (fullname, username, password, email, flag) FROM stdin;
    public          postgres    false    203   ?,       6          0    16396    sport 
   TABLE DATA           L   COPY public.sport (team1, team2, game, tourn, matchdate, state) FROM stdin;
    public          postgres    false    204   $-       9          0    24630    teams 
   TABLE DATA           F   COPY public.teams (teamname, shortname, game, tournament) FROM stdin;
    public          postgres    false    207   ?-       :          0    24636    tournamentname 
   TABLE DATA           >   COPY public.tournamentname (tournamentname, game) FROM stdin;
    public          postgres    false    208   G.       ?
           2606    24652    login login_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.login
    ADD CONSTRAINT login_pkey PRIMARY KEY (username);
 :   ALTER TABLE ONLY public.login DROP CONSTRAINT login_pkey;
       public            postgres    false    211            7   ?   x????n?0???S?	??ێ;L??8?bҬ	S???????A???????????*x??H?K?K?ŋ'?T*?ݟz???V?yxδ{D?Ż?"5H?u?~??T7?x=?V[?]
ůV??????A)rÃK????-,D?K?7?????ë????DC{????5?;??p??EqȢ??)???c^?h???H?i???iϭ?i?=????H??????ڈP??.}?^d????~?>gJ?iA&?      ;   /   x?sJL???+???r.?L?N-?r??/qJ???
???I?3c???? S?;      =      x?????? ? ?      <      x?????? ? ?      8      x?????? ? ?      >   ?   x?+N,JLO??SH.?L?N-QH?)M?4BN v?s%f?qA(Tņ@e??8;?$U?1p?a?[??????????8????A?Up)7?C?b????????"?????T? ?]di???,?1z\\\ ??p?      5   \   x??H?M?+Qp??(J,O??4440?? ????@B鹉?9z?????\?@??ԒDN8???3FVʕ????Ffp?Mi? ߫,?      6   ?   x?+HN??b??????΢?̂?"N##C]S]#sN?.?|QrN5@5 ?<????˒?]?Ps??1?	?)@?(8??&q$&g??$?
??j(J??L-R?IML/M??i??~?̒T?M4?50??????4????s?$>b???? ????      9   g   x?+HN?, b??????΢?̂?"?l?P6?pQr'?	?)???sNig??3\T>?(573?H?'51?4?+ 19#5%U[ Amޙ%??z?	?????? ,lOn      :   +   x?J?,(-R(J??L-R?IML/M?t.?L?N-?????? ??[     