/// name : "Tehran"
/// local_names : {"ug":"تېھران","lb":"Teheran","sl":"Teheran","zh":"德黑兰","sr":"Техеран","hi":"तेहरान","ro":"Teheran","cs":"Teherán","ja":"テヘラン","oc":"Teheran","it":"Teheran","fy":"Teheran","hy":"Թեհրան","lv":"Teherāna","eo":"Tehrano","mi":"Tehran","ka":"თეირანი","la":"Teheranum","sc":"Teheran","ascii":"Tehran","ba":"Тегеран","nl":"Teheran","ms":"Teheran","vo":"Tehran","so":"Tahraan","yi":"טעהראן","et":"Teheran","tk":"Tähran","pt":"Teerã","fr":"Téhéran","be":"Тэгеран","sw":"Tehran","ru":"Тегеран","kn":"ತೆಹ್ರಾನ್","ht":"Teheran","hr":"Teheran","fi":"Teheran","an":"Teherán","af":"Teheran","id":"Teheran","da":"Teheran","he":"טהרן","es":"Teherán","mk":"Техеран","eu":"Teheran","rm":"Teheran","ps":"تهران","en":"Tehran","or":"ତେହେରାନ","ko":"테헤란","nn":"Teheran","kk":"Тегеран","hu":"Teherán","ia":"Tehran","vi":"Tehran","bn":"তেহরান","ur":"تہران","cv":"Тегеран","ca":"Teheran","de":"Teheran","te":"టెహరాన్","mn":"Тегеран","mr":"तेहरान","bs":"Teheran","uk":"Тегеран","kl":"Tehran","os":"Тæхран","el":"Τεχεράνη","pa":"ਤਹਿਰਾਨ","ml":"ടെഹ്റാന്","is":"Teheran","bo":"ཏེ་ཧི་རན​།","am":"ቴህራን","io":"Tehran","ku":"Tehran","yo":"Tehran","tg":"Теҳрон","feature_name":"Tehran","kw":"Tehran","fo":"Teheran","tl":"Tehrān","sk":"Teherán","my":"တီဟီရန်မြို့","ga":"Teheran","br":"Tehran","fa":"شهر تهران","cy":"Tehran","gd":"Tehran","tt":"Тәһран","gl":"Teherán - تهران","sv":"Teheran","ar":"طهران","lt":"Teheranas","th":"เตหะราน","se":"Teheran","sq":"Teherani","ie":"Teheran","tr":"Tahran","bg":"Техеран","no":"Teheran","ta":"தெஹ்ரான்","az":"Tehran","uz":"Tehron","pl":"Teheran"}
/// lat : 35.6892523
/// lon : 51.3896004
/// country : "IR"

class LocModel {
  LocModel({
      String? name, 
      LocalNames? localNames, 
      double? lat, 
      double? lon, 
      String? country,}){
    _name = name;
    _localNames = localNames;
    _lat = lat;
    _lon = lon;
    _country = country;
}

  LocModel.fromJson(dynamic json) {
    _name = json['name'];
    _localNames = json['local_names'] != null ? LocalNames.fromJson(json['local_names']) : null;
    _lat = json['lat'];
    _lon = json['lon'];
    _country = json['country'];
  }
  String? _name;
  LocalNames? _localNames;
  double? _lat;
  double? _lon;
  String? _country;
LocModel copyWith({  String? name,
  LocalNames? localNames,
  double? lat,
  double? lon,
  String? country,
}) => LocModel(  name: name ?? _name,
  localNames: localNames ?? _localNames,
  lat: lat ?? _lat,
  lon: lon ?? _lon,
  country: country ?? _country,
);
  String? get name => _name;
  LocalNames? get localNames => _localNames;
  double? get lat => _lat;
  double? get lon => _lon;
  String? get country => _country;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    if (_localNames != null) {
      map['local_names'] = _localNames?.toJson();
    }
    map['lat'] = _lat;
    map['lon'] = _lon;
    map['country'] = _country;
    return map;
  }

}

