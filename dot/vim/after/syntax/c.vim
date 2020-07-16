" Vim syntax file
" Language:	C++ special highlighting for STL classes and methods
" Maintainer:	Nathan Skvirsky
" Last Change:	2006 Oct 22

" C++ extentions
"syn keyword cppSTL		abort abs accumulate acos adjacent_difference adjacent_find adjacent_find_if any append asctime asin assert assign at atan atan2 atexit atof atoi atol auto_ptr back back_inserter bad bad_alloc bad_cast bad_exception bad_typeid badbit beg begin binary_compose binary_negate binary_search bind2nd binder1st binder2nd bitset bsearch c_str calloc capacity ceil cerr cin clear clearerr clock clog close compare compose1 compose2 const_iterator construct copy copy_backward copy_n cos cosh count count_if cout ctime data deque destroy difference_type difftime div divides domain_error empty end endl eof eofbit equal equal_range erase exception exit exp fabs fail failbit failure fclose feof ferror fflush fgetc fgetpos fgets fill fill_n find find_end find_first_not_of find_first_of find_if find_last_not_of find_last_of first flags flip floor flush fmod fopen for_each fprintf fputc fputs fread free freopen frexp front fscanf fseek fsetpos fstream ftell fwrite gcount generate generate_n get get_temporary_buffer getc getchar getenv getline gets gmtime good goodbit greater greater_equal hash_map hash_multimap hash_multiset hash_set ifstream ignore in includes inner_product inplace_merge insert inserter invalid_argument ios ios_base iostate iota is_heap is_open is_sorted isalnum isalpha iscntrl isdigit isgraph islower isprint ispunct isspace istream istream_iterator istringstream isupper isxdigit iter_swap iterator iterator_category key_comp ldiv length length_error less less_equal lexicographical_compare lexicographical_compare_3way list localtime log log10 logic_error logical_and logical_not logical_or longjmp lower_bound make_heap malloc map max max_element max_size mem_fun mem_fun1 mem_fun1_ref mem_fun_ref memchr memcpy memmove memset merge min min_element minus mismatch mktime modf modulus multimap multiplies multiset negate next_permutation npos nth_element numeric_limits ofstream open ostream ostream_iterator ostringstream out_of_range overflow_error pair partial_sort partial_sort_copy partial_sum partition peek perror plus pointer pointer_to_binary_function pointer_to_unary_function pop pop_back pop_front pop_heap pow power precision prev_permutation printf ptr_fun push push_back push_front push_heap put putback putc putchar puts qsort raise rand random_sample random_sample_n random_shuffle range_error rbegin rdbuf rdstate read realloc reference remove remove_copy remove_copy_if remove_if rename rend replace replace_copy replace_copy_if replace_if reserve reset resize return_temporary_buffer reverse reverse_copy reverse_iterator rewind rfind rotate rotate_copy runtime_error scanf search search_n second seekg seekp set set_difference set_intersection set_symmetric_difference set_union setbuf setf setjmp setlocale setvbuf signal sin sinh size size_t size_type sort sort_heap splice sprintf sqrt srand sscanf stable_partition stable_sort std str strcat strchr strcmp strcoll strcpy strcspn strerror strftime string strlen strncat strncmp strncpy strpbrk strrchr strspn strstr strtod strtok strtol strtoul strxfrm substr swap swap_ranges sync_with_stdio system tan tanh tellg tellp temporary_buffer test time time_t tmpfile tmpnam to_string to_ulong tolower top toupper transform unary_compose unary_negate underflow_error unget ungetc uninitialized_copy uninitialized_copy_n uninitialized_fill uninitialized_fill_n unique unique_copy unsetf upper_bound va_arg value_comp value_type vector vfprintf vprintf vsprintf width write sigc

syn keyword cKernel             printk

syn keyword cppType		inline explicit export bool wchar_t
syn match   cppOperator         "\.\|+\||\|&\|,\|:\|\!\|%\|\/[^/*]\|=\|\[\|\]\|(\|)\|->\|-\|*\|,\|;"
syn keyword cppThis		this self s

