--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: guilds; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.guilds (
    id integer NOT NULL,
    name character varying(16) NOT NULL,
    icon integer DEFAULT 0,
    owner_id integer NOT NULL,
    save_chat boolean DEFAULT true NOT NULL
);


ALTER TABLE public.guilds OWNER TO postgres;

--
-- Name: guilds_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.guilds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.guilds_id_seq OWNER TO postgres;

--
-- Name: guilds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.guilds_id_seq OWNED BY public.guilds.id;


--
-- Name: invites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invites (
    invite character varying(10) NOT NULL,
    guild_id integer NOT NULL
);


ALTER TABLE public.invites OWNER TO postgres;

--
-- Name: messages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.messages (
    id integer NOT NULL,
    content character varying(1024) NOT NULL,
    user_id integer NOT NULL,
    guild_id integer NOT NULL,
    "time" bigint NOT NULL,
    edited boolean DEFAULT false NOT NULL
);


ALTER TABLE public.messages OWNER TO postgres;

--
-- Name: messages_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.messages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.messages_id_seq OWNER TO postgres;

--
-- Name: messages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.messages_id_seq OWNED BY public.messages.id;


--
-- Name: tokens; Type: TABLE; Schema: public; Owner: oliver
--

CREATE TABLE public.tokens (
    token character varying(32) NOT NULL,
    token_expires bigint NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.tokens OWNER TO oliver;

--
-- Name: userguilds; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.userguilds (
    guild_id integer NOT NULL,
    user_id integer NOT NULL,
    banned boolean DEFAULT false NOT NULL
);


ALTER TABLE public.userguilds OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    email character varying(128) NOT NULL,
    password character varying(64) NOT NULL,
    username character varying(32)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: guilds id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guilds ALTER COLUMN id SET DEFAULT nextval('public.guilds_id_seq'::regclass);


--
-- Name: messages id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messages ALTER COLUMN id SET DEFAULT nextval('public.messages_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: guilds; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.guilds (id, name, icon, owner_id, save_chat) FROM stdin;
5	Something else	0	7	t
8	Pizza yum	0	7	t
7	Cool Chat	0	1	t
14	sadass	0	6	t
12	Happy day	0	6	t
15	My own chat	0	13	t
16	Cool kids chat	0	14	t
17	coolass	0	14	t
\.


--
-- Data for Name: invites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.invites (invite, guild_id) FROM stdin;
QNJTQzPXxe	7
SV4Zzoa2AE	8
Gbhbvrhnlb	7
SbamXlZbpR	15
So0Qj7sypM	16
s8ZFSuSgjm	16
OSkyMh0bPF	16
FWxbJiKXCn	16
6fCZR7tZHW	16
t53SNBKLVf	16
bRgoNWOM0Y	16
mRI1j5h2Ej	16
07DBpiPbaN	16
NL4OczekUS	16
MqObV8g1Yu	17
eFhZGqZjK3	17
qTQ5nqNiJf	8
qzgxCZxtHg	8
coZ3pzcTSD	8
hymrX3bEHX	8
NhskPDeLcQ	8
dCwRPnux40	8
7GkTrShon8	8
mlsk4EV2sP	8
KPPmqq6YcO	8
\.


--
-- Data for Name: messages; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.messages (id, content, user_id, guild_id, "time", edited) FROM stdin;
865	asdsad	14	7	1661512609787	f
866	aasdasdasdsa	14	7	1661512611866	f
868	dasd	14	7	1661513110475	f
869	asd	14	7	1661513110942	f
870	sdsdf	14	7	1661513154576	f
871	sd	14	7	1661513154762	f
872	f\nsd	14	7	1661513154939	f
873	f	14	7	1661513155115	f
874	sd\nf	14	7	1661513155273	f
875	Testing	14	7	1661513166819	f
876	Somebody once told me	14	7	1661513342957	f
877	the world was gonna roll me	14	7	1661513347604	f
878	I ain't the sharpest tool in the shed	14	7	1661513353184	f
880	with a finger and a thumb	14	7	1661513361782	f
881	and a shape of an L on her forehead	14	7	1661513371222	f
882	she was	14	7	1661513396702	f
883	sha \na	14	7	1661513402354	f
885	as	14	7	1661513994320	f
886	a	14	7	1661514015998	f
887	sdsd	14	7	1661514020455	f
888	asdasdasdsfsdfgsfdg	14	7	1661514024344	f
879	she was looking kinda dumb	14	7	1661513357673	t
890	Hello	1	7	1661515596012	f
891	Yo what doing	15	7	1661515601017	f
892	idk nothing much	14	7	1661515605589	f
893	dang	1	7	1661515609080	f
894	Hi im new	3	7	1661515611955	f
895	nice	15	7	1661515621432	t
896	banned for being nice	14	7	1661515638055	f
897	sasd	3	7	1661515747607	f
898	Lmao u got banned	13	7	1661515753573	f
899	nah ur kicked now	1	7	1661515759256	f
900	well im back	13	7	1661515789635	f
901	Hi	1	7	1661515838019	f
902	asdasd	1	7	1661515839125	f
903	a	14	7	1661515868841	f
918	dsadsad	14	7	1662446083946	f
919	fuck	14	7	1662446085213	t
920	asd	14	7	1662447659486	f
923	asdasd	14	17	1662453515959	f
924	Bruh	14	16	1662877637801	f
925	BRUAHdjskla	14	16	1662877657466	f
926	asd	14	16	1662877706543	f
952	asd	6	12	1664951456350	f
953	a	6	12	1664951458699	f
954	sda	6	12	1664951459499	f
294	sdf	1	8	1660198492716	f
276	fuck you bitch	7	8	1659911830098	f
296	fs\nd	1	8	1660198493025	f
298	sd	1	8	1660198493282	f
854	basdasd	14	7	1661461943141	t
856	asd	14	7	1661462234400	f
858	Bruh wdym	14	7	1661462278869	f
859	what doin?! Bruh	14	16	1661462465618	t
860	asdsa	14	16	1661508324424	f
861	bruh	14	16	1661508327091	f
862	asdas	14	7	1661508512298	f
863	a	14	7	1661512100274	f
864	asdasd	14	7	1661512101016	f
867	asdsa	14	7	1661512929597	f
884	asdas\nd	14	7	1661513900300	f
889	as	3	7	1661515517563	f
921	s\ns	14	7	1662452193535	f
922	s	14	7	1662452195656	f
927	Bruh	14	16	1662877811606	f
928	Bruh	14	16	1662877821956	f
929	Bruh momento	14	16	1662877856185	f
930	asdsa	14	16	1662877878399	f
931	asfsdfsdfgsfdgf	14	16	1662877883286	f
935	Sample text	14	17	1662884232880	f
936	"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"	14	17	1662884264527	f
937	"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"	14	17	1662884266207	f
938	"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"	14	17	1662884266718	f
939	"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"	14	17	1662884267166	f
940	Testing	14	16	1662884319485	f
941	Test	14	16	1662904696839	f
942	Bruh123asdasdsa	14	16	1662904699046	t
943	Yo what doing	14	16	1662905558364	f
947	asdas	14	16	1662976991959	f
955	a	16	7	1664965185668	f
956	d	16	7	1664965186854	f
957	b	16	7	1664965187734	f
958	d	16	7	1664965188902	f
959	e	16	7	1664965189895	f
960	f	16	7	1664965190716	f
961	g	16	7	1664965191366	f
962	h	16	7	1664965192003	f
963	i	16	7	1664965192832	f
964	j	16	7	1664965193638	f
965	k	16	7	1664965195078	f
966	l	16	7	1664965195719	f
967	m	16	7	1664965196374	f
968	o	16	7	1664965198262	f
969	p	16	7	1664965198967	f
904	asd'	14	7	1661517586437	f
905	s	14	7	1661517586945	f
906	asdsa	2	7	1661517632212	f
907	asdsa	14	7	1661517635156	f
908	asdsa	14	7	1661517635896	f
909	d	14	7	1661517636513	f
910	d	14	7	1661517636882	f
911	d	14	7	1661517637247	f
912	a	14	7	1661517650838	f
913	a	14	7	1661517651586	f
914	asdasd	14	7	1661517980849	f
933	asfsjfnjksdf	14	17	1662879376739	f
944	Test	14	16	1662973264107	f
945	asdasdsadasd	14	16	1662973266448	f
946	asdsad	14	16	1662973272309	f
948	asd	14	16	1662986358701	f
970	Bruh	6	12	1665006805988	f
971	Abc	6	12	1665006808485	f
256	d\nas	7	5	1659674987174	f
915	asd	14	7	1661521728116	f
916	sad	14	7	1661553224810	f
917	asdsadsad	14	7	1661553227253	f
949	Hello	16	7	1663073267260	f
698	sssssssssss	6	12	1660913709533	f
950	aasdasd	16	7	1663075047765	f
300	f	1	8	1660198493537	f
277	No you	1	8	1659911834539	f
302	fsdf\ns	1	8	1660198494018	f
304	sd	1	8	1660198494260	f
306	s\nd	1	8	1660198494496	f
308	sd	1	8	1660198494753	f
310	sd\ng	1	8	1660198495025	f
312	h	1	8	1660198495282	f
314	f\ngd	1	8	1660198495682	f
316	fgd	1	8	1660198495970	f
318	fd	1	8	1660198496243	f
320	fghd\nj	1	8	1660198496514	f
322	j	1	8	1660198496801	f
324	j	1	8	1660198497060	f
326	g	1	8	1660198497508	f
328	g\nh	1	8	1660198497766	f
149	asdas\\	1	7	1659668731997	f
150	asd\nas	1	7	1659668732532	f
151	d\nas	1	7	1659668732704	f
152	d\na	1	7	1659668732866	f
153	sd	1	7	1659668733011	f
154	a	1	7	1659669389350	f
155	asdasd	1	7	1659669598422	f
156	asd	1	7	1659669598995	f
330	d	1	8	1660198498066	f
332	h\nd	1	8	1660198498482	f
334	g\nfh	1	8	1660198498913	f
336	h\nj	1	8	1660198499185	f
338	j	1	8	1660198499508	f
340	sfd\ng	1	8	1660198500929	f
236	a	1	8	1659674232875	f
237	a	1	8	1659674233166	f
238	a	1	8	1659674233317	f
342	sfd	1	8	1660198501377	f
344	sd\nf	1	8	1660198501683	f
346	f\ng	1	8	1660198501953	f
348	f\ng	1	8	1660198502225	f
350	g	1	8	1660198502498	f
352	g	1	8	1660198502753	f
354	fd	1	8	1660198503041	f
356	fd\nh	1	8	1660198503313	f
358	jh	1	8	1660198503603	f
360	j\nf	1	8	1660198503873	f
362	j	1	8	1660198504323	f
364	jfdgksiodagomndsfjgodngsdfh\nsd	1	8	1660198505826	f
366	sfdg	1	8	1660198506097	f
368	sad	1	8	1660198506563	f
370	sd\nf	1	8	1660198506817	f
372	sfd	1	8	1660198507107	f
374	dsf	1	8	1660198507361	f
376	sfd	1	8	1660198507635	f
378	sdfh	1	8	1660198507973	f
380	fdg\nj	1	8	1660198508466	f
382	dgj	1	8	1660198508754	f
384	j	1	8	1660198509061	f
386	jh	1	8	1660198509362	f
388	d\nfg	1	8	1660198509681	f
390	fgd\nh	1	8	1660198510002	f
392	g\nh	1	8	1660198510274	f
394	g\nh	1	8	1660198510545	f
396	sd\ng	1	8	1660198511891	f
398	f\ng	1	8	1660198512208	f
400	g	1	8	1660198512498	f
402	g\nsd	1	8	1660198512803	f
404	sdf	1	8	1660198513110	f
406	sfd	1	8	1660198513361	f
408	s\nd	1	8	1660198513625	f
410	sd\nfg	1	8	1660198513890	f
412	sdfsdfsd	1	8	1660205466041	f
416	s	1	7	1660225189811	f
417	asdasd	1	7	1660225211648	f
418	asdasd	1	7	1660225213137	f
420	a	1	7	1660565248138	f
422	Well howdy there!	1	7	1660565386485	f
425	sadas	1	7	1660565538279	f
426	asdasdasdasdasd	1	7	1660565564468	f
428	a	1	7	1660571942466	f
430	s	1	7	1660572494242	f
431	d	1	7	1660572569762	f
433	dasdasd	1	7	1660572675742	f
434	asdasdsad	1	7	1660572756809	f
436	asdasd	1	7	1660572828206	f
438	asdasd	1	7	1660572854008	f
439	asdasd	1	7	1660573127916	f
442	asdasd	1	7	1660573507410	f
446	Bruh momento	1	7	1660573648909	f
450	asd	6	7	1660628778445	f
455	Abc	6	7	1660630643504	f
457	sa\nd	6	7	1660630785631	f
459	d	6	7	1660630785973	f
461	sa	6	7	1660630786238	f
463	sa	6	7	1660630786527	f
465	sa\nd	6	7	1660630786782	f
467	s\nd	6	7	1660630787022	f
469	a\ns	6	7	1660630787421	f
471	a\ns	6	7	1660630787693	f
473	as	6	7	1660630787935	f
475	as	6	7	1660630788206	f
477	sa\nd	6	7	1660630788462	f
479	s\nd	6	7	1660630788703	f
481	d	6	7	1660630788958	f
483	d	6	7	1660630789184	f
485	d	6	7	1660630789424	f
487	d	6	7	1660630789662	f
489	as	6	7	1660630790030	f
491	s	6	7	1660630790302	f
493	s\nd	6	7	1660630790577	f
495	s\nd	6	7	1660630790814	f
497	d	6	7	1660630791053	f
499	d	6	7	1660630791358	f
501	a	6	7	1660630791551	f
503	sa	6	7	1660630791742	f
505	d	6	7	1660630792015	f
507	s\nd	6	7	1660630792207	f
509	d	6	7	1660630792478	f
511	d	6	7	1660630792655	f
513	d	6	7	1660630792846	f
515	d	6	7	1660630793118	f
517	d	6	7	1660630793310	f
519	d	6	7	1660630793518	f
521	f	6	7	1660630793725	f
523	sfdg	6	7	1660630794720	f
525	g	6	7	1660630794904	f
527	f\ng	6	7	1660630795109	f
531	g	6	7	1660630795626	f
533	g	6	7	1660630795798	f
535	fg	6	7	1660630795984	f
537	g	6	7	1660630796269	f
539	sdf	6	7	1660630796654	f
541	df\nsg	6	7	1660630796945	f
543	sd	6	7	1660630797229	f
545	sdf	6	7	1660630797572	f
547	sd\nf	6	7	1660630797711	f
549	sd	6	7	1660630797936	f
553	g	6	7	1660630798350	f
555	sfd	6	7	1660630798654	f
571	asdsad	6	7	1660634496509	f
574	asdasd	6	7	1660637490405	f
575	asdasd	6	7	1660637530861	f
239	a	1	8	1659674233457	f
240	a	1	8	1659674233597	f
241	a	1	8	1659674233752	f
295	sd	1	8	1660198492870	f
297	f	1	8	1660198493169	f
299	f\nsd	1	8	1660198493413	f
227	asdasdasdsdfkjdfkgn	1	7	1659673890524	f
301	sd	1	8	1660198493648	f
303	d\nf	1	8	1660198494130	f
230	aaa	1	8	1659674228741	f
231	Testing 123	1	8	1659674231325	f
232	aa\na	1	8	1659674232231	f
233	a	1	8	1659674232413	f
234	a	1	8	1659674232571	f
235	a	1	8	1659674232728	f
121	Yo whattup	1	5	1659489984141	f
122	ur mother	7	5	1659489986624	f
140	hi	1	5	1659581548405	f
142	test	1	5	1659581825424	f
143	a	7	5	1659582285781	f
144	a	7	5	1659582286421	f
145	a\na	7	5	1659582286804	f
305	f	1	8	1660198494386	f
307	f	1	8	1660198494625	f
309	f	1	8	1660198494883	f
311	d	1	8	1660198495154	f
313	fdgh	1	8	1660198495571	f
315	h	1	8	1660198495825	f
317	h	1	8	1660198496097	f
319	j	1	8	1660198496397	f
321	ghf	1	8	1660198496658	f
323	fg	1	8	1660198496929	f
325	gs	1	8	1660198497346	f
327	d\nf	1	8	1660198497634	f
329	fd\ng	1	8	1660198497924	f
331	f\ng	1	8	1660198498192	f
333	f\nj	1	8	1660198498610	f
335	jf\ng	1	8	1660198499041	f
337	f\ngh	1	8	1660198499328	f
339	dfvgodskgijisfdngnsfdgsfd\ng	1	8	1660198500808	f
242	a	1	8	1659674233887	f
243	asflksngjkdngkjndfjkndfkjgdf\ng	7	8	1659674236330	f
244	d\nf	7	8	1659674236481	f
245	g\nf	7	8	1659674236627	f
246	d\ng	7	8	1659674236756	f
247	fd	7	8	1659674236890	f
248	g\ndf	7	8	1659674237022	f
249	g\nd	7	8	1659674237155	f
250	g	7	8	1659674237291	f
251	d	7	8	1659674237443	f
252	g\ndf	7	8	1659674237581	f
253	g	7	8	1659674237721	f
254	dasdsa	7	5	1659674986468	f
255	asd\nas	7	5	1659674987018	f
341	sdf\ng	1	8	1660198501234	f
343	g	1	8	1660198501525	f
345	g\nsd	1	8	1660198501826	f
347	sd	1	8	1660198502097	f
349	df	1	8	1660198502353	f
351	df	1	8	1660198502640	f
353	df\ng	1	8	1660198502901	f
355	g	1	8	1660198503172	f
357	f\ng	1	8	1660198503457	f
359	fgd	1	8	1660198503729	f
361	ghj\nfgh	1	8	1660198504161	f
363	fgh	1	8	1660198504500	f
365	fgh	1	8	1660198505955	f
367	dfs\ng	1	8	1660198506403	f
369	fg	1	8	1660198506705	f
371	g	1	8	1660198506962	f
373	g	1	8	1660198507233	f
375	g	1	8	1660198507506	f
377	g	1	8	1660198507793	f
379	sfg\nj	1	8	1660198508130	f
381	f	1	8	1660198508592	f
383	df\ng	1	8	1660198508897	f
385	fgd	1	8	1660198509218	f
387	gh	1	8	1660198509521	f
389	h	1	8	1660198509840	f
391	fd	1	8	1660198510144	f
393	fd	1	8	1660198510401	f
395	sgsfpgjisngjmsfdg	1	8	1660198511732	f
397	sd	1	8	1660198512048	f
399	sd\nf	1	8	1660198512353	f
401	sd\nf	1	8	1660198512659	f
403	f\ng	1	8	1660198512946	f
405	g	1	8	1660198513217	f
407	g	1	8	1660198513489	f
409	fg	1	8	1660198513745	f
414	a	1	7	1660225109315	f
419	asdasd	1	7	1660225265898	f
448	asdasdas	1	7	1660628381700	f
559	dasdasd	6	7	1660631268485	f
561	aa	6	7	1660631298049	f
565	🥰	6	7	1660632191116	f
567	s	6	7	1660632314000	f
569	asdasdsa	6	7	1660632757880	f
572	sdf	6	7	1660636948661	f
579	asd	6	7	1660637671836	f
582	asd	6	7	1660638177397	f
596	B	3	12	1660735755535	f
598	how are you?	3	12	1660735760627	f
600	asdasd	3	12	1660735772687	f
602	🤑	3	12	1660735791777	f
604	🤑	3	12	1660735792799	f
610	s	6	7	1660824460377	f
611	asd	6	7	1660827296472	f
613	s	6	12	1660831742165	f
616	a	6	7	1660859217421	f
619	Bruh	6	12	1660860519007	f
622	aaaaa	6	14	1660891988126	f
623	asdsad	6	14	1660892508973	f
626	aaa	6	14	1660893093786	f
628	aa	6	14	1660893129488	f
629	asdasdasd	6	14	1660893151133	f
631	asdsad	6	7	1660893682204	f
632	asdasd	6	14	1660893686670	f
634	sd\na	6	14	1660893688150	f
636	as\nd	6	14	1660893688471	f
637	Hi	6	7	1660893842319	f
639	a	6	7	1660894059995	f
641	sadasd	6	14	1660899467468	f
643	a	6	7	1660900829921	f
644	asdasd	6	14	1660900865747	f
646	asdasda	6	7	1660901154504	f
647	asdasda	6	14	1660901159155	f
649	sda\nF	6	14	1660901162480	f
651	f	6	14	1660901162687	f
652	sd\nf	6	14	1660901165800	f
656	asd	6	12	1660901209463	f
657	asda	6	7	1660901299535	f
660	asdasd	6	12	1660901696066	f
662	a	6	14	1660901744114	f
664	dasdsadas	6	14	1660901781665	f
667	asdasd	6	14	1660901852075	f
670	asdasd	6	7	1660901945191	f
672	aaaasdsad	6	7	1660911155768	f
673	abs	6	7	1660911163658	f
675	a	6	7	1660911988494	f
676	Abc	6	14	1660912010867	f
679	Bruh momento	6	7	1660912479777	f
680	Hi!	6	14	1660912484635	f
686	aaaaaaaaa	6	7	1660912814412	f
687	This is other guy talking	3	7	1660912901090	f
257	d	7	5	1659674987314	f
258	as\nd	7	5	1659674987470	f
259	a	7	5	1659674987607	f
260	sd	7	5	1659674987744	f
261	as	7	5	1659674987887	f
293	Testing	1	7	1660196197544	f
263	a	1	8	1659675315201	f
264	Hello!	7	8	1659675321398	f
265	bruh	7	8	1659675323560	f
266	WHat	1	8	1659675325932	f
267	a	1	8	1659675352794	f
268	abc123	7	8	1659675355882	f
411	sd	1	8	1660205464575	f
413	a	1	8	1660221631160	f
415	asdsad	1	7	1660225145841	f
423	hi	1	7	1660565513533	f
424	Hello!	6	7	1660565523685	f
427	aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa	1	7	1660565569153	f
429	a	1	7	1660572467580	f
432	asdasd	1	7	1660572672682	f
435	sadas	1	7	1660572758435	f
437	aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa	1	7	1660572832149	f
440	a	1	7	1660573240013	f
441	s	1	7	1660573461287	f
443	sfdfsd	1	7	1660573516657	f
444	l	1	7	1660573551008	f
445	asdasd	1	7	1660573619238	f
447	Lmao	1	7	1660573652708	f
451	asd	6	7	1660628790336	f
453	asdasd	6	7	1660628794362	f
454	aaa	6	7	1660630640990	f
456	asdasd	6	7	1660630785447	f
458	sa	6	7	1660630785790	f
460	sa\nd	6	7	1660630786094	f
462	d	6	7	1660630786384	f
464	d	6	7	1660630786655	f
466	a	6	7	1660630786910	f
468	sa\nd	6	7	1660630787278	f
470	d	6	7	1660630787552	f
472	d	6	7	1660630787806	f
474	d	6	7	1660630788077	f
476	d	6	7	1660630788352	f
478	a	6	7	1660630788574	f
480	as	6	7	1660630788831	f
482	a\ns	6	7	1660630789069	f
484	as	6	7	1660630789293	f
486	as	6	7	1660630789536	f
488	asd	6	7	1660630789904	f
490	d\na	6	7	1660630790174	f
492	d\na	6	7	1660630790432	f
494	a	6	7	1660630790687	f
496	a\ns	6	7	1660630790926	f
498	a\ns	6	7	1660630791181	f
500	sa\nd	6	7	1660630791456	f
502	s\nd	6	7	1660630791646	f
504	d\nsa	6	7	1660630791919	f
506	a	6	7	1660630792109	f
508	sa	6	7	1660630792383	f
510	sa	6	7	1660630792574	f
512	sa	6	7	1660630792758	f
514	sa	6	7	1660630793022	f
516	sa	6	7	1660630793230	f
518	sa	6	7	1660630793422	f
520	sa	6	7	1660630793615	f
522	dafsgsdfgfdsgh	6	7	1660630794494	f
524	df\ns	6	7	1660630794801	f
526	sd	6	7	1660630795007	f
528	sdf	6	7	1660630795295	f
532	sdf	6	7	1660630795678	f
534	sd	6	7	1660630795888	f
536	sdf	6	7	1660630796174	f
538	sdf\ng	6	7	1660630796445	f
540	g	6	7	1660630796766	f
542	s\ndg	6	7	1660630797120	f
544	f\ng	6	7	1660630797344	f
546	g	6	7	1660630797614	f
548	g	6	7	1660630797806	f
550	f	6	7	1660630798031	f
552	sfd	6	7	1660630798237	f
556	g	6	7	1660630798766	f
558	df\ng	6	7	1660630798958	f
560	Brah	6	7	1660631294907	f
562	asda sda sdas da sd	6	7	1660631628658	f
564	🥰	6	7	1660632190569	f
573	sddsf	6	7	1660636966380	f
580	abc	6	7	1660638026398	f
594	Hi!	3	12	1660735747294	f
595	a	3	12	1660735751266	f
597	Hi	3	12	1660735757491	f
601	asdasdsad	3	12	1660735774299	f
603	🤑	3	12	1660735792477	f
605	🤑	3	12	1660735793037	f
607	hi	3	12	1660735863918	f
614	a	6	7	1660858901137	f
615	a	6	7	1660859214884	f
617	asdas	6	7	1660859218990	f
618	Bruh	6	12	1660859836339	f
620	Test	6	7	1660860639406	f
621	Test	6	14	1660891980393	f
624	aaa	6	7	1660892514135	f
625	asdasd	6	14	1660893084189	f
627	asdasd	6	12	1660893101391	f
630	aaa	6	14	1660893346594	f
633	asdsad\na	6	14	1660893687979	f
635	sd	6	14	1660893688310	f
638	B	6	7	1660893968278	f
640	asdasd	6	12	1660894678235	f
642	Bruh	6	7	1660899503440	f
645	asdsad	6	14	1660901004007	f
648	sdfsdafsda\nf	6	14	1660901162373	f
650	sd	6	14	1660901162575	f
653	f\nsd	6	14	1660901165802	f
654	asdasd	6	14	1660901189550	f
655	asd	6	14	1660901190239	f
658	a	6	7	1660901532820	f
659	asdasd	6	12	1660901583874	f
661	Test	6	7	1660901738838	f
663	asdasdasd	6	14	1660901779171	f
665	b	6	14	1660901788623	f
666	asdasd	6	7	1660901848144	f
668	aaa	6	12	1660901857314	f
669	aaaaaaaaaaa	6	7	1660901935899	f
671	sds	6	14	1660911043824	f
674	HELLO	6	7	1660911188359	f
677	abc	6	7	1660912056058	f
678	asdasd	6	14	1660912060025	f
681	asdasdsad	6	7	1660912666088	f
682	asdasdsad	6	14	1660912669865	f
683	sfdgsfdgsfdg	6	14	1660912671922	f
684	dasdadwadwdwa	6	7	1660912679920	f
685	dwadsdwdasd	6	14	1660912685504	f
688	Bruh u bussin	1	7	1660912931392	f
689	banned	1	7	1660912934139	f
690	lmao	1	7	1660912945571	f
691	kid get a life	1	7	1660912948673	f
692	bruh u bussin	6	7	1660912952947	f
693	banned for bussin	1	7	1660912958478	f
694	HI i am unbanned	6	7	1660912981272	f
695	bruh	1	7	1660912983966	f
696	hi	6	12	1660913017005	f
699	l	6	14	1660914175144	f
700	b	6	14	1660914672465	f
701	asdasd	6	12	1660915180977	f
702	a	6	12	1660915507336	f
703	a	6	12	1660915515208	f
704	s	6	12	1660915560350	f
705	a	6	12	1660915568761	f
706	asda	6	12	1660915889772	f
707	asd	6	12	1660915954759	f
708	asd	6	12	1660916303417	f
709	Ba	6	12	1660916316569	f
710	ba	6	12	1660916320949	f
711	ba	6	12	1660916325360	f
712	ba	6	12	1660916331269	f
713	Ba	6	12	1660916362422	f
714	ba	6	12	1660916367222	f
715	ba	6	12	1660916374423	f
716	asdasd	6	12	1660916453623	f
717	asdasdsad	6	12	1660916472831	f
718	Bruh	6	12	1660916482425	f
719	M	6	12	1660916508822	f
720	MA	6	12	1660916518436	f
721	asdasd	6	12	1660916573631	f
722	aaaaaaaaaaaaaaaaaaaaaaaa	6	12	1660916588037	f
723	aaaaaaaaaaaaaaa	6	12	1660916604832	f
724	aaaaaaaaaaaaaaaaaaaaaa	6	12	1660916616829	f
725	dsfsd	6	12	1660916629077	f
726	aaaaaaaaaaaaaa	6	12	1660916635473	f
727	aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa	6	12	1660916645081	f
728	Bruh momento	6	12	1660916659477	f
729	sadasdas\nd	6	12	1660916695471	f
730	asd	6	12	1660916697880	f
731	as	6	12	1660916700276	f
732	d	6	12	1660916702679	f
733	asd	6	12	1660916719484	f
734	as\nd	6	12	1660916721870	f
735	a\ns	6	12	1660916724282	f
736	d	6	12	1660916726668	f
737	as	6	12	1660916729072	f
738	d	6	12	1660916731483	f
739	sad	6	12	1660916762674	f
740	sadasd	6	12	1660916765085	f
741	sa\nd	6	12	1660916767468	f
742	as	6	12	1660916769868	f
743	asdas	6	12	1660916879093	f
744	asd	6	12	1660916879760	f
745	sad	6	12	1660916880528	f
746	sad	6	12	1660916881264	f
747	as\nd	6	12	1660916881697	f
748	as	6	12	1660916881882	f
749	d	6	12	1660916882031	f
750	s	6	12	1660916882200	f
751	d	6	12	1660916882377	f
752	a\ns	6	12	1660916882529	f
753	d	6	12	1660916882686	f
754	asd	6	12	1660916893797	f
755	sd\na	6	12	1660916896209	f
756	sd	6	12	1660916898598	f
757	asdasd	6	12	1660916937387	f
758	asd	6	12	1660916938849	f
759	a	6	12	1660916940099	f
760	a	6	12	1660916940306	f
761	a	6	12	1660916940480	f
762	a	6	12	1660916940647	f
763	a	6	12	1660916940975	f
764	a	6	12	1660916941134	f
765	asd	6	12	1660916988345	f
766	sa	6	12	1660916988549	f
767	d\na	6	12	1660916988755	f
768	s\nd	6	12	1660916988913	f
769	as	6	12	1660916989071	f
770	d	6	12	1660916989249	f
771	a\ns	6	12	1660916989423	f
772	d	6	12	1660916989618	f
773	a\ns	6	12	1660916989811	f
774	d	6	12	1660916990017	f
775	adsd	6	12	1660916994236	f
776	sa\nd	6	12	1660916994516	f
777	sa	6	12	1660916994687	f
778	d	6	12	1660916994850	f
779	as	6	12	1660916995010	f
780	d	6	12	1660916995194	f
781	as	6	12	1660916995379	f
782	d\na	6	12	1660916995552	f
783	s\nd	6	12	1660916995729	f
784	as	6	12	1660916995905	f
785	d	6	12	1660916996079	f
786	as	6	12	1660916996252	f
787	d	6	12	1660916996404	f
788	as	6	12	1660916996575	f
789	dasd	6	12	1660917005014	f
790	sad	6	12	1660917005375	f
791	asd	6	12	1660917005884	f
792	as\nd	6	12	1660917006197	f
793	a	6	12	1660917267028	f
794	asdas	6	12	1660917573187	f
795	aasdsa	6	12	1660917577230	f
796	b	6	12	1660917584342	f
797	c	6	12	1660917585176	f
798	a	6	12	1660917585874	f
799	e	6	12	1660917587348	f
800	BRUH	6	12	1660917590402	f
801	a	6	12	1660917601900	f
802	asdasd	6	12	1660918123446	f
803	asdsadsa	6	12	1660918398154	f
804	Bruh momento	6	12	1660918402398	f
805	a	6	12	1660918404959	f
806	asdas	6	12	1660918405996	f
807	sa\nd	6	12	1660918406475	f
808	as	6	12	1660918406651	f
809	d	6	12	1660918406828	f
810	Tst	6	12	1660951596543	f
811	a\\\\	6	12	1660951640373	f
812	sdfsdf	6	12	1660953099680	f
813	a	6	12	1660954145791	f
814	asdas	6	12	1660954191482	f
815	Bruh	6	14	1660954241983	f
816	sadasdasdsa	6	14	1660956365159	f
817	Bruh	6	14	1660956366953	f
822	sadas	13	7	1661411406732	f
824	asdsadasd	13	15	1661428983279	f
825	asdas	13	15	1661429042877	f
826	aaa	13	15	1661429044924	f
827	asdasd	13	15	1661429048354	f
830	a	13	7	1661430306962	f
831	a	13	7	1661430307502	f
832	b	13	7	1661430310377	f
833	b	13	7	1661430310752	f
834	a	13	7	1661430375621	f
835	a	13	7	1661430376129	f
836	asdasd	13	7	1661430499447	f
837	sad\nas	13	7	1661430499807	f
838	d	13	7	1661430500063	f
839	a	13	7	1661430517573	f
840	a	13	7	1661430611192	f
841	a	13	7	1661430612146	f
842	asd	13	7	1661430612863	f
843	as\nd	13	7	1661430613198	f
844	as	13	7	1661430613404	f
845	bruhmomentoasdsadsad\nasdasd	13	7	1661431038651	f
848	aaaa	13	7	1661432717898	f
849	aaaaasdasdasdsadasasdasdaaaaaaasdasdsad	13	7	1661432779441	f
847	asdasds	13	7	1661432564264	f
850	aBc man what do you mean?	3	7	1661433127554	f
851	a	13	7	1661434868891	f
951	q	16	7	1663076585185	f
\.


--
-- Data for Name: tokens; Type: TABLE DATA; Schema: public; Owner: oliver
--

COPY public.tokens (token, token_expires, user_id) FROM stdin;
ygsidhui123nr	32798472893742392	2
WSXej4GvI8PYNLpC	1660973344892	5
0SsNZEZfg1Pf8cB7	1660973656491	7
40w5qeLJSzjiW8Nz	1660973831287	8
F0YwkiRajXTIHL4y	1660973957333	9
ZDtZmEOFUNii8304	1660974078101	10
PevW7oZL5uBw9INn	1660974219372	11
n0bUEA8rjFPGO2WO	1661315233829	12
buPKbM2NIIYL737K	1665919728500	3
MShra4csLRID475J	1666590726498	13
yvo0zITgHabmXZ4A	1666591947027	14
ibDbreR33o1bfwBp	1666699559256	1
paCleYfIc1G3W6L9	1666699579883	15
I68QxwXbUBQ86uf6	1668256764876	16
Wzy5HVeS1HOW9Pl6	1670132939359	6
\.


--
-- Data for Name: userguilds; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.userguilds (guild_id, user_id, banned) FROM stdin;
5	7	f
5	1	t
7	1	f
8	7	f
12	6	f
14	6	f
15	13	f
16	14	f
7	15	t
7	13	f
7	3	f
7	2	f
17	14	f
7	16	f
8	16	f
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, email, password, username) FROM stdin;
2		a476ac3a1acc0bc519eae5ab3f0f0b9a8f0ed5836e5b8e049ce0db190a03eea0	opo
4	asianchinaboi@gmail.com	feee30113195d95c1542cf78adbe0499ea796e1ac8a16ec6cf9752e3957f26c4	bruhmemorya
5	asianchinaboi@gmail.com	87fea3649f150cc02b5cd1f7d2e749a2682fe12aa2825a965757aee308f43839	bruhmemoryab
7	asdasd@gmail.com	4cb9e197cb5941d671c7597c98096a799e7a95ec6584ad690908971ae0756205	bruhmomento1234
8	bruhurmother@me.com	db23960def56d9f6a2598209449a389b194bf0e95005de7e72ac790130107fb0	phonesomething
9		d9c113a79410e19d7094e3ae4183bc84037ded454c9ceabd3407799c8bbeadd2	bruhurmother
10		320174a3d08748994bf7f3ccb2670df5adf836cb9732191598c2c2496923817a	foobara
11		90e1ed2691ae25ff9dbfad3da7bbd0fe348773e891b3b07cfc031f0ddc50271b	urmotherLOL
12	urmother@urmother.com	0e1d83f6af6a2aeecd518f0fb85f84b8a62aeec1ee3b465258a7aba992017f53	bruhmomento123
1	sussy@me.com	7011af7fa8e993cd145985912921d1aec7668853cab6d503ee56c62cbce6495c	urmotherlmao
3	asianchinaboi@gmail.com	b117cbdb91ccd74207749273a653678734e306b596e54903f06e49ac474cd345	AnewUsername
6	bruhmomento@aaa.com	8300519044819b79502bfc9ff13ae39104b6864ca975b0d4df24a5d20b7ee865	asianchinaboi
13	bruh@me.com	74c104974187cd94a6f21877c7320667f6206f475e6690b1632649d7e23a4c1e	bruhmomento1
15		cd978b3ffa2c336ed3f897537f5df04d0fd9925e5ee02555581b215349ca13c4	carl_jacksonville
14	bruh123@me.com	a32f544866d3447a96f54c4beeac8a25fdcf22cf8faec5c563eb63e15dbd9c7d	anotherusername
16		ac35877cd452ce14efdef56ff5cacdb7d197ce32141fb4724765abfad5b54a52	bruhmomento
\.


--
-- Name: guilds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.guilds_id_seq', 17, true);


--
-- Name: messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.messages_id_seq', 971, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 16, true);


--
-- Name: guilds guilds_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guilds
    ADD CONSTRAINT guilds_pkey PRIMARY KEY (id);


--
-- Name: messages messages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT messages_pkey PRIMARY KEY (id);


--
-- Name: tokens tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: oliver
--

ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_pkey PRIMARY KEY (token);


--
-- Name: tokens tokens_user_id_key; Type: CONSTRAINT; Schema: public; Owner: oliver
--

ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT tokens_user_id_key UNIQUE (user_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: guilds fk_guild_owner; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guilds
    ADD CONSTRAINT fk_guild_owner FOREIGN KEY (owner_id) REFERENCES public.users(id);


--
-- Name: userguilds fk_guild_userguild; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userguilds
    ADD CONSTRAINT fk_guild_userguild FOREIGN KEY (guild_id) REFERENCES public.guilds(id);


--
-- Name: invites fk_invite_guild; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invites
    ADD CONSTRAINT fk_invite_guild FOREIGN KEY (guild_id) REFERENCES public.guilds(id);


--
-- Name: messages fk_message_guild; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT fk_message_guild FOREIGN KEY (guild_id) REFERENCES public.guilds(id);


--
-- Name: messages fk_message_user; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.messages
    ADD CONSTRAINT fk_message_user FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: tokens fk_user_id; Type: FK CONSTRAINT; Schema: public; Owner: oliver
--

ALTER TABLE ONLY public.tokens
    ADD CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: userguilds fk_user_userguild; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.userguilds
    ADD CONSTRAINT fk_user_userguild FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