/// ug : "تېھران"
/// lb : "Teheran"
/// sl : "Teheran"
/// zh : "德黑兰"
/// sr : "Техеран"
/// hi : "तेहरान"
/// ro : "Teheran"
/// cs : "Teherán"
/// ja : "テヘラン"
/// oc : "Teheran"
/// it : "Teheran"
/// fy : "Teheran"
/// hy : "Թեհրան"
/// lv : "Teherāna"
/// eo : "Tehrano"
/// mi : "Tehran"
/// ka : "თეირანი"
/// la : "Teheranum"
/// sc : "Teheran"
/// ascii : "Tehran"
/// ba : "Тегеран"
/// nl : "Teheran"
/// ms : "Teheran"
/// vo : "Tehran"
/// so : "Tahraan"
/// yi : "טעהראן"
/// et : "Teheran"
/// tk : "Tähran"
/// pt : "Teerã"
/// fr : "Téhéran"
/// be : "Тэгеран"
/// sw : "Tehran"
/// ru : "Тегеран"
/// kn : "ತೆಹ್ರಾನ್"
/// ht : "Teheran"
/// hr : "Teheran"
/// fi : "Teheran"
/// an : "Teherán"
/// af : "Teheran"
/// id : "Teheran"
/// da : "Teheran"
/// he : "טהרן"
/// es : "Teherán"
/// mk : "Техеран"
/// eu : "Teheran"
/// rm : "Teheran"
/// ps : "تهران"
/// en : "Tehran"
/// or : "ତେହେରାନ"
/// ko : "테헤란"
/// nn : "Teheran"
/// kk : "Тегеран"
/// hu : "Teherán"
/// ia : "Tehran"
/// vi : "Tehran"
/// bn : "তেহরান"
/// ur : "تہران"
/// cv : "Тегеран"
/// ca : "Teheran"
/// de : "Teheran"
/// te : "టెహరాన్"
/// mn : "Тегеран"
/// mr : "तेहरान"
/// bs : "Teheran"
/// uk : "Тегеран"
/// kl : "Tehran"
/// os : "Тæхран"
/// el : "Τεχεράνη"
/// pa : "ਤਹਿਰਾਨ"
/// ml : "ടെഹ്റാന്"
/// is : "Teheran"
/// bo : "ཏེ་ཧི་རན​།"
/// am : "ቴህራን"
/// io : "Tehran"
/// ku : "Tehran"
/// yo : "Tehran"
/// tg : "Теҳрон"
/// feature_name : "Tehran"
/// kw : "Tehran"
/// fo : "Teheran"
/// tl : "Tehrān"
/// sk : "Teherán"
/// my : "တီဟီရန်မြို့"
/// ga : "Teheran"
/// br : "Tehran"
/// fa : "شهر تهران"
/// cy : "Tehran"
/// gd : "Tehran"
/// tt : "Тәһран"
/// gl : "Teherán - تهران"
/// sv : "Teheran"
/// ar : "طهران"
/// lt : "Teheranas"
/// th : "เตหะราน"
/// se : "Teheran"
/// sq : "Teherani"
/// ie : "Teheran"
/// tr : "Tahran"
/// bg : "Техеран"
/// no : "Teheran"
/// ta : "தெஹ்ரான்"
/// az : "Tehran"
/// uz : "Tehron"
/// pl : "Teheran"