" Constants
syn keyword cConstant		true false TRUE FALSE
syn keyword zConstant           ENC_LIST_MAX
syn match  zConstant		"\<\(SSH\|ZV\?\|RDP[0-9]\?\|SOCKS\)_[A-Z0-9_]*\>"
syn match  zConstant		"\<ZA_FORMAT_[A-Z0-9]*\>"
syn match  zConstant		"\<ZA_FF_[A-Z_]*\>"
syn match  zConstant		"\<ZA_RECF_[A-Z_]*\>"
syn match  zConstant		"\<ZA_REC_[A-Z_]*\>"
syn match  zConstant		"\<EP_[A-Z0-9_]*\>"
syn match  zConstant		"\<ENC_DIR[A-Z0-9_]*\>"
syn match zConstant             "\<\(CORE\|AUDIT\|SSH\)_[A-Z0-9_]*\>"
syn match  zConstant		"\<ZA_DUMP_[A-Z_]*\>"
syn match  zConstant		"\<ZA_SOURCE_[A-Z_0-9]*\>"
syn match  zConstant            "\<\(T\?FTP\|PLUG\)_[A-Z_]*\>"
syn match  zConstant            "\<ZPF_[A-Z_]*\>"
syn match  zConstant            "\<ZORPLIB[A-Z_]*\>"
syn match  zConstant            "\<CGP_[A-Z_]*\>"
syn match  zConstant            "\<TELNET_[A-Z_]*\>"
syn keyword zConstant           DIMHASH_WILDCARD
syn match  zcvConstant           "\<Z\(CV\|VT\)_[A-Z0-9_]*\>"
syn match  glibConstant		"\<G_[A-Z0-9_]*\>"
syn match  glibConstant		"\<GUINT[A-Z0-9_]*\>"
"syn match  glibConstant		"\<G.*_FROM_[BL]E\>"
syn match  otherConstant	"\<SSH2_[A-Z0-9_]*\>"
syn match  otherConstant	"\<EVP_[A-Z0-9_]*\>"
syn match  otherConstant	"\<X509_\(PURPOSE\|LU\|V_ERR\)_[A-Z0-9_]*\>"
syn match  otherConstant        "\<MAGIC_[A-Z0-9_]*\>"
syn keyword otherConstant       MAX_SOCKADDR_STRING
syn match otherConstant         "\<O_[A-Z]*\>"
syn match otherConstant         "\<MAP_[A-Z]*\>"
syn match otherConstant         "\<PROT_[A-Z]*\>"

syn match kConstant             "\<\(NFT\|KZL\|KZF\|NF\|IP\)_[A-Z0-9_]*\>"

syn match  zConstant		"\<\(ICA\|CITRIX\)_[A-Z0-9_]*\>"
syn match  zConstant            "\<RTS_[A-Z0-9_]*\>"
"TSG proxy
syn match  zConstant            "\<NTLMSSP_[A-Z0-9_]*\>"
syn match  zConstant            "\<\(MS\)\?RPC_[A-Z0-9_]*\>"
syn match  zConstant            "\<TSG_[A-Z0-9_]*\>"
syn match  zConstant            "\<\(MSN\)\?THT_[A-Z0-9_]*\>"
syn match  zConstant            "\<NTLM_[A-Z0-9_]*\>"
syn match  zConstant            "\<RPCH_[A-Z0-9_]*\>"
syn match  zConstant            "\<ZORP_[A-Z0-9_]*\>"
syn match  zConstant            "\<MPPC_[A-Z0-9_]*\>"

" glib types
"    - simple
syn keyword	glibType	gint glong gulong gushort gshort gchar gpointer guchar guint gboolean
syn keyword     glibType        guint8 gint8 guint16 gint16 guint32 gint32 guint64 gint64
syn keyword     glibType        gsize gssize
"    - other
" syn keyword	glibType        GHashTable GList GArray GTimeVal GString
syn match       glibType        "\<G[A-Z][a-z0-9][A-Za-z0-9]*\>"
syn match       glibType        "\<GIO[A-Z][a-z0-9][A-Za-z0-9]*\>"
syn keyword     opensslType     EVP_MD_CTX STACK_OF X509 PKCS7_SIGNER_INFO PKCS7 TS_RESP BIO EVP_PKEY EVP_MD EVP_CIPHER_CTX HMAC_CTX BUF_MEM
syn keyword     opensslType     GENERAL_NAME X509_EXTENSION X509_LOOKUP X509_NAME X509_CRL SSL RC4_KEY MD5_CTX
syn match       otherType	"\<TS_TST[A-Z0-9_]*\>"
syn match       otherType	"\<TS_VERIFY[A-Z0-9_]*\>"
syn match       otherType       "\<Py[A-Z][A-Za-z0-9]*\>"
syn keyword     othertype       __u8 __u16 __u32 __be __le
syn keyword     othertype       sem_t

syn match       zType           "\<\(\(MS\)\?Rpc\|Rts\)[A-Za-z0-9_]*\>"

syn match       zType           "\<_\?Z[A-Z][a-zT][A-Za-z0-9]*\>"
syn match       zType           "\<_\?Ssh[A-Za-z0-9]*\>"
syn match       zType           "\<_\?Rdp[A-Za-z0-9]*\>"
syn match       zType           "\<_\?Cgp[A-Za-z0-9]*\>"
syn match       zType           "<\(T\?FTP\|Plug\)[A-Za-z0-9]*\>"
syn match       zType           "\<_\?Ica[A-Za-z0-9]*\>"
syn match       zType           "\<_\?Telnet[A-Za-z0-9]*\>"
syn keyword       zType         TFtpProxy TFTPProxy PlugProxy
syn match       zcvType          "\<_\?ZCV[A-Z][a-z][A-Za-z0-9]*\>"
"TSG proxy
syn match       zType           "\<_\?Ntlm[A-Za-z0-9]*\>"
syn match       zType           "\<_\?M[sS]Rpc[A-Za-z0-9]*\>"
syn match       zType           "\<_\?Tsg[A-Za-z0-9]*\>"
syn keyword     ztype           AvPair

syn match kType                   "\<u_int\(8\|16\|32\)_t\>"
syn match kType                   "\<__[lb]e\(8\|16\|32\)\>"
syn keyword kType                 u8
syn match  zType                "\<\(_\|P\)\?TSG_PACKET[A-Z0-9_]*\>"
syn match  zType                "\<idl_[a-z0-9_]*\>"
syn keyword       zType         BOOL DWORD

" Functions
"syn match  zFunction 		"\<z_[a-z0-9_]*\>"
"syn match  zFunction 		"\<\(ssh\|tftp\|plug\|sip\|http\)_[a-z0-9_]*\>"
"syn match  glibFunction 	"\<g_[a-z0-9_]*\>"
syn keyword zFunction           Z_CAST EP_OTHER Z_CLASS

syn keyword kFunction           NIPQUAD HIPQUAD
syn keyword kConstant           NIPQUAD_FMT
syn match  zConstant            "\<TSG_PACKET_TYPE_[A-Z0-9_]*\>"
syn match  kFunction            "\<TINU_ASSERT_[A-Z0-9_]*\>"

syn match trailingSpace "\s\+$"
" syn region trailingSpace start="\\$" end="\\$" contains="\(\\$\|\s\)\+"

" The minimum and maximum operators in GNU C++
syn match cppMinMax "[<>]?"

syn match  zSpecial           "\<[A-Z0-9a-z_]\+__class\>"

" Default highlighting
if version >= 508
" || !exists("did_cp_syntax_inits")
  if version < 508
"    let did_cp_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink cKernel                cppSTL
  HiLink cppAccess		cppStatement
  HiLink cppCast		cppStatement
  HiLink cppExceptions		Exception
  HiLink cppOperator		Operator
  HiLink cppStatement		Statement
  HiLink cppSTL			Identifier
  HiLink cppNCBI		Special
  HiLink cppType		Type
  HiLink cppStorageClass	StorageClass
  HiLink cppStructure		Structure
  HiLink cppNumber		Number
  HiLink cppBoolean		Boolean
  HiLink cppThis		KeywordX
  HiLink zcvConstant            zConstant
  HiLink zConstant		pDefConstant
  HiLink glibConstant		pDefConstant
  "HiLink zFunction		Function
  "HiLink glibFunction		Function
  HiLink zFunction		Identifier
  HiLink glibFunction		Identifier
  HiLink glibType               cType
  HiLink otherType              cType
  HiLink opensslType              cType
  HiLink zType              cType
  HiLink zcvType            zType

  HiLink kConstant              pDefConstant
  HiLink kType                  cType
  HiLink kFunction              Function

  HiLink zSpecial               Special

  HiLink otherConstant          pDefConstant
  "HiLink pDefConstant           DefConstant
  HiLink pDefConstant            Constant
  " HiLink  cType                 Type
  " HiLink trailingSpace          Error
  HiLink trailingSpace          Underlined
  HiLink Conditional Statement
  delcommand HiLink
endif

" vim: ts=8

