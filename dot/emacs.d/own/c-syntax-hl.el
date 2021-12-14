;; NOTE:
;; SPECIFIC first
;; NON-SPECIFIC last
;; (in Vim: the order is the opposite)

(font-lock-add-keywords 'c-mode '(
    ;;
    ;; ANYTHING which must be first
    ;;
    
    ;
    
    ;;
    ;; TYPES
    ;;
    ("\\<Py[A-Za-z0-9]*\\>" . font-lock-type-face)
    ("\\<G[A-Z][a-z0-9][A-Za-z0-9]*\\>" . font-lock-type-face)
    ("\\<TS_TST[A-Z0-9_]*\\>" . font-lock-type-face)
    ("\\<TS_VERIFY[A-Z0-9_]*\\>" . font-lock-type-face)
    ("\\<Py[A-Z][A-Za-z0-9]*\\>" . font-lock-type-face)
    ("\\<_?Z[A-Z][a-zT][A-Za-z0-9]*\\>" . font-lock-type-face)
    ("\\<_?Ssh[A-Za-z0-9]*\\>" . font-lock-type-face)
    ("\\<_?ZCV[A-Z][a-z][A-Za-z0-9]*\\>" . font-lock-type-face)
    ("\\<_?Ica[A-Za-z0-9]*\\>" . font-lock-type-face)
    ("\\<_?Rdp[A-Za-z0-9]*\\>" . font-lock-type-face)
    
   ; ("gint" . font-lock-type-face)
    ("glong" . font-lock-type-face)
    ("gulong" . font-lock-type-face)
    ("gushort" . font-lock-type-face)
    ("gshort" . font-lock-type-face)
    ("gchar" . font-lock-type-face)
    ("gpointer" . font-lock-type-face)
    ("guchar" . font-lock-type-face)
   ;; ("guint" . font-lock-type-face)
    ("gboolean" . font-lock-type-face)
;    ("guint8" . font-lock-type-face)
    ("\\<guint[0-9]*\\>" . font-lock-type-face)
    ("gint8" . font-lock-type-face)
    ("guint16" . font-lock-type-face)
    ("gint16" . font-lock-type-face)
    ("guint32" . font-lock-type-face)
    ("gint32" . font-lock-type-face)
    ("guint64" . font-lock-type-face)
    ("gint64" . font-lock-type-face)
    ("gsize" . font-lock-type-face)
    ("gssize" . font-lock-type-face)
    ("GHashTable" . font-lock-type-face)
    ("GList" . font-lock-type-face)
    ("GArray" . font-lock-type-face)
    ("GTimeVal" . font-lock-type-face)
    ("GString" . font-lock-type-face)
    ("EVP_MD_CTX" . font-lock-type-face)
    ("STACK_OF" . font-lock-type-face)
    ("X509" . font-lock-type-face)
    ("PKCS7_SIGNER_INFO" . font-lock-type-face)
    ("PKCS7" . font-lock-type-face)
    ("TS_RESP" . font-lock-type-face)
    ("BIO" . font-lock-type-face)
    ("EVP_PKEY" . font-lock-type-face)
    ("EVP_MD" . font-lock-type-face)
    ("EVP_CIPHER_CTX" . font-lock-type-face)
    ("HMAC_CTX" . font-lock-type-face)
    ("BUF_MEM" . font-lock-type-face)
    ("GENERAL_NAME" . font-lock-type-face)
    ("X509_EXTENSION" . font-lock-type-face)
    ("X509_LOOKUP" . font-lock-type-face)
    ("X509_NAME" . font-lock-type-face)
    ("SSL" . font-lock-type-face)
    
    
    ;; Overlapped types (partially defined above)
    
    ;;
    ;; CONSTANTS
    ;;
    ("\\<VAL[A-Z0-9_]*\\>" . font-lock-constant-face)
    ("true" . font-lock-constant-face)
    ("false" . font-lock-constant-face)
    ("TRUE" . font-lock-constant-face)
    ("FALSE" . font-lock-constant-face)
    ("ENC_LIST_MAX" . font-lock-constant-face)
    ("MAX_SOCKADDR_STRING" . font-lock-constant-face)
    ("\\<\\(SSH\\|ZV\\?\\)_[A-Z0-9_]*\\>" . font-lock-constant-face)
    ("\\<ZA_FORMAT_[A-Z0-9]*\\>" . font-lock-constant-face)
    ("\\<ZA_FF_[A-Z]*\\>" . font-lock-constant-face)
    ("\\<ZA_RECF_[A-Z_]*\\>" . font-lock-constant-face)
    ("\\<ZA_REC_[A-Z]*\\>" . font-lock-constant-face)
    ("\\<EP_\\(CLIENT\\|SERVER\\|MAX\\)\\>" . font-lock-constant-face)
    ("\\<ENC_DIR[A-Z0-9_]*\\>" . font-lock-constant-face)
    ("\\<\\(CORE\\|AUDIT\\|SSH\\)_[A-Z0-9_]*\\>" . font-lock-constant-face)
    ("\\<Z\\(CV\\|VT\\)_[A-Z0-9_]*\\>" . font-lock-constant-face)
    ("\\<G_[A-Z0-9_]*\\>" . font-lock-constant-face)
    ("\\<G.*_FROM_[BL]E\\>" . font-lock-constant-face)
    ("\\<SSH2_[A-Z0-9_]*\\>" . font-lock-constant-face)
    ("\\<EVP_[A-Z0-9_]*\\>" . font-lock-constant-face)
    ("\\<X509_\\(PURPOSE\\|LU\\|V_ERR\\)_[A-Z0-9_]*\\>" . font-lock-constant-face)
    ("\\<MAGIC_[A-Z0-9_]*\\>" . font-lock-constant-face)
    ("\\<\\(ICA\\|RDP\\)_[A-Z0-9_]*\\>" . font-lock-constant-face)
    ("\\<\\(Z_SBF\\)_[A-Z0-9_]*\\>" . font-lock-constant-face)
    ("\\<\\(ZRL\\)_[A-Z0-9_]*\\>" . font-lock-constant-face)
    
    ;; Functions
    ("\\<Z_\\(FUNCS[A-Z0-9_]*\\|SUPER\\|CAST\\|CLASS\\)\\>" . font-lock-function-name-face)
    
    ;; Overlapped constants (partially defined above)
    ("\\<EP_[A-Z0-9_]*\\>" . font-lock-function-name-face)
    ("\\<Z_CLASS[A-Z0-9_]*\\>" . font-lock-function-name-face)
    
  ))
      

;;(global-set-key "\C-xc" 'semantic-complete-self-insert)