class LocalNames {
  LocalNames({
      String? ug, 
      String? lb, 
      String? sl, 
      String? zh, 
      String? sr, 
      String? hi, 
      String? ro, 
      String? cs, 
      String? ja, 
      String? oc, 
      String? it, 
      String? fy, 
      String? hy, 
      String? lv, 
      String? eo, 
      String? mi, 
      String? ka, 
      String? la, 
      String? sc, 
      String? ascii, 
      String? ba, 
      String? nl, 
      String? ms, 
      String? vo, 
      String? so, 
      String? yi, 
      String? et, 
      String? tk, 
      String? pt, 
      String? fr, 
      String? be, 
      String? sw, 
      String? ru, 
      String? kn, 
      String? ht, 
      String? hr, 
      String? fi, 
      String? an, 
      String? af, 
      String? id, 
      String? da, 
      String? he, 
      String? es, 
      String? mk, 
      String? eu, 
      String? rm, 
      String? ps, 
      String? en, 
      String? or, 
      String? ko, 
      String? nn, 
      String? kk, 
      String? hu, 
      String? ia, 
      String? vi, 
      String? bn, 
      String? ur, 
      String? cv, 
      String? ca, 
      String? de, 
      String? te, 
      String? mn, 
      String? mr, 
      String? bs, 
      String? uk, 
      String? kl, 
      String? os, 
      String? el, 
      String? pa, 
      String? ml, 
      String? isLang,
      String? bo, 
      String? am, 
      String? io, 
      String? ku, 
      String? yo, 
      String? tg, 
      String? featureName, 
      String? kw, 
      String? fo, 
      String? tl, 
      String? sk, 
      String? my, 
      String? ga, 
      String? br, 
      String? fa, 
      String? cy, 
      String? gd, 
      String? tt, 
      String? gl, 
      String? sv, 
      String? ar, 
      String? lt, 
      String? th, 
      String? se, 
      String? sq, 
      String? ie, 
      String? tr, 
      String? bg, 
      String? no, 
      String? ta, 
      String? az, 
      String? uz, 
      String? pl,}){
    _ug = ug;
    _lb = lb;
    _sl = sl;
    _zh = zh;
    _sr = sr;
    _hi = hi;
    _ro = ro;
    _cs = cs;
    _ja = ja;
    _oc = oc;
    _it = it;
    _fy = fy;
    _hy = hy;
    _lv = lv;
    _eo = eo;
    _mi = mi;
    _ka = ka;
    _la = la;
    _sc = sc;
    _ascii = ascii;
    _ba = ba;
    _nl = nl;
    _ms = ms;
    _vo = vo;
    _so = so;
    _yi = yi;
    _et = et;
    _tk = tk;
    _pt = pt;
    _fr = fr;
    _be = be;
    _sw = sw;
    _ru = ru;
    _kn = kn;
    _ht = ht;
    _hr = hr;
    _fi = fi;
    _an = an;
    _af = af;
    _id = id;
    _da = da;
    _he = he;
    _es = es;
    _mk = mk;
    _eu = eu;
    _rm = rm;
    _ps = ps;
    _en = en;
    _or = or;
    _ko = ko;
    _nn = nn;
    _kk = kk;
    _hu = hu;
    _ia = ia;
    _vi = vi;
    _bn = bn;
    _ur = ur;
    _cv = cv;
    _ca = ca;
    _de = de;
    _te = te;
    _mn = mn;
    _mr = mr;
    _bs = bs;
    _uk = uk;
    _kl = kl;
    _os = os;
    _el = el;
    _pa = pa;
    _ml = ml;
    _isLang = isLang;
    _bo = bo;
    _am = am;
    _io = io;
    _ku = ku;
    _yo = yo;
    _tg = tg;
    _featureName = featureName;
    _kw = kw;
    _fo = fo;
    _tl = tl;
    _sk = sk;
    _my = my;
    _ga = ga;
    _br = br;
    _fa = fa;
    _cy = cy;
    _gd = gd;
    _tt = tt;
    _gl = gl;
    _sv = sv;
    _ar = ar;
    _lt = lt;
    _th = th;
    _se = se;
    _sq = sq;
    _ie = ie;
    _tr = tr;
    _bg = bg;
    _no = no;
    _ta = ta;
    _az = az;
    _uz = uz;
    _pl = pl;
}

  LocalNames.fromJson(dynamic json) {
    _ug = json['ug'];
    _lb = json['lb'];
    _sl = json['sl'];
    _zh = json['zh'];
    _sr = json['sr'];
    _hi = json['hi'];
    _ro = json['ro'];
    _cs = json['cs'];
    _ja = json['ja'];
    _oc = json['oc'];
    _it = json['it'];
    _fy = json['fy'];
    _hy = json['hy'];
    _lv = json['lv'];
    _eo = json['eo'];
    _mi = json['mi'];
    _ka = json['ka'];
    _la = json['la'];
    _sc = json['sc'];
    _ascii = json['ascii'];
    _ba = json['ba'];
    _nl = json['nl'];
    _ms = json['ms'];
    _vo = json['vo'];
    _so = json['so'];
    _yi = json['yi'];
    _et = json['et'];
    _tk = json['tk'];
    _pt = json['pt'];
    _fr = json['fr'];
    _be = json['be'];
    _sw = json['sw'];
    _ru = json['ru'];
    _kn = json['kn'];
    _ht = json['ht'];
    _hr = json['hr'];
    _fi = json['fi'];
    _an = json['an'];
    _af = json['af'];
    _id = json['id'];
    _da = json['da'];
    _he = json['he'];
    _es = json['es'];
    _mk = json['mk'];
    _eu = json['eu'];
    _rm = json['rm'];
    _ps = json['ps'];
    _en = json['en'];
    _or = json['or'];
    _ko = json['ko'];
    _nn = json['nn'];
    _kk = json['kk'];
    _hu = json['hu'];
    _ia = json['ia'];
    _vi = json['vi'];
    _bn = json['bn'];
    _ur = json['ur'];
    _cv = json['cv'];
    _ca = json['ca'];
    _de = json['de'];
    _te = json['te'];
    _mn = json['mn'];
    _mr = json['mr'];
    _bs = json['bs'];
    _uk = json['uk'];
    _kl = json['kl'];
    _os = json['os'];
    _el = json['el'];
    _pa = json['pa'];
    _ml = json['ml'];
    _isLang = json['is'];
    _bo = json['bo'];
    _am = json['am'];
    _io = json['io'];
    _ku = json['ku'];
    _yo = json['yo'];
    _tg = json['tg'];
    _featureName = json['feature_name'];
    _kw = json['kw'];
    _fo = json['fo'];
    _tl = json['tl'];
    _sk = json['sk'];
    _my = json['my'];
    _ga = json['ga'];
    _br = json['br'];
    _fa = json['fa'];
    _cy = json['cy'];
    _gd = json['gd'];
    _tt = json['tt'];
    _gl = json['gl'];
    _sv = json['sv'];
    _ar = json['ar'];
    _lt = json['lt'];
    _th = json['th'];
    _se = json['se'];
    _sq = json['sq'];
    _ie = json['ie'];
    _tr = json['tr'];
    _bg = json['bg'];
    _no = json['no'];
    _ta = json['ta'];
    _az = json['az'];
    _uz = json['uz'];
    _pl = json['pl'];
  }
  String? _ug;
  String? _lb;
  String? _sl;
  String? _zh;
  String? _sr;
  String? _hi;
  String? _ro;
  String? _cs;
  String? _ja;
  String? _oc;
  String? _it;
  String? _fy;
  String? _hy;
  String? _lv;
  String? _eo;
  String? _mi;
  String? _ka;
  String? _la;
  String? _sc;
  String? _ascii;
  String? _ba;
  String? _nl;
  String? _ms;
  String? _vo;
  String? _so;
  String? _yi;
  String? _et;
  String? _tk;
  String? _pt;
  String? _fr;
  String? _be;
  String? _sw;
  String? _ru;
  String? _kn;
  String? _ht;
  String? _hr;
  String? _fi;
  String? _an;
  String? _af;
  String? _id;
  String? _da;
  String? _he;
  String? _es;
  String? _mk;
  String? _eu;
  String? _rm;
  String? _ps;
  String? _en;
  String? _or;
  String? _ko;
  String? _nn;
  String? _kk;
  String? _hu;
  String? _ia;
  String? _vi;
  String? _bn;
  String? _ur;
  String? _cv;
  String? _ca;
  String? _de;
  String? _te;
  String? _mn;
  String? _mr;
  String? _bs;
  String? _uk;
  String? _kl;
  String? _os;
  String? _el;
  String? _pa;
  String? _ml;
  String? _isLang;
  String? _bo;
  String? _am;
  String? _io;
  String? _ku;
  String? _yo;
  String? _tg;
  String? _featureName;
  String? _kw;
  String? _fo;
  String? _tl;
  String? _sk;
  String? _my;
  String? _ga;
  String? _br;
  String? _fa;
  String? _cy;
  String? _gd;
  String? _tt;
  String? _gl;
  String? _sv;
  String? _ar;
  String? _lt;
  String? _th;
  String? _se;
  String? _sq;
  String? _ie;
  String? _tr;
  String? _bg;
  String? _no;
  String? _ta;
  String? _az;
  String? _uz;
  String? _pl;
LocalNames copyWith({  String? ug,
  String? lb,
  String? sl,
  String? zh,
  String? sr,
  String? hi,
  String? ro,
  String? cs,
  String? ja,
  String? oc,
  String? it,
  String? fy,
  String? hy,
  String? lv,
  String? eo,
  String? mi,
  String? ka,
  String? la,
  String? sc,
  String? ascii,
  String? ba,
  String? nl,
  String? ms,
  String? vo,
  String? so,
  String? yi,
  String? et,
  String? tk,
  String? pt,
  String? fr,
  String? be,
  String? sw,
  String? ru,
  String? kn,
  String? ht,
  String? hr,
  String? fi,
  String? an,
  String? af,
  String? id,
  String? da,
  String? he,
  String? es,
  String? mk,
  String? eu,
  String? rm,
  String? ps,
  String? en,
  String? or,
  String? ko,
  String? nn,
  String? kk,
  String? hu,
  String? ia,
  String? vi,
  String? bn,
  String? ur,
  String? cv,
  String? ca,
  String? de,
  String? te,
  String? mn,
  String? mr,
  String? bs,
  String? uk,
  String? kl,
  String? os,
  String? el,
  String? pa,
  String? ml,
  String? isLang,
  String? bo,
  String? am,
  String? io,
  String? ku,
  String? yo,
  String? tg,
  String? featureName,
  String? kw,
  String? fo,
  String? tl,
  String? sk,
  String? my,
  String? ga,
  String? br,
  String? fa,
  String? cy,
  String? gd,
  String? tt,
  String? gl,
  String? sv,
  String? ar,
  String? lt,
  String? th,
  String? se,
  String? sq,
  String? ie,
  String? tr,
  String? bg,
  String? no,
  String? ta,
  String? az,
  String? uz,
  String? pl,
}) => LocalNames(  ug: ug ?? _ug,
  lb: lb ?? _lb,
  sl: sl ?? _sl,
  zh: zh ?? _zh,
  sr: sr ?? _sr,
  hi: hi ?? _hi,
  ro: ro ?? _ro,
  cs: cs ?? _cs,
  ja: ja ?? _ja,
  oc: oc ?? _oc,
  it: it ?? _it,
  fy: fy ?? _fy,
  hy: hy ?? _hy,
  lv: lv ?? _lv,
  eo: eo ?? _eo,
  mi: mi ?? _mi,
  ka: ka ?? _ka,
  la: la ?? _la,
  sc: sc ?? _sc,
  ascii: ascii ?? _ascii,
  ba: ba ?? _ba,
  nl: nl ?? _nl,
  ms: ms ?? _ms,
  vo: vo ?? _vo,
  so: so ?? _so,
  yi: yi ?? _yi,
  et: et ?? _et,
  tk: tk ?? _tk,
  pt: pt ?? _pt,
  fr: fr ?? _fr,
  be: be ?? _be,
  sw: sw ?? _sw,
  ru: ru ?? _ru,
  kn: kn ?? _kn,
  ht: ht ?? _ht,
  hr: hr ?? _hr,
  fi: fi ?? _fi,
  an: an ?? _an,
  af: af ?? _af,
  id: id ?? _id,
  da: da ?? _da,
  he: he ?? _he,
  es: es ?? _es,
  mk: mk ?? _mk,
  eu: eu ?? _eu,
  rm: rm ?? _rm,
  ps: ps ?? _ps,
  en: en ?? _en,
  or: or ?? _or,
  ko: ko ?? _ko,
  nn: nn ?? _nn,
  kk: kk ?? _kk,
  hu: hu ?? _hu,
  ia: ia ?? _ia,
  vi: vi ?? _vi,
  bn: bn ?? _bn,
  ur: ur ?? _ur,
  cv: cv ?? _cv,
  ca: ca ?? _ca,
  de: de ?? _de,
  te: te ?? _te,
  mn: mn ?? _mn,
  mr: mr ?? _mr,
  bs: bs ?? _bs,
  uk: uk ?? _uk,
  kl: kl ?? _kl,
  os: os ?? _os,
  el: el ?? _el,
  pa: pa ?? _pa,
  ml: ml ?? _ml,
  isLang: isLang ?? _isLang,
  bo: bo ?? _bo,
  am: am ?? _am,
  io: io ?? _io,
  ku: ku ?? _ku,
  yo: yo ?? _yo,
  tg: tg ?? _tg,
  featureName: featureName ?? _featureName,
  kw: kw ?? _kw,
  fo: fo ?? _fo,
  tl: tl ?? _tl,
  sk: sk ?? _sk,
  my: my ?? _my,
  ga: ga ?? _ga,
  br: br ?? _br,
  fa: fa ?? _fa,
  cy: cy ?? _cy,
  gd: gd ?? _gd,
  tt: tt ?? _tt,
  gl: gl ?? _gl,
  sv: sv ?? _sv,
  ar: ar ?? _ar,
  lt: lt ?? _lt,
  th: th ?? _th,
  se: se ?? _se,
  sq: sq ?? _sq,
  ie: ie ?? _ie,
  tr: tr ?? _tr,
  bg: bg ?? _bg,
  no: no ?? _no,
  ta: ta ?? _ta,
  az: az ?? _az,
  uz: uz ?? _uz,
  pl: pl ?? _pl,
);
  String? get ug => _ug;
  String? get lb => _lb;
  String? get sl => _sl;
  String? get zh => _zh;
  String? get sr => _sr;
  String? get hi => _hi;
  String? get ro => _ro;
  String? get cs => _cs;
  String? get ja => _ja;
  String? get oc => _oc;
  String? get it => _it;
  String? get fy => _fy;
  String? get hy => _hy;
  String? get lv => _lv;
  String? get eo => _eo;
  String? get mi => _mi;
  String? get ka => _ka;
  String? get la => _la;
  String? get sc => _sc;
  String? get ascii => _ascii;
  String? get ba => _ba;
  String? get nl => _nl;
  String? get ms => _ms;
  String? get vo => _vo;
  String? get so => _so;
  String? get yi => _yi;
  String? get et => _et;
  String? get tk => _tk;
  String? get pt => _pt;
  String? get fr => _fr;
  String? get be => _be;
  String? get sw => _sw;
  String? get ru => _ru;
  String? get kn => _kn;
  String? get ht => _ht;
  String? get hr => _hr;
  String? get fi => _fi;
  String? get an => _an;
  String? get af => _af;
  String? get id => _id;
  String? get da => _da;
  String? get he => _he;
  String? get es => _es;
  String? get mk => _mk;
  String? get eu => _eu;
  String? get rm => _rm;
  String? get ps => _ps;
  String? get en => _en;
  String? get or => _or;
  String? get ko => _ko;
  String? get nn => _nn;
  String? get kk => _kk;
  String? get hu => _hu;
  String? get ia => _ia;
  String? get vi => _vi;
  String? get bn => _bn;
  String? get ur => _ur;
  String? get cv => _cv;
  String? get ca => _ca;
  String? get de => _de;
  String? get te => _te;
  String? get mn => _mn;
  String? get mr => _mr;
  String? get bs => _bs;
  String? get uk => _uk;
  String? get kl => _kl;
  String? get os => _os;
  String? get el => _el;
  String? get pa => _pa;
  String? get ml => _ml;
  String? get isLang => _isLang;
  String? get bo => _bo;
  String? get am => _am;
  String? get io => _io;
  String? get ku => _ku;
  String? get yo => _yo;
  String? get tg => _tg;
  String? get featureName => _featureName;
  String? get kw => _kw;
  String? get fo => _fo;
  String? get tl => _tl;
  String? get sk => _sk;
  String? get my => _my;
  String? get ga => _ga;
  String? get br => _br;
  String? get fa => _fa;
  String? get cy => _cy;
  String? get gd => _gd;
  String? get tt => _tt;
  String? get gl => _gl;
  String? get sv => _sv;
  String? get ar => _ar;
  String? get lt => _lt;
  String? get th => _th;
  String? get se => _se;
  String? get sq => _sq;
  String? get ie => _ie;
  String? get tr => _tr;
  String? get bg => _bg;
  String? get no => _no;
  String? get ta => _ta;
  String? get az => _az;
  String? get uz => _uz;
  String? get pl => _pl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ug'] = _ug;
    map['lb'] = _lb;
    map['sl'] = _sl;
    map['zh'] = _zh;
    map['sr'] = _sr;
    map['hi'] = _hi;
    map['ro'] = _ro;
    map['cs'] = _cs;
    map['ja'] = _ja;
    map['oc'] = _oc;
    map['it'] = _it;
    map['fy'] = _fy;
    map['hy'] = _hy;
    map['lv'] = _lv;
    map['eo'] = _eo;
    map['mi'] = _mi;
    map['ka'] = _ka;
    map['la'] = _la;
    map['sc'] = _sc;
    map['ascii'] = _ascii;
    map['ba'] = _ba;
    map['nl'] = _nl;
    map['ms'] = _ms;
    map['vo'] = _vo;
    map['so'] = _so;
    map['yi'] = _yi;
    map['et'] = _et;
    map['tk'] = _tk;
    map['pt'] = _pt;
    map['fr'] = _fr;
    map['be'] = _be;
    map['sw'] = _sw;
    map['ru'] = _ru;
    map['kn'] = _kn;
    map['ht'] = _ht;
    map['hr'] = _hr;
    map['fi'] = _fi;
    map['an'] = _an;
    map['af'] = _af;
    map['id'] = _id;
    map['da'] = _da;
    map['he'] = _he;
    map['es'] = _es;
    map['mk'] = _mk;
    map['eu'] = _eu;
    map['rm'] = _rm;
    map['ps'] = _ps;
    map['en'] = _en;
    map['or'] = _or;
    map['ko'] = _ko;
    map['nn'] = _nn;
    map['kk'] = _kk;
    map['hu'] = _hu;
    map['ia'] = _ia;
    map['vi'] = _vi;
    map['bn'] = _bn;
    map['ur'] = _ur;
    map['cv'] = _cv;
    map['ca'] = _ca;
    map['de'] = _de;
    map['te'] = _te;
    map['mn'] = _mn;
    map['mr'] = _mr;
    map['bs'] = _bs;
    map['uk'] = _uk;
    map['kl'] = _kl;
    map['os'] = _os;
    map['el'] = _el;
    map['pa'] = _pa;
    map['ml'] = _ml;
    map['is'] = _isLang;
    map['bo'] = _bo;
    map['am'] = _am;
    map['io'] = _io;
    map['ku'] = _ku;
    map['yo'] = _yo;
    map['tg'] = _tg;
    map['feature_name'] = _featureName;
    map['kw'] = _kw;
    map['fo'] = _fo;
    map['tl'] = _tl;
    map['sk'] = _sk;
    map['my'] = _my;
    map['ga'] = _ga;
    map['br'] = _br;
    map['fa'] = _fa;
    map['cy'] = _cy;
    map['gd'] = _gd;
    map['tt'] = _tt;
    map['gl'] = _gl;
    map['sv'] = _sv;
    map['ar'] = _ar;
    map['lt'] = _lt;
    map['th'] = _th;
    map['se'] = _se;
    map['sq'] = _sq;
    map['ie'] = _ie;
    map['tr'] = _tr;
    map['bg'] = _bg;
    map['no'] = _no;
    map['ta'] = _ta;
    map['az'] = _az;
    map['uz'] = _uz;
    map['pl'] = _pl;
    return map;
  }

}