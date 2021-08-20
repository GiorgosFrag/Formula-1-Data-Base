PGDMP     0                	    x           F1    12.2    12.2     /           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            0           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            1           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            2           1262    32822    F1    DATABASE     �   CREATE DATABASE "F1" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Greek_Greece.1253' LC_CTYPE = 'Greek_Greece.1253';
    DROP DATABASE "F1";
                postgres    false            �            1259    32838    circuits    TABLE     �   CREATE TABLE public.circuits (
    circuit_name character varying(50) NOT NULL,
    circuit_country character varying(50) NOT NULL,
    circuit_length numeric(5,3) NOT NULL
);
    DROP TABLE public.circuits;
       public         heap    postgres    false            �            1259    32828    drivers_2020    TABLE     v  CREATE TABLE public.drivers_2020 (
    driver_id character varying(10) NOT NULL,
    driver_first_name character varying(50) NOT NULL,
    driver_last_name character varying(50) NOT NULL,
    driver_birth_date date NOT NULL,
    driver_country character varying(50) NOT NULL,
    driver_podium_wins integer NOT NULL,
    driver_racing_team character varying(50) NOT NULL
);
     DROP TABLE public.drivers_2020;
       public         heap    postgres    false            �            1259    32863    legendary_drivers    TABLE     �  CREATE TABLE public.legendary_drivers (
    driver_name character varying(50) NOT NULL,
    driver_last_name character varying(50) NOT NULL,
    driver_racing_team character varying(50) NOT NULL,
    driver_birth_date character varying(20) NOT NULL,
    driver_death_date character varying(20),
    driver_country character varying(50) NOT NULL,
    driver_podiums integer NOT NULL,
    driver_championships integer NOT NULL
);
 %   DROP TABLE public.legendary_drivers;
       public         heap    postgres    false            �            1259    32843 
   races_2020    TABLE     �   CREATE TABLE public.races_2020 (
    circuit_name character varying(50) NOT NULL,
    driver_id character varying(10) NOT NULL,
    race_date date NOT NULL,
    laps integer
);
    DROP TABLE public.races_2020;
       public         heap    postgres    false            �            1259    32823    racing_teams_2020    TABLE     �   CREATE TABLE public.racing_teams_2020 (
    team_name character varying(50) NOT NULL,
    base character varying(50) NOT NULL,
    championships integer NOT NULL
);
 %   DROP TABLE public.racing_teams_2020;
       public         heap    postgres    false            �            1259    32858    racing_teams_over_the_years    TABLE     �   CREATE TABLE public.racing_teams_over_the_years (
    team_name character varying(50) NOT NULL,
    base character varying(50) NOT NULL,
    championships character varying(50) NOT NULL
);
 /   DROP TABLE public.racing_teams_over_the_years;
       public         heap    postgres    false            �            1259    32873    team_budgets_2020    TABLE     �   CREATE TABLE public.team_budgets_2020 (
    team_name character varying(50) NOT NULL,
    team_budget numeric(10,3) NOT NULL
);
 %   DROP TABLE public.team_budgets_2020;
       public         heap    postgres    false            (          0    32838    circuits 
   TABLE DATA           Q   COPY public.circuits (circuit_name, circuit_country, circuit_length) FROM stdin;
    public          postgres    false    204   �(       '          0    32828    drivers_2020 
   TABLE DATA           �   COPY public.drivers_2020 (driver_id, driver_first_name, driver_last_name, driver_birth_date, driver_country, driver_podium_wins, driver_racing_team) FROM stdin;
    public          postgres    false    203   f/       +          0    32863    legendary_drivers 
   TABLE DATA           �   COPY public.legendary_drivers (driver_name, driver_last_name, driver_racing_team, driver_birth_date, driver_death_date, driver_country, driver_podiums, driver_championships) FROM stdin;
    public          postgres    false    207   2       )          0    32843 
   races_2020 
   TABLE DATA           N   COPY public.races_2020 (circuit_name, driver_id, race_date, laps) FROM stdin;
    public          postgres    false    205   03       &          0    32823    racing_teams_2020 
   TABLE DATA           K   COPY public.racing_teams_2020 (team_name, base, championships) FROM stdin;
    public          postgres    false    202   �3       *          0    32858    racing_teams_over_the_years 
   TABLE DATA           U   COPY public.racing_teams_over_the_years (team_name, base, championships) FROM stdin;
    public          postgres    false    206   �4       ,          0    32873    team_budgets_2020 
   TABLE DATA           C   COPY public.team_budgets_2020 (team_name, team_budget) FROM stdin;
    public          postgres    false    208   �9       �
           2606    32842    circuits circuits_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.circuits
    ADD CONSTRAINT circuits_pkey PRIMARY KEY (circuit_name);
 @   ALTER TABLE ONLY public.circuits DROP CONSTRAINT circuits_pkey;
       public            postgres    false    204            �
           2606    32832    drivers_2020 drivers_2020_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.drivers_2020
    ADD CONSTRAINT drivers_2020_pkey PRIMARY KEY (driver_id);
 H   ALTER TABLE ONLY public.drivers_2020 DROP CONSTRAINT drivers_2020_pkey;
       public            postgres    false    203            �
           2606    32867 (   legendary_drivers legendary_drivers_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.legendary_drivers
    ADD CONSTRAINT legendary_drivers_pkey PRIMARY KEY (driver_name, driver_last_name);
 R   ALTER TABLE ONLY public.legendary_drivers DROP CONSTRAINT legendary_drivers_pkey;
       public            postgres    false    207    207            �
           2606    32847    races_2020 races_2020_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.races_2020
    ADD CONSTRAINT races_2020_pkey PRIMARY KEY (circuit_name, race_date);
 D   ALTER TABLE ONLY public.races_2020 DROP CONSTRAINT races_2020_pkey;
       public            postgres    false    205    205            �
           2606    32827 (   racing_teams_2020 racing_teams_2020_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.racing_teams_2020
    ADD CONSTRAINT racing_teams_2020_pkey PRIMARY KEY (team_name);
 R   ALTER TABLE ONLY public.racing_teams_2020 DROP CONSTRAINT racing_teams_2020_pkey;
       public            postgres    false    202            �
           2606    32862 <   racing_teams_over_the_years racing_teams_over_the_years_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.racing_teams_over_the_years
    ADD CONSTRAINT racing_teams_over_the_years_pkey PRIMARY KEY (team_name);
 f   ALTER TABLE ONLY public.racing_teams_over_the_years DROP CONSTRAINT racing_teams_over_the_years_pkey;
       public            postgres    false    206            �
           2606    32877 (   team_budgets_2020 team_budgets_2020_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.team_budgets_2020
    ADD CONSTRAINT team_budgets_2020_pkey PRIMARY KEY (team_name, team_budget);
 R   ALTER TABLE ONLY public.team_budgets_2020 DROP CONSTRAINT team_budgets_2020_pkey;
       public            postgres    false    208    208            �
           2606    32833 1   drivers_2020 drivers_2020_driver_racing_team_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.drivers_2020
    ADD CONSTRAINT drivers_2020_driver_racing_team_fkey FOREIGN KEY (driver_racing_team) REFERENCES public.racing_teams_2020(team_name) ON DELETE SET NULL;
 [   ALTER TABLE ONLY public.drivers_2020 DROP CONSTRAINT drivers_2020_driver_racing_team_fkey;
       public          postgres    false    202    2710    203            �
           2606    32868 ;   legendary_drivers legendary_drivers_driver_racing_team_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.legendary_drivers
    ADD CONSTRAINT legendary_drivers_driver_racing_team_fkey FOREIGN KEY (driver_racing_team) REFERENCES public.racing_teams_over_the_years(team_name) ON DELETE SET NULL;
 e   ALTER TABLE ONLY public.legendary_drivers DROP CONSTRAINT legendary_drivers_driver_racing_team_fkey;
       public          postgres    false    207    2718    206            �
           2606    32848 '   races_2020 races_2020_circuit_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.races_2020
    ADD CONSTRAINT races_2020_circuit_name_fkey FOREIGN KEY (circuit_name) REFERENCES public.circuits(circuit_name) ON DELETE SET NULL;
 Q   ALTER TABLE ONLY public.races_2020 DROP CONSTRAINT races_2020_circuit_name_fkey;
       public          postgres    false    205    204    2714            �
           2606    32853 $   races_2020 races_2020_driver_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.races_2020
    ADD CONSTRAINT races_2020_driver_id_fkey FOREIGN KEY (driver_id) REFERENCES public.drivers_2020(driver_id) ON DELETE SET NULL;
 N   ALTER TABLE ONLY public.races_2020 DROP CONSTRAINT races_2020_driver_id_fkey;
       public          postgres    false    203    205    2712            �
           2606    32878 2   team_budgets_2020 team_budgets_2020_team_name_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.team_budgets_2020
    ADD CONSTRAINT team_budgets_2020_team_name_fkey FOREIGN KEY (team_name) REFERENCES public.racing_teams_2020(team_name) ON DELETE SET NULL;
 \   ALTER TABLE ONLY public.team_budgets_2020 DROP CONSTRAINT team_budgets_2020_team_name_fkey;
       public          postgres    false    2710    202    208            (   �  x�uW�v�^�O� �1�%$����Lϙ>wS�ՠ��r%�4y�9��wq�]�vv��|2`;��$UI���W�$�d�b����d�t�����:C�� �F�8�Hս���E/�Ҳ �QG�i��L�h�{Q+v�6bN�T���aG����\|�a�7� ��Z,�81#�Pk�q�ԥQ/�J�$N �"�e�^96��Ԋ�Zq�������#��rE���t��r�7Z�Z\[�)�QFҾ�N�����k���+��x�Ɛ����.����.��}�-�)m�W���*������n��U�R�®�K���{.�Vb&�]��v��@���wSCϰ?��׾ヶ���K2�Q������h���/�JRb'>#F���(��yZ��b"#@�b�"h�ӋV��q���g_=SP}���F�D�˯�`ʦ��#n���1���)�I�F>�����pݠׇ�CYŲ��;��͒�wR�0��W��ʭ�%����غ
�6�O�<Q��2��oXwc��/�̽�*�`����"�d-�	�!�8���� $qxIl��DH���։��?=������-޴�n��5.�x�ֺ7����]n�����q�ixx�rr�|v�œt"j<Ge��q-�G�d2.��%!���U�v.�A��g��z �@A@��0;��$J�Q[Wt+C�ɼ�6��[�� .V����esT��,)��O�.�j3�2�����;Z�]�c���vvz�Z�F"�H��R\n�r�/:pHQNk4
���b���/�-������&ܚ�d�Ffd�{R�g=��^R�|E�����\�=UmU��Zܓ���v�{<���ǆ��N������Mp˥�Yu�&��~+$����:�X����h4J_��0L���C��q[� ��0�Ă��^��P��'[�y�:('� ���@����'�K�"�W쌆���&���a�\g����J~ת;3 Li��w�$���V �)��wʬw��~�+�K8Ŝ?�.��C :��0	?it�)S�>o���kG���-��<W�6;�:;E b��[�=�Z��4ˆ�a�hޖ
t�+�;��i���m/��{aE��u!�q`�<��I�/��{�K-�*��UG�R���&I��G��|��gĄ`�B�n-*Q�c/?���y>������1���c�����iw����ƗT�$y�^����p������A5wf>lb��~B���"�#� ��(�+W(e��"�F_/3�~j8��� ���W��NA ��~��Y�f�$շ�q8c� C�mu�3�Q�B���c����>�Q��5+��Y}�_Cu�*@�*�Yc
��F		�<���"?
��fZ���ţd?j�Ē���W�~߸ȏ3��X����ݛ��A��j�I����?I�<K��Q��8�_��¹�l����_[ �����~r|i�`bd����H�������ѷk5{��N���U��s{�R:�*�\��Ru�����j�II�XcwM�-��1���S#Zq
e���W����{E���b�����3��1/���1@�(�ˇz��)=�F�������wr�7��a�CYe(��?�
�ϥ�o��B��a�^�F���~'?�TR�UZ��jMKYkL��]o�9��t~��=�ʏ�� �<8n4HN�Zο�0�k/�T      '   �  x��TMs�0=����;��>����0@�K/��6Bb$�����$�If8x��Ӿ�u�c�D.qC:X������(��d���r�Z*��'�t���}:��B�&)K�A�rg6����D���h4K��/h�&�7���ۭ���e&�p��Z�H�(��y�t�.�Igj����NgؐY%y}����r�t�J�{�(2~�X#���Ydc4��9ϩu��2)���s4�D���vq<�N-��EJ�+�"S��K�hi�c���P}����V��i4�vp�/�W6��2�y�c���@9���	yO�薌�OI�g�C���D;ʿ��m��H|��e�N[s$����`���?lŤ�S�UD'���pe��X��Τ�d�v��\�!�pFMC�y�P/�����f��N��b��Z��o����\7���%\���,L��+���#8�;p�󻯷k\�����f�	��'��=��?��l�N"��Kц`���`M���n�.Op)b��1�ٍ���\sGLR��7\d.ې�#|y�8B��<�����c�? ���x�V��;l^']�Pf��3��w�Z3�����
��F/�~�M�Ӌ��n�ZY�Tl���Z��i�y�O[؃+j�V�7e���[a�u�����~}K��\/n�      +     x�e��N�0���S���4m� i�i .\�6ڬ���B��q8!q�����BW�#n�>0#��w�8�8ce��3�okfBp5T���r�B��vc1
Y�y���r�vϔ��2�kG3<F�+���h����6�2�i��58�G����>(F¹�u��ԋޞ1�j^6L��"�1�i����K<k�IW4;�[m[��R�$=�j�����6�x	���FBʋJD�Ϙn�YhU�$8�$o����;S"����Ҧ����M|1�y���G~j�      )   �   x�m�A�0����)�sS���K���E��&���S�������!y0��ڶHJ�g�I�$#\~�8��/�l��ߘ!�p��S�atV�B�:�qCG�8J�_$Ć���4���ke�Z�&��O����W=г[;_?�뇽l^�F�x�9r�I��F������4[h"���1~��S�      &   �   x�M��N�0�s�~P7���	uCPQ�E�p�"�rRM���a�]-��~����	kV%����|�H<��L�l6�`Ñ��3G�h��oXL���5�8SA�r6|�@KQ]�
D	�L�y�m5�+)����l�аN�8��f�-g�r�ܳ�$g��qX��K�f*�)�c��;v�[B����\ʚ;�Xh	�Z����J2��ByH�洆� � �Z?f�      *   �  x�mV�v�8�N��/@;����-�S���=g�ވD$������WC�b_4E���O�'��_J�9T{�%4�H�U��h��y��ēƪZm�B#J�@+)���AiK��Ds2C']Y���d1�$�\Վ[+��Q�@�@�%s��&s��,T����*�L�d?P_$�VGP�?@��UU��+1��6֢>�e�f+� ;/���IlM�Vϡ�66� CSM�L)&5j�@�5d���<�R�h���J*��CWqOQ�eG��ܞ��S�'Ֆ����%�ז��������]����3�d{b+ΝDmJ:�l
��zP̀k��J��'C�xd����3ŵ��0k����C|u@-f��>��^Ɍ�{�\���=j͇��Q�/��B�_�(�+��(U��j�\�[b�j0��� E�5���]qh��̵�+���9�ƭ4w$0N��-���+�3F(���$T(JF�KM�F*B�eQ�9h�l��T7���g��QG �htV���o|%�u��24'���~�vc$b�~P厕�kd���w��s�3O2�����-���ruދ7�}����Q��e9�����k`_�Uۓ���D��9�P:w#�k��F�}4��}D��� {d���&J�3�s!���zK|�oP4���[��.��'����M�`��C�Iu��s�50^W,�����t�gc��Zާ��|��/���#_��)�bo�
B=0�� ���6@���'���������*(��d�O�`'��n��n��A|ܪ����8�&W�%�i�&�����Cި��j$���g�-���FrG��w?��7���frӋ7;r����,0vAK�$3+��>�[�+�����`��K��9�5n���)S�A<�z�)4[Է��M��z;�cP��s1�H��{n�%�����_h��2�.R�3y������B�O{���"����$�p������ƭ�I�;��~�m�����N:l��*;ZB�z�7��̼2��M�*����+�3S��7�Qr}BZ��2��Q'e����g��I�H��8~y�Д~Ei]��8_yKX0���.���mׅo�����{s@�*&�8�է�����8��2��t���#J'�b?�wc742������iW���iÙiG��Y�ҫ�FǗ�|}���ߛ8��l<7V      ,   �   x�M��N�0���S���6lݱ;Qu�z�b5"�JR��De\���ϾN��`���h=�h��w����v��u����C���x���J
����Ӻ�Op�U�Y7Bf�1�Y�@8�P�1=�` ��W��NS��P|h�3t���iը��4M�-�{}�ܨcʧh�2�d�8�)�z\zb\\��F���*q̆��,�qK��&���, �G^2     