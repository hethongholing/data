PGDMP  1                    }            o2ocom    17.5    17.5 �               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                       1262    16707    o2ocom    DATABASE     �   CREATE DATABASE o2ocom WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE o2ocom;
                     postgres    false            �            1259    16912    Category    TABLE     �   CREATE TABLE public."Category" (
    category_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    is_active boolean,
    created_at timestamp with time zone DEFAULT now()
);
    DROP TABLE public."Category";
       public         heap r       postgres    false            �            1259    16911    Category_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public."Category_category_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."Category_category_id_seq";
       public               postgres    false    228                       0    0    Category_category_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."Category_category_id_seq" OWNED BY public."Category".category_id;
          public               postgres    false    227            �            1259    16997    admin_users    TABLE     �   CREATE TABLE public.admin_users (
    id integer NOT NULL,
    username character varying(100),
    password_hash text,
    role character varying(50),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.admin_users;
       public         heap r       postgres    false            �            1259    16996    admin_users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.admin_users_id_seq;
       public               postgres    false    236                       0    0    admin_users_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;
          public               postgres    false    235            �            1259    17197    ai_recommendation    TABLE     �   CREATE TABLE public.ai_recommendation (
    id integer NOT NULL,
    user_id integer,
    suggested_product integer,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 %   DROP TABLE public.ai_recommendation;
       public         heap r       postgres    false            �            1259    17196    ai_recommendation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ai_recommendation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.ai_recommendation_id_seq;
       public               postgres    false    254                       0    0    ai_recommendation_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.ai_recommendation_id_seq OWNED BY public.ai_recommendation.id;
          public               postgres    false    253            �            1259    16972    category    TABLE     �   CREATE TABLE public.category (
    category_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    image_url character varying(255),
    is_active boolean,
    created_at timestamp with time zone DEFAULT now()
);
    DROP TABLE public.category;
       public         heap r       postgres    false            �            1259    16971    category_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.category_category_id_seq;
       public               postgres    false    232                       0    0    category_category_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.category_category_id_seq OWNED BY public.category.category_id;
          public               postgres    false    231            �            1259    16985 
   franchisee    TABLE     �   CREATE TABLE public.franchisee (
    id integer NOT NULL,
    name character varying(255),
    address text,
    phone character varying(20),
    is_active boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.franchisee;
       public         heap r       postgres    false            �            1259    16984    franchisee_id_seq    SEQUENCE     �   CREATE SEQUENCE public.franchisee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.franchisee_id_seq;
       public               postgres    false    234                        0    0    franchisee_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.franchisee_id_seq OWNED BY public.franchisee.id;
          public               postgres    false    233            �            1259    17060    ingredients    TABLE     �   CREATE TABLE public.ingredients (
    id integer NOT NULL,
    name character varying(255),
    stock_quantity integer DEFAULT 0
);
    DROP TABLE public.ingredients;
       public         heap r       postgres    false            �            1259    17059    ingredients_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ingredients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.ingredients_id_seq;
       public               postgres    false    240            !           0    0    ingredients_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.ingredients_id_seq OWNED BY public.ingredients.id;
          public               postgres    false    239            �            1259    17068 	   inventory    TABLE     �   CREATE TABLE public.inventory (
    id integer NOT NULL,
    ingredient_id integer,
    quantity integer DEFAULT 0,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.inventory;
       public         heap r       postgres    false            �            1259    17067    inventory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.inventory_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.inventory_id_seq;
       public               postgres    false    242            "           0    0    inventory_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.inventory_id_seq OWNED BY public.inventory.id;
          public               postgres    false    241            �            1259    17164    loyalty_points    TABLE     �   CREATE TABLE public.loyalty_points (
    id integer NOT NULL,
    user_id integer,
    points integer DEFAULT 0,
    updated_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 "   DROP TABLE public.loyalty_points;
       public         heap r       postgres    false            �            1259    17163    loyalty_points_id_seq    SEQUENCE     �   CREATE SEQUENCE public.loyalty_points_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.loyalty_points_id_seq;
       public               postgres    false    250            #           0    0    loyalty_points_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.loyalty_points_id_seq OWNED BY public.loyalty_points.id;
          public               postgres    false    249            �            1259    16790    meal_ingredients    TABLE     �   CREATE TABLE public.meal_ingredients (
    id integer NOT NULL,
    meal_name character varying(100) NOT NULL,
    ingredient_id integer,
    quantity_per_meal numeric(10,2) NOT NULL
);
 $   DROP TABLE public.meal_ingredients;
       public         heap r       postgres    false            �            1259    16789    meal_ingredients_id_seq    SEQUENCE     �   CREATE SEQUENCE public.meal_ingredients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.meal_ingredients_id_seq;
       public               postgres    false    222            $           0    0    meal_ingredients_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.meal_ingredients_id_seq OWNED BY public.meal_ingredients.id;
          public               postgres    false    221            �            1259    17178 	   meal_plan    TABLE     �   CREATE TABLE public.meal_plan (
    id integer NOT NULL,
    user_id integer,
    date date,
    product_id integer,
    note text
);
    DROP TABLE public.meal_plan;
       public         heap r       postgres    false            �            1259    17177    meal_plan_id_seq    SEQUENCE     �   CREATE SEQUENCE public.meal_plan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.meal_plan_id_seq;
       public               postgres    false    252            %           0    0    meal_plan_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.meal_plan_id_seq OWNED BY public.meal_plan.id;
          public               postgres    false    251            �            1259    16820    members    TABLE     �   CREATE TABLE public.members (
    id integer NOT NULL,
    full_name character varying NOT NULL,
    email character varying,
    phone character varying,
    birth_date date,
    join_date date,
    gender character varying
);
    DROP TABLE public.members;
       public         heap r       postgres    false            �            1259    16819    members_id_seq    SEQUENCE     �   CREATE SEQUENCE public.members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.members_id_seq;
       public               postgres    false    224            &           0    0    members_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.members_id_seq OWNED BY public.members.id;
          public               postgres    false    223                        1259    17215    notifications    TABLE     �   CREATE TABLE public.notifications (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 !   DROP TABLE public.notifications;
       public         heap r       postgres    false            �            1259    17214    notifications_id_seq    SEQUENCE     �   CREATE SEQUENCE public.notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.notifications_id_seq;
       public               postgres    false    256            '           0    0    notifications_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;
          public               postgres    false    255            �            1259    17133    order_details    TABLE     �   CREATE TABLE public.order_details (
    id integer NOT NULL,
    order_id integer,
    product_id integer,
    quantity integer DEFAULT 1,
    price numeric(10,2)
);
 !   DROP TABLE public.order_details;
       public         heap r       postgres    false            �            1259    17132    order_details_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_details_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.order_details_id_seq;
       public               postgres    false    246            (           0    0    order_details_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.order_details_id_seq OWNED BY public.order_details.id;
          public               postgres    false    245            �            1259    17114    orders    TABLE       CREATE TABLE public.orders (
    id integer NOT NULL,
    user_id integer,
    franchisee_id integer,
    total_amount numeric(10,2),
    status character varying(50) DEFAULT 'pending'::character varying,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.orders;
       public         heap r       postgres    false            �            1259    17113    orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public               postgres    false    244            )           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public               postgres    false    243            �            1259    17151    payment_logs    TABLE        CREATE TABLE public.payment_logs (
    id integer NOT NULL,
    order_id integer,
    amount numeric(10,2),
    payment_method character varying(50),
    status character varying(50),
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
     DROP TABLE public.payment_logs;
       public         heap r       postgres    false            �            1259    17150    payment_logs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.payment_logs_id_seq;
       public               postgres    false    248            *           0    0    payment_logs_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.payment_logs_id_seq OWNED BY public.payment_logs.id;
          public               postgres    false    247            �            1259    16898    product    TABLE     -  CREATE TABLE public.product (
    product_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    image_url character varying(255),
    price numeric(10,2),
    category character varying(50),
    calories integer,
    discount_percent integer DEFAULT 0,
    stock_quantity integer DEFAULT 0,
    ingredients text,
    cooking_time_minutes integer,
    is_best_seller boolean DEFAULT false,
    is_active boolean DEFAULT true,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    category_id integer
);
    DROP TABLE public.product;
       public         heap r       postgres    false            �            1259    17046    product_origin    TABLE     �   CREATE TABLE public.product_origin (
    id integer NOT NULL,
    product_id integer,
    origin_info text,
    blockchain_hash text
);
 "   DROP TABLE public.product_origin;
       public         heap r       postgres    false            �            1259    17045    product_origin_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_origin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.product_origin_id_seq;
       public               postgres    false    238            +           0    0    product_origin_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.product_origin_id_seq OWNED BY public.product_origin.id;
          public               postgres    false    237            �            1259    16897    product_product_id_seq    SEQUENCE     �   CREATE SEQUENCE public.product_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.product_product_id_seq;
       public               postgres    false    226            ,           0    0    product_product_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.product_product_id_seq OWNED BY public.product.product_id;
          public               postgres    false    225            �            1259    16709    users    TABLE     �  CREATE TABLE public.users (
    id integer NOT NULL,
    full_name character varying(100),
    username character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    phone character varying(20) NOT NULL,
    hashed_password text NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    role character varying(50) DEFAULT 'member'::character varying,
    avatar text
);
    DROP TABLE public.users;
       public         heap r       postgres    false            �            1259    16708    users_id_seq    SEQUENCE     �   CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public               postgres    false    218            -           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public               postgres    false    217            �            1259    16726    weekly_orders    TABLE     �   CREATE TABLE public.weekly_orders (
    id integer NOT NULL,
    user_id integer NOT NULL,
    week character varying(20) NOT NULL,
    meal text NOT NULL,
    date date NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
 !   DROP TABLE public.weekly_orders;
       public         heap r       postgres    false            �            1259    16725    weekly_orders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.weekly_orders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.weekly_orders_id_seq;
       public               postgres    false    220            .           0    0    weekly_orders_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.weekly_orders_id_seq OWNED BY public.weekly_orders.id;
          public               postgres    false    219            �            1259    16925    wishlist    TABLE     �   CREATE TABLE public.wishlist (
    id integer NOT NULL,
    user_id integer NOT NULL,
    product_id integer NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.wishlist;
       public         heap r       postgres    false            �            1259    16924    wishlist_id_seq    SEQUENCE     �   CREATE SEQUENCE public.wishlist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.wishlist_id_seq;
       public               postgres    false    230            /           0    0    wishlist_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.wishlist_id_seq OWNED BY public.wishlist.id;
          public               postgres    false    229            �           2604    16915    Category category_id    DEFAULT     �   ALTER TABLE ONLY public."Category" ALTER COLUMN category_id SET DEFAULT nextval('public."Category_category_id_seq"'::regclass);
 E   ALTER TABLE public."Category" ALTER COLUMN category_id DROP DEFAULT;
       public               postgres    false    227    228    228            �           2604    17000    admin_users id    DEFAULT     p   ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);
 =   ALTER TABLE public.admin_users ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    236    235    236                       2604    17200    ai_recommendation id    DEFAULT     |   ALTER TABLE ONLY public.ai_recommendation ALTER COLUMN id SET DEFAULT nextval('public.ai_recommendation_id_seq'::regclass);
 C   ALTER TABLE public.ai_recommendation ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    254    253    254            �           2604    16975    category category_id    DEFAULT     |   ALTER TABLE ONLY public.category ALTER COLUMN category_id SET DEFAULT nextval('public.category_category_id_seq'::regclass);
 C   ALTER TABLE public.category ALTER COLUMN category_id DROP DEFAULT;
       public               postgres    false    231    232    232            �           2604    16988    franchisee id    DEFAULT     n   ALTER TABLE ONLY public.franchisee ALTER COLUMN id SET DEFAULT nextval('public.franchisee_id_seq'::regclass);
 <   ALTER TABLE public.franchisee ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    234    233    234            �           2604    17063    ingredients id    DEFAULT     p   ALTER TABLE ONLY public.ingredients ALTER COLUMN id SET DEFAULT nextval('public.ingredients_id_seq'::regclass);
 =   ALTER TABLE public.ingredients ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    240    239    240                        2604    17071    inventory id    DEFAULT     l   ALTER TABLE ONLY public.inventory ALTER COLUMN id SET DEFAULT nextval('public.inventory_id_seq'::regclass);
 ;   ALTER TABLE public.inventory ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    241    242    242            
           2604    17167    loyalty_points id    DEFAULT     v   ALTER TABLE ONLY public.loyalty_points ALTER COLUMN id SET DEFAULT nextval('public.loyalty_points_id_seq'::regclass);
 @   ALTER TABLE public.loyalty_points ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    249    250    250            �           2604    16793    meal_ingredients id    DEFAULT     z   ALTER TABLE ONLY public.meal_ingredients ALTER COLUMN id SET DEFAULT nextval('public.meal_ingredients_id_seq'::regclass);
 B   ALTER TABLE public.meal_ingredients ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    221    222    222                       2604    17181    meal_plan id    DEFAULT     l   ALTER TABLE ONLY public.meal_plan ALTER COLUMN id SET DEFAULT nextval('public.meal_plan_id_seq'::regclass);
 ;   ALTER TABLE public.meal_plan ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    252    251    252            �           2604    16823 
   members id    DEFAULT     h   ALTER TABLE ONLY public.members ALTER COLUMN id SET DEFAULT nextval('public.members_id_seq'::regclass);
 9   ALTER TABLE public.members ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    223    224    224                       2604    17218    notifications id    DEFAULT     t   ALTER TABLE ONLY public.notifications ALTER COLUMN id SET DEFAULT nextval('public.notifications_id_seq'::regclass);
 ?   ALTER TABLE public.notifications ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    256    255    256                       2604    17136    order_details id    DEFAULT     t   ALTER TABLE ONLY public.order_details ALTER COLUMN id SET DEFAULT nextval('public.order_details_id_seq'::regclass);
 ?   ALTER TABLE public.order_details ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    246    245    246                       2604    17117 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    243    244    244                       2604    17154    payment_logs id    DEFAULT     r   ALTER TABLE ONLY public.payment_logs ALTER COLUMN id SET DEFAULT nextval('public.payment_logs_id_seq'::regclass);
 >   ALTER TABLE public.payment_logs ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    247    248    248            �           2604    16901    product product_id    DEFAULT     x   ALTER TABLE ONLY public.product ALTER COLUMN product_id SET DEFAULT nextval('public.product_product_id_seq'::regclass);
 A   ALTER TABLE public.product ALTER COLUMN product_id DROP DEFAULT;
       public               postgres    false    225    226    226            �           2604    17049    product_origin id    DEFAULT     v   ALTER TABLE ONLY public.product_origin ALTER COLUMN id SET DEFAULT nextval('public.product_origin_id_seq'::regclass);
 @   ALTER TABLE public.product_origin ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    237    238    238            �           2604    16712    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    217    218    218            �           2604    16729    weekly_orders id    DEFAULT     t   ALTER TABLE ONLY public.weekly_orders ALTER COLUMN id SET DEFAULT nextval('public.weekly_orders_id_seq'::regclass);
 ?   ALTER TABLE public.weekly_orders ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    219    220    220            �           2604    16928    wishlist id    DEFAULT     j   ALTER TABLE ONLY public.wishlist ALTER COLUMN id SET DEFAULT nextval('public.wishlist_id_seq'::regclass);
 :   ALTER TABLE public.wishlist ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    230    229    230            �          0    16912    Category 
   TABLE DATA           [   COPY public."Category" (category_id, name, description, is_active, created_at) FROM stdin;
    public               postgres    false    228   ��                 0    16997    admin_users 
   TABLE DATA           T   COPY public.admin_users (id, username, password_hash, role, created_at) FROM stdin;
    public               postgres    false    236   `�                 0    17197    ai_recommendation 
   TABLE DATA           W   COPY public.ai_recommendation (id, user_id, suggested_product, created_at) FROM stdin;
    public               postgres    false    254   }�       �          0    16972    category 
   TABLE DATA           d   COPY public.category (category_id, name, description, image_url, is_active, created_at) FROM stdin;
    public               postgres    false    232   ��       �          0    16985 
   franchisee 
   TABLE DATA           U   COPY public.franchisee (id, name, address, phone, is_active, created_at) FROM stdin;
    public               postgres    false    234   ��                 0    17060    ingredients 
   TABLE DATA           ?   COPY public.ingredients (id, name, stock_quantity) FROM stdin;
    public               postgres    false    240   ��                 0    17068 	   inventory 
   TABLE DATA           L   COPY public.inventory (id, ingredient_id, quantity, updated_at) FROM stdin;
    public               postgres    false    242   ��                 0    17164    loyalty_points 
   TABLE DATA           I   COPY public.loyalty_points (id, user_id, points, updated_at) FROM stdin;
    public               postgres    false    250   ��       �          0    16790    meal_ingredients 
   TABLE DATA           [   COPY public.meal_ingredients (id, meal_name, ingredient_id, quantity_per_meal) FROM stdin;
    public               postgres    false    222   �                 0    17178 	   meal_plan 
   TABLE DATA           H   COPY public.meal_plan (id, user_id, date, product_id, note) FROM stdin;
    public               postgres    false    252   .�       �          0    16820    members 
   TABLE DATA           ]   COPY public.members (id, full_name, email, phone, birth_date, join_date, gender) FROM stdin;
    public               postgres    false    224   K�                 0    17215    notifications 
   TABLE DATA           G   COPY public.notifications (id, title, content, created_at) FROM stdin;
    public               postgres    false    256   h�                 0    17133    order_details 
   TABLE DATA           R   COPY public.order_details (id, order_id, product_id, quantity, price) FROM stdin;
    public               postgres    false    246   ��       	          0    17114    orders 
   TABLE DATA           ^   COPY public.orders (id, user_id, franchisee_id, total_amount, status, created_at) FROM stdin;
    public               postgres    false    244   ��                 0    17151    payment_logs 
   TABLE DATA           `   COPY public.payment_logs (id, order_id, amount, payment_method, status, created_at) FROM stdin;
    public               postgres    false    248   ��       �          0    16898    product 
   TABLE DATA           �   COPY public.product (product_id, name, description, image_url, price, category, calories, discount_percent, stock_quantity, ingredients, cooking_time_minutes, is_best_seller, is_active, created_at, category_id) FROM stdin;
    public               postgres    false    226   ��                 0    17046    product_origin 
   TABLE DATA           V   COPY public.product_origin (id, product_id, origin_info, blockchain_hash) FROM stdin;
    public               postgres    false    238   ~�       �          0    16709    users 
   TABLE DATA           q   COPY public.users (id, full_name, username, email, phone, hashed_password, created_at, role, avatar) FROM stdin;
    public               postgres    false    218   ��       �          0    16726    weekly_orders 
   TABLE DATA           R   COPY public.weekly_orders (id, user_id, week, meal, date, created_at) FROM stdin;
    public               postgres    false    220   g�       �          0    16925    wishlist 
   TABLE DATA           G   COPY public.wishlist (id, user_id, product_id, created_at) FROM stdin;
    public               postgres    false    230   ��       0           0    0    Category_category_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Category_category_id_seq"', 4, true);
          public               postgres    false    227            1           0    0    admin_users_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.admin_users_id_seq', 1, false);
          public               postgres    false    235            2           0    0    ai_recommendation_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.ai_recommendation_id_seq', 1, false);
          public               postgres    false    253            3           0    0    category_category_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.category_category_id_seq', 3, true);
          public               postgres    false    231            4           0    0    franchisee_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.franchisee_id_seq', 1, false);
          public               postgres    false    233            5           0    0    ingredients_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.ingredients_id_seq', 1, false);
          public               postgres    false    239            6           0    0    inventory_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.inventory_id_seq', 1, false);
          public               postgres    false    241            7           0    0    loyalty_points_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.loyalty_points_id_seq', 1, false);
          public               postgres    false    249            8           0    0    meal_ingredients_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.meal_ingredients_id_seq', 1, false);
          public               postgres    false    221            9           0    0    meal_plan_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.meal_plan_id_seq', 1, false);
          public               postgres    false    251            :           0    0    members_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.members_id_seq', 1, false);
          public               postgres    false    223            ;           0    0    notifications_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.notifications_id_seq', 1, false);
          public               postgres    false    255            <           0    0    order_details_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.order_details_id_seq', 1, true);
          public               postgres    false    245            =           0    0    orders_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orders_id_seq', 4, true);
          public               postgres    false    243            >           0    0    payment_logs_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.payment_logs_id_seq', 1, false);
          public               postgres    false    247            ?           0    0    product_origin_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.product_origin_id_seq', 1, false);
          public               postgres    false    237            @           0    0    product_product_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.product_product_id_seq', 27, true);
          public               postgres    false    225            A           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 15, true);
          public               postgres    false    217            B           0    0    weekly_orders_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.weekly_orders_id_seq', 1, false);
          public               postgres    false    219            C           0    0    wishlist_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.wishlist_id_seq', 9, true);
          public               postgres    false    229            &           2606    16922    Category Category_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public."Category"
    ADD CONSTRAINT "Category_name_key" UNIQUE (name);
 H   ALTER TABLE ONLY public."Category" DROP CONSTRAINT "Category_name_key";
       public                 postgres    false    228            (           2606    16920    Category Category_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public."Category"
    ADD CONSTRAINT "Category_pkey" PRIMARY KEY (category_id);
 D   ALTER TABLE ONLY public."Category" DROP CONSTRAINT "Category_pkey";
       public                 postgres    false    228            6           2606    17005    admin_users admin_users_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_pkey;
       public                 postgres    false    236            8           2606    17007 $   admin_users admin_users_username_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_username_key UNIQUE (username);
 N   ALTER TABLE ONLY public.admin_users DROP CONSTRAINT admin_users_username_key;
       public                 postgres    false    236            J           2606    17203 (   ai_recommendation ai_recommendation_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.ai_recommendation
    ADD CONSTRAINT ai_recommendation_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.ai_recommendation DROP CONSTRAINT ai_recommendation_pkey;
       public                 postgres    false    254            /           2606    16982    category category_name_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_name_key UNIQUE (name);
 D   ALTER TABLE ONLY public.category DROP CONSTRAINT category_name_key;
       public                 postgres    false    232            1           2606    16980    category category_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (category_id);
 @   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pkey;
       public                 postgres    false    232            4           2606    16994    franchisee franchisee_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.franchisee
    ADD CONSTRAINT franchisee_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.franchisee DROP CONSTRAINT franchisee_pkey;
       public                 postgres    false    234            <           2606    17066    ingredients ingredients_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.ingredients
    ADD CONSTRAINT ingredients_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.ingredients DROP CONSTRAINT ingredients_pkey;
       public                 postgres    false    240            >           2606    17075    inventory inventory_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_pkey;
       public                 postgres    false    242            F           2606    17171 "   loyalty_points loyalty_points_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.loyalty_points
    ADD CONSTRAINT loyalty_points_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.loyalty_points DROP CONSTRAINT loyalty_points_pkey;
       public                 postgres    false    250                       2606    16795 &   meal_ingredients meal_ingredients_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.meal_ingredients
    ADD CONSTRAINT meal_ingredients_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.meal_ingredients DROP CONSTRAINT meal_ingredients_pkey;
       public                 postgres    false    222            H           2606    17185    meal_plan meal_plan_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.meal_plan
    ADD CONSTRAINT meal_plan_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.meal_plan DROP CONSTRAINT meal_plan_pkey;
       public                 postgres    false    252                        2606    16829    members members_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.members DROP CONSTRAINT members_email_key;
       public                 postgres    false    224            "           2606    16827    members members_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.members
    ADD CONSTRAINT members_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.members DROP CONSTRAINT members_pkey;
       public                 postgres    false    224            L           2606    17223     notifications notifications_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.notifications DROP CONSTRAINT notifications_pkey;
       public                 postgres    false    256            B           2606    17139     order_details order_details_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.order_details DROP CONSTRAINT order_details_pkey;
       public                 postgres    false    246            @           2606    17121    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public                 postgres    false    244            D           2606    17157    payment_logs payment_logs_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.payment_logs
    ADD CONSTRAINT payment_logs_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.payment_logs DROP CONSTRAINT payment_logs_pkey;
       public                 postgres    false    248            :           2606    17053 "   product_origin product_origin_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.product_origin
    ADD CONSTRAINT product_origin_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.product_origin DROP CONSTRAINT product_origin_pkey;
       public                 postgres    false    238            $           2606    16910    product product_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (product_id);
 >   ALTER TABLE ONLY public.product DROP CONSTRAINT product_pkey;
       public                 postgres    false    226                       2606    16722    users users_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_key;
       public                 postgres    false    218                       2606    16724    users users_phone_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_phone_key UNIQUE (phone);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_phone_key;
       public                 postgres    false    218                       2606    16718    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public                 postgres    false    218                       2606    16720    users users_username_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_username_key;
       public                 postgres    false    218                       2606    16734     weekly_orders weekly_orders_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.weekly_orders
    ADD CONSTRAINT weekly_orders_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.weekly_orders DROP CONSTRAINT weekly_orders_pkey;
       public                 postgres    false    220            +           2606    16931    wishlist wishlist_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.wishlist
    ADD CONSTRAINT wishlist_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.wishlist DROP CONSTRAINT wishlist_pkey;
       public                 postgres    false    230            -           2606    16933 (   wishlist wishlist_user_id_product_id_key 
   CONSTRAINT     r   ALTER TABLE ONLY public.wishlist
    ADD CONSTRAINT wishlist_user_id_product_id_key UNIQUE (user_id, product_id);
 R   ALTER TABLE ONLY public.wishlist DROP CONSTRAINT wishlist_user_id_product_id_key;
       public                 postgres    false    230    230            )           1259    16923    ix_Category_category_id    INDEX     W   CREATE INDEX "ix_Category_category_id" ON public."Category" USING btree (category_id);
 -   DROP INDEX public."ix_Category_category_id";
       public                 postgres    false    228            2           1259    16983    ix_category_category_id    INDEX     S   CREATE INDEX ix_category_category_id ON public.category USING btree (category_id);
 +   DROP INDEX public.ix_category_category_id;
       public                 postgres    false    232                       1259    16830    ix_members_id    INDEX     ?   CREATE INDEX ix_members_id ON public.members USING btree (id);
 !   DROP INDEX public.ix_members_id;
       public                 postgres    false    224            [           2606    17209 :   ai_recommendation ai_recommendation_suggested_product_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ai_recommendation
    ADD CONSTRAINT ai_recommendation_suggested_product_fkey FOREIGN KEY (suggested_product) REFERENCES public.product(product_id);
 d   ALTER TABLE ONLY public.ai_recommendation DROP CONSTRAINT ai_recommendation_suggested_product_fkey;
       public               postgres    false    4900    254    226            \           2606    17204 0   ai_recommendation ai_recommendation_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.ai_recommendation
    ADD CONSTRAINT ai_recommendation_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.ai_recommendation DROP CONSTRAINT ai_recommendation_user_id_fkey;
       public               postgres    false    254    218    4887            N           2606    16966    product fk_category    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES public."Category"(category_id);
 =   ALTER TABLE ONLY public.product DROP CONSTRAINT fk_category;
       public               postgres    false    4904    226    228            O           2606    16939    wishlist fk_product    FK CONSTRAINT     �   ALTER TABLE ONLY public.wishlist
    ADD CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES public.product(product_id) ON DELETE CASCADE;
 =   ALTER TABLE ONLY public.wishlist DROP CONSTRAINT fk_product;
       public               postgres    false    230    226    4900            P           2606    16934    wishlist fk_user    FK CONSTRAINT     �   ALTER TABLE ONLY public.wishlist
    ADD CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 :   ALTER TABLE ONLY public.wishlist DROP CONSTRAINT fk_user;
       public               postgres    false    4887    218    230            R           2606    17076 &   inventory inventory_ingredient_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.inventory
    ADD CONSTRAINT inventory_ingredient_id_fkey FOREIGN KEY (ingredient_id) REFERENCES public.ingredients(id) ON DELETE CASCADE;
 P   ALTER TABLE ONLY public.inventory DROP CONSTRAINT inventory_ingredient_id_fkey;
       public               postgres    false    242    240    4924            X           2606    17172 *   loyalty_points loyalty_points_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.loyalty_points
    ADD CONSTRAINT loyalty_points_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 T   ALTER TABLE ONLY public.loyalty_points DROP CONSTRAINT loyalty_points_user_id_fkey;
       public               postgres    false    250    4887    218            Y           2606    17191 #   meal_plan meal_plan_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.meal_plan
    ADD CONSTRAINT meal_plan_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(product_id);
 M   ALTER TABLE ONLY public.meal_plan DROP CONSTRAINT meal_plan_product_id_fkey;
       public               postgres    false    252    226    4900            Z           2606    17186     meal_plan meal_plan_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.meal_plan
    ADD CONSTRAINT meal_plan_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 J   ALTER TABLE ONLY public.meal_plan DROP CONSTRAINT meal_plan_user_id_fkey;
       public               postgres    false    4887    252    218            U           2606    17140 )   order_details order_details_order_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.order_details DROP CONSTRAINT order_details_order_id_fkey;
       public               postgres    false    4928    244    246            V           2606    17145 +   order_details order_details_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT order_details_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(product_id);
 U   ALTER TABLE ONLY public.order_details DROP CONSTRAINT order_details_product_id_fkey;
       public               postgres    false    226    4900    246            S           2606    17127     orders orders_franchisee_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_franchisee_id_fkey FOREIGN KEY (franchisee_id) REFERENCES public.franchisee(id) ON DELETE SET NULL;
 J   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_franchisee_id_fkey;
       public               postgres    false    234    244    4916            T           2606    17122    orders orders_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE SET NULL;
 D   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_user_id_fkey;
       public               postgres    false    4887    244    218            W           2606    17158 '   payment_logs payment_logs_order_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_logs
    ADD CONSTRAINT payment_logs_order_id_fkey FOREIGN KEY (order_id) REFERENCES public.orders(id) ON DELETE CASCADE;
 Q   ALTER TABLE ONLY public.payment_logs DROP CONSTRAINT payment_logs_order_id_fkey;
       public               postgres    false    4928    248    244            Q           2606    17054 -   product_origin product_origin_product_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_origin
    ADD CONSTRAINT product_origin_product_id_fkey FOREIGN KEY (product_id) REFERENCES public.product(product_id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.product_origin DROP CONSTRAINT product_origin_product_id_fkey;
       public               postgres    false    226    238    4900            M           2606    16735 (   weekly_orders weekly_orders_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.weekly_orders
    ADD CONSTRAINT weekly_orders_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.weekly_orders DROP CONSTRAINT weekly_orders_user_id_fkey;
       public               postgres    false    4887    220    218            �   �   x�3��=�9O!9#��R�;��������T��L��@��������R������\�����>���yHL�z�����M��@z�!�4�g<ܵ01��[���������U�Z���b�aae`�gjlia6#F��� ��N�            x������ � �            x������ � �      �   �   x�u��N�0��u�
����B�;��7��Ĕ�)L�)
�w�l�wA�u	1Ę��]}O>���+5��?X�U<�����Ě�!�<��la�q-�:���OJO�� c�yS Q(f2IYhY�SoY`�JP'(b�r��S���}�nPG�>�..��_��-������������;p�r���>��s:�;��Lj�r�7a緟ؠ�"lU����`;��֤�-�%S��J�ދ�z�Q}��qE      �      x������ � �            x������ � �            x������ � �            x������ � �      �      x������ � �            x������ � �      �      x������ � �            x������ � �            x������ � �      	       x�3�44���4�30�LN,*r�b���� Fc2            x������ � �      �     x��V�n�F]�_1- >f�I@Q�yA�M� @0"erq�HC��6�.� 5�.���ՠh�6H�(".��������m+A馶D��!��3�KB�k��D����ER��mӔ�.6���p�+M�<0/��d\���Y~�=M��}j����΄g٩�}|�����ϰ,m3���������nֶ4��8���EV�m�6��CH��n_X#��p9fZ�5��[��hWN����7\����3�Al� hgn-�ar��a�U.��9� :m�2ny-zډ�I��|��"��_���.Gq�MP���o1��� �D,j�a�0��0O�^whªش[&�Ŷg�I��L�I�'z��!�}�G�3��<�ZA���R_�xW�q]DLW�la�ؖ�Z�g�퇚��8�W�ypb�9(��D�@���[^��G<!��H�.��|(y�
Pd����!P!B;@�!J��&n�j�K�C4���� WE�HY�Z^�B���6P�`� $��)�ì���Ⱦ���U0J���K��g��9>%�m_>�=��f�v�a��biO���b�@��i@�)�� �1��iX-�ٶ�/��=!Zq�;�o��]�+?��>���D�������\��w���"�V�,n��?��8���/�u����{{Qd�����|�F5�ɟ'��9���^L�w%�j<䬼�@��忎+а��L`� ���z!��F^x��{Q>�Փ0C��
�ն�C�83�Q*R�l�ܸU�1����1Kob״�	]���D��c]RV����QwF�vV��Ү��W5�Vj�ɧ> �LTuHȫ㪁����y�N��fM"��T�s��{�<����{���>I ��a�_�s�A���XE�އ㋘(���l�f��J�tF�wx�ǐH%�DXI����G\�����(�Զ��҉͕$���F��Y�t���B��>M%��j[M�&�PR٪QuVE��K��5�0_u&�N���"�JIB8.ۀ�������Rs@�d�$4Ew{h�:�z�����zsӏ�4���ZΘ0�,G��X�'qE]�@B��w�\�� �W��`Uz�&�ѲWͼ���G$��	�e���@�A��;���X@�w��xy�*!V��'��ޥA��4U���a��\\Rzr���0R�2_��#V��3	��2f�X|�Ҕ��ml�.�v�$�꽟vK����G.�|�Z�c�X�)�F�o�W9�5�#����m�ۤ��xK#`�#�f�L�>r>%Z{U��mS��6%��VR��|'�|=*cl��l�k��༽��T���_�d����u��������@Q���#��v�n���wՋ�������P�@���8]�m������            x������ � �      �   �  x�m�Mn1���)|�L)R�H�t�U�U�B?��6;�'@NT�
�� �I�q�t!���O�ɓ{��.o�ӳ����l�y\#@�^���~��������k���%W���R��+j��9���,eƖC�XE[��! _A�BYzX����ͳw�+vt��~����ю���򸼵�;�k|im���3�g����,�	���J.b�7CQ�ĩrפ�}��"�Q��G+�NШq�W�t~	i�a�8D!����f���ێ;m���".��X����	�U$5f�Z��J�f]u��U�' D�)��=j��@�,\��Я �"�G���T��|�2����;��0�~=M���i:=	=�u?�k��4ΐ��rJc ђ�țE_�K1�!��K���ȧ��<���Do�����^��p7,��ĥ�      �      x������ � �      �   =   x�mʱ�0���"��#�g��sDJ����4�͘9�F��:�'��
��3�͠�� ^��
     