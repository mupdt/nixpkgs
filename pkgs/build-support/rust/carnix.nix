# Generated by carnix 0.9.10: carnix generate-nix
{ lib, buildPlatform, buildRustCrate, buildRustCrateHelpers, cratesIO, fetchgit }:
with buildRustCrateHelpers;
let inherit (lib.lists) fold;
    inherit (lib.attrsets) recursiveUpdate;
in
rec {
  crates = cratesIO;
  carnix = crates.crates.carnix."0.10.0" deps;
  __all = [ (carnix {}) ];
  deps.aho_corasick."0.6.10" = {
    memchr = "2.2.0";
  };
  deps.ansi_term."0.11.0" = {
    winapi = "0.3.6";
  };
  deps.argon2rs."0.2.5" = {
    blake2_rfc = "0.2.18";
    scoped_threadpool = "0.1.9";
  };
  deps.arrayvec."0.4.10" = {
    nodrop = "0.1.13";
  };
  deps.atty."0.2.11" = {
    termion = "1.5.1";
    libc = "0.2.50";
    winapi = "0.3.6";
  };
  deps.autocfg."0.1.2" = {};
  deps.backtrace."0.3.14" = {
    cfg_if = "0.1.7";
    rustc_demangle = "0.1.13";
    autocfg = "0.1.2";
    backtrace_sys = "0.1.28";
    libc = "0.2.50";
    winapi = "0.3.6";
  };
  deps.backtrace_sys."0.1.28" = {
    libc = "0.2.50";
    cc = "1.0.32";
  };
  deps.bitflags."1.0.4" = {};
  deps.blake2_rfc."0.2.18" = {
    arrayvec = "0.4.10";
    constant_time_eq = "0.1.3";
  };
  deps.carnix."0.10.0" = {
    clap = "2.32.0";
    dirs = "1.0.5";
    env_logger = "0.6.1";
    failure = "0.1.5";
    failure_derive = "0.1.5";
    itertools = "0.8.0";
    log = "0.4.6";
    nom = "3.2.1";
    regex = "1.1.2";
    serde = "1.0.89";
    serde_derive = "1.0.89";
    serde_json = "1.0.39";
    tempdir = "0.3.7";
    toml = "0.5.0";
    url = "1.7.2";
  };
  deps.cc."1.0.32" = {};
  deps.cfg_if."0.1.7" = {};
  deps.clap."2.32.0" = {
    atty = "0.2.11";
    bitflags = "1.0.4";
    strsim = "0.7.0";
    textwrap = "0.10.0";
    unicode_width = "0.1.5";
    vec_map = "0.8.1";
    ansi_term = "0.11.0";
  };
  deps.cloudabi."0.0.3" = {
    bitflags = "1.0.4";
  };
  deps.constant_time_eq."0.1.3" = {};
  deps.dirs."1.0.5" = {
    redox_users = "0.3.0";
    libc = "0.2.50";
    winapi = "0.3.6";
  };
  deps.either."1.5.1" = {};
  deps.env_logger."0.6.1" = {
    atty = "0.2.11";
    humantime = "1.2.0";
    log = "0.4.6";
    regex = "1.1.2";
    termcolor = "1.0.4";
  };
  deps.failure."0.1.5" = {
    backtrace = "0.3.14";
    failure_derive = "0.1.5";
  };
  deps.failure_derive."0.1.5" = {
    proc_macro2 = "0.4.27";
    quote = "0.6.11";
    syn = "0.15.29";
    synstructure = "0.10.1";
  };
  deps.fuchsia_cprng."0.1.1" = {};
  deps.humantime."1.2.0" = {
    quick_error = "1.2.2";
  };
  deps.idna."0.1.5" = {
    matches = "0.1.8";
    unicode_bidi = "0.3.4";
    unicode_normalization = "0.1.8";
  };
  deps.itertools."0.8.0" = {
    either = "1.5.1";
  };
  deps.itoa."0.4.3" = {};
  deps.lazy_static."1.3.0" = {};
  deps.libc."0.2.50" = {};
  deps.log."0.4.6" = {
    cfg_if = "0.1.7";
  };
  deps.matches."0.1.8" = {};
  deps.memchr."1.0.2" = {
    libc = "0.2.50";
  };
  deps.memchr."2.2.0" = {};
  deps.nodrop."0.1.13" = {};
  deps.nom."3.2.1" = {
    memchr = "1.0.2";
  };
  deps.percent_encoding."1.0.1" = {};
  deps.proc_macro2."0.4.27" = {
    unicode_xid = "0.1.0";
  };
  deps.quick_error."1.2.2" = {};
  deps.quote."0.6.11" = {
    proc_macro2 = "0.4.27";
  };
  deps.rand."0.4.6" = {
    rand_core = "0.3.1";
    rdrand = "0.4.0";
    fuchsia_cprng = "0.1.1";
    libc = "0.2.50";
    winapi = "0.3.6";
  };
  deps.rand_core."0.3.1" = {
    rand_core = "0.4.0";
  };
  deps.rand_core."0.4.0" = {};
  deps.rand_os."0.1.3" = {
    rand_core = "0.4.0";
    rdrand = "0.4.0";
    cloudabi = "0.0.3";
    fuchsia_cprng = "0.1.1";
    libc = "0.2.50";
    winapi = "0.3.6";
  };
  deps.rdrand."0.4.0" = {
    rand_core = "0.3.1";
  };
  deps.redox_syscall."0.1.51" = {};
  deps.redox_termios."0.1.1" = {
    redox_syscall = "0.1.51";
  };
  deps.redox_users."0.3.0" = {
    argon2rs = "0.2.5";
    failure = "0.1.5";
    rand_os = "0.1.3";
    redox_syscall = "0.1.51";
  };
  deps.regex."1.1.2" = {
    aho_corasick = "0.6.10";
    memchr = "2.2.0";
    regex_syntax = "0.6.5";
    thread_local = "0.3.6";
    utf8_ranges = "1.0.2";
  };
  deps.regex_syntax."0.6.5" = {
    ucd_util = "0.1.3";
  };
  deps.remove_dir_all."0.5.1" = {
    winapi = "0.3.6";
  };
  deps.rustc_demangle."0.1.13" = {};
  deps.ryu."0.2.7" = {};
  deps.scoped_threadpool."0.1.9" = {};
  deps.serde."1.0.89" = {};
  deps.serde_derive."1.0.89" = {
    proc_macro2 = "0.4.27";
    quote = "0.6.11";
    syn = "0.15.29";
  };
  deps.serde_json."1.0.39" = {
    itoa = "0.4.3";
    ryu = "0.2.7";
    serde = "1.0.89";
  };
  deps.smallvec."0.6.9" = {};
  deps.strsim."0.7.0" = {};
  deps.syn."0.15.29" = {
    proc_macro2 = "0.4.27";
    quote = "0.6.11";
    unicode_xid = "0.1.0";
  };
  deps.synstructure."0.10.1" = {
    proc_macro2 = "0.4.27";
    quote = "0.6.11";
    syn = "0.15.29";
    unicode_xid = "0.1.0";
  };
  deps.tempdir."0.3.7" = {
    rand = "0.4.6";
    remove_dir_all = "0.5.1";
  };
  deps.termcolor."1.0.4" = {
    wincolor = "1.0.1";
  };
  deps.termion."1.5.1" = {
    libc = "0.2.50";
    redox_syscall = "0.1.51";
    redox_termios = "0.1.1";
  };
  deps.textwrap."0.10.0" = {
    unicode_width = "0.1.5";
  };
  deps.thread_local."0.3.6" = {
    lazy_static = "1.3.0";
  };
  deps.toml."0.5.0" = {
    serde = "1.0.89";
  };
  deps.ucd_util."0.1.3" = {};
  deps.unicode_bidi."0.3.4" = {
    matches = "0.1.8";
  };
  deps.unicode_normalization."0.1.8" = {
    smallvec = "0.6.9";
  };
  deps.unicode_width."0.1.5" = {};
  deps.unicode_xid."0.1.0" = {};
  deps.url."1.7.2" = {
    idna = "0.1.5";
    matches = "0.1.8";
    percent_encoding = "1.0.1";
  };
  deps.utf8_ranges."1.0.2" = {};
  deps.vec_map."0.8.1" = {};
  deps.winapi."0.3.6" = {
    winapi_i686_pc_windows_gnu = "0.4.0";
    winapi_x86_64_pc_windows_gnu = "0.4.0";
  };
  deps.winapi_i686_pc_windows_gnu."0.4.0" = {};
  deps.winapi_util."0.1.2" = {
    winapi = "0.3.6";
  };
  deps.winapi_x86_64_pc_windows_gnu."0.4.0" = {};
  deps.wincolor."1.0.1" = {
    winapi = "0.3.6";
    winapi_util = "0.1.2";
  };
}
