class RecipeModel {
  int from;
  int to;
  int count;
  Links lLinks;
  List<Hits> hits;

  RecipeModel({this.from, this.to, this.count, this.lLinks, this.hits});

  RecipeModel.fromJson(Map<String, dynamic> json) {
    from = json['from'];
    to = json['to'];
    count = json['count'];
    lLinks = json['_links'] != null ? new Links.fromJson(json['_links']) : null;
    if (json['hits'] != null) {
      hits = <Hits>[];
      json['hits'].forEach((v) {
        hits.add(new Hits.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['from'] = this.from;
    data['to'] = this.to;
    data['count'] = this.count;
    if (this.lLinks != null) {
      data['_links'] = this.lLinks.toJson();
    }
    if (this.hits != null) {
      data['hits'] = this.hits.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Links {
  Next next;

  Links({this.next});

  Links.fromJson(Map<String, dynamic> json) {
    next = json['next'] != null ? new Next.fromJson(json['next']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.next != null) {
      data['next'] = this.next.toJson();
    }
    return data;
  }
}

class Next {
  String href;
  String title;

  Next({this.href, this.title});

  Next.fromJson(Map<String, dynamic> json) {
    href = json['href'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['href'] = this.href;
    data['title'] = this.title;
    return data;
  }
}

class Hits {
  Recipe recipe;
  Links lLinks;

  Hits({this.recipe, this.lLinks});

  Hits.fromJson(Map<String, dynamic> json) {
    recipe =
        json['recipe'] != null ? new Recipe.fromJson(json['recipe']) : null;
    lLinks = json['_links'] != null ? new Links.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.recipe != null) {
      data['recipe'] = this.recipe.toJson();
    }
    if (this.lLinks != null) {
      data['_links'] = this.lLinks.toJson();
    }
    return data;
  }
}

class Recipe {
  String uri;
  String label;
  String image;
  String source;
  String url;
  String shareAs;
  double yield;
  List<String> dietLabels;
  List<String> healthLabels;
  List<String> cautions;
  List<String> ingredientLines;
  List<Ingredients> ingredients;
  double calories;
  double totalWeight;
  int totalTime;
  List<String> cuisineType;
  List<String> mealType;
  List<String> dishType;
  TotalNutrients totalNutrients;
  TotalDaily totalDaily;
  List<Digest> digest;

  Recipe(
      {this.uri,
      this.label,
      this.image,
      this.source,
      this.url,
      this.shareAs,
      this.yield,
      this.dietLabels,
      this.healthLabels,
      this.cautions,
      this.ingredientLines,
      this.ingredients,
      this.calories,
      this.totalWeight,
      this.totalTime,
      this.cuisineType,
      this.mealType,
      this.dishType,
      this.totalNutrients,
      this.totalDaily,
      this.digest});

  Recipe.fromJson(Map<String, dynamic> json) {
    uri = json['uri'];
    label = json['label'];
    image = json['image'];
    source = json['source'];
    url = json['url'];
    shareAs = json['shareAs'];
    yield = json['yield'];
    dietLabels = json['dietLabels'].cast<String>();
    healthLabels = json['healthLabels'].cast<String>();
    cautions = json['cautions'].cast<String>();
    ingredientLines = json['ingredientLines'].cast<String>();
    if (json['ingredients'] != null) {
      ingredients = <Ingredients>[];
      json['ingredients'].forEach((v) {
        ingredients.add(new Ingredients.fromJson(v));
      });
    }
    calories = json['calories'];
    totalWeight = json['totalWeight'];
    totalTime = json['totalTime'];
    cuisineType = json['cuisineType'].cast<String>();
    mealType = json['mealType'].cast<String>();
    dishType = json['dishType'].cast<String>();
    totalNutrients = json['totalNutrients'] != null
        ? new TotalNutrients.fromJson(json['totalNutrients'])
        : null;
    totalDaily = json['totalDaily'] != null
        ? new TotalDaily.fromJson(json['totalDaily'])
        : null;
    if (json['digest'] != null) {
      digest = <Digest>[];
      json['digest'].forEach((v) {
        digest.add(new Digest.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uri'] = this.uri;
    data['label'] = this.label;
    data['image'] = this.image;
    data['source'] = this.source;
    data['url'] = this.url;
    data['shareAs'] = this.shareAs;
    data['yield'] = this.yield;
    data['dietLabels'] = this.dietLabels;
    data['healthLabels'] = this.healthLabels;
    data['cautions'] = this.cautions;
    data['ingredientLines'] = this.ingredientLines;
    if (this.ingredients != null) {
      data['ingredients'] = this.ingredients.map((v) => v.toJson()).toList();
    }
    data['calories'] = this.calories;
    data['totalWeight'] = this.totalWeight;
    data['totalTime'] = this.totalTime;
    data['cuisineType'] = this.cuisineType;
    data['mealType'] = this.mealType;
    data['dishType'] = this.dishType;
    if (this.totalNutrients != null) {
      data['totalNutrients'] = this.totalNutrients.toJson();
    }
    if (this.totalDaily != null) {
      data['totalDaily'] = this.totalDaily.toJson();
    }
    if (this.digest != null) {
      data['digest'] = this.digest.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Ingredients {
  String text;
  double weight;
  String foodCategory;
  String foodId;
  String image;

  Ingredients(
      {this.text, this.weight, this.foodCategory, this.foodId, this.image});

  Ingredients.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    weight = json['weight'];
    foodCategory = json['foodCategory'];
    foodId = json['foodId'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['weight'] = this.weight;
    data['foodCategory'] = this.foodCategory;
    data['foodId'] = this.foodId;
    data['image'] = this.image;
    return data;
  }
}

class TotalNutrients {
  ENERCKCAL eNERCKCAL;
  ENERCKCAL fAT;
  ENERCKCAL fASAT;
  ENERCKCAL fAMS;
  ENERCKCAL fAPU;
  ENERCKCAL cHOCDF;
  ENERCKCAL fIBTG;
  ENERCKCAL sUGAR;
  ENERCKCAL sUGARAdded;
  ENERCKCAL pROCNT;
  ENERCKCAL cHOLE;
  ENERCKCAL nA;
  ENERCKCAL cA;
  ENERCKCAL mG;
  ENERCKCAL k;
  ENERCKCAL fE;
  ENERCKCAL zN;
  ENERCKCAL p;
  ENERCKCAL vITARAE;
  ENERCKCAL vITC;
  ENERCKCAL tHIA;
  ENERCKCAL rIBF;
  ENERCKCAL nIA;
  ENERCKCAL vITB6A;
  ENERCKCAL fOLDFE;
  ENERCKCAL fOLFD;
  FOLAC fOLAC;
  ENERCKCAL vITB12;
  ENERCKCAL vITD;
  ENERCKCAL tOCPHA;
  ENERCKCAL vITK1;
  ENERCKCAL wATER;
  ENERCKCAL fATRN;

  TotalNutrients(
      {this.eNERCKCAL,
      this.fAT,
      this.fASAT,
      this.fAMS,
      this.fAPU,
      this.cHOCDF,
      this.fIBTG,
      this.sUGAR,
      this.sUGARAdded,
      this.pROCNT,
      this.cHOLE,
      this.nA,
      this.cA,
      this.mG,
      this.k,
      this.fE,
      this.zN,
      this.p,
      this.vITARAE,
      this.vITC,
      this.tHIA,
      this.rIBF,
      this.nIA,
      this.vITB6A,
      this.fOLDFE,
      this.fOLFD,
      this.fOLAC,
      this.vITB12,
      this.vITD,
      this.tOCPHA,
      this.vITK1,
      this.wATER,
      this.fATRN});

  TotalNutrients.fromJson(Map<String, dynamic> json) {
    eNERCKCAL = json['ENERC_KCAL'] != null
        ? new ENERCKCAL.fromJson(json['ENERC_KCAL'])
        : null;
    fAT = json['FAT'] != null ? new ENERCKCAL.fromJson(json['FAT']) : null;
    fASAT =
        json['FASAT'] != null ? new ENERCKCAL.fromJson(json['FASAT']) : null;
    fAMS = json['FAMS'] != null ? new ENERCKCAL.fromJson(json['FAMS']) : null;
    fAPU = json['FAPU'] != null ? new ENERCKCAL.fromJson(json['FAPU']) : null;
    cHOCDF =
        json['CHOCDF'] != null ? new ENERCKCAL.fromJson(json['CHOCDF']) : null;
    fIBTG =
        json['FIBTG'] != null ? new ENERCKCAL.fromJson(json['FIBTG']) : null;
    sUGAR =
        json['SUGAR'] != null ? new ENERCKCAL.fromJson(json['SUGAR']) : null;
    sUGARAdded = json['SUGAR.added'] != null
        ? new ENERCKCAL.fromJson(json['SUGAR.added'])
        : null;
    pROCNT =
        json['PROCNT'] != null ? new ENERCKCAL.fromJson(json['PROCNT']) : null;
    cHOLE =
        json['CHOLE'] != null ? new ENERCKCAL.fromJson(json['CHOLE']) : null;
    nA = json['NA'] != null ? new ENERCKCAL.fromJson(json['NA']) : null;
    cA = json['CA'] != null ? new ENERCKCAL.fromJson(json['CA']) : null;
    mG = json['MG'] != null ? new ENERCKCAL.fromJson(json['MG']) : null;
    k = json['K'] != null ? new ENERCKCAL.fromJson(json['K']) : null;
    fE = json['FE'] != null ? new ENERCKCAL.fromJson(json['FE']) : null;
    zN = json['ZN'] != null ? new ENERCKCAL.fromJson(json['ZN']) : null;
    p = json['P'] != null ? new ENERCKCAL.fromJson(json['P']) : null;
    vITARAE = json['VITA_RAE'] != null
        ? new ENERCKCAL.fromJson(json['VITA_RAE'])
        : null;
    vITC = json['VITC'] != null ? new ENERCKCAL.fromJson(json['VITC']) : null;
    tHIA = json['THIA'] != null ? new ENERCKCAL.fromJson(json['THIA']) : null;
    rIBF = json['RIBF'] != null ? new ENERCKCAL.fromJson(json['RIBF']) : null;
    nIA = json['NIA'] != null ? new ENERCKCAL.fromJson(json['NIA']) : null;
    vITB6A =
        json['VITB6A'] != null ? new ENERCKCAL.fromJson(json['VITB6A']) : null;
    fOLDFE =
        json['FOLDFE'] != null ? new ENERCKCAL.fromJson(json['FOLDFE']) : null;
    fOLFD =
        json['FOLFD'] != null ? new ENERCKCAL.fromJson(json['FOLFD']) : null;
    fOLAC = json['FOLAC'] != null ? new FOLAC.fromJson(json['FOLAC']) : null;
    vITB12 =
        json['VITB12'] != null ? new ENERCKCAL.fromJson(json['VITB12']) : null;
    vITD = json['VITD'] != null ? new ENERCKCAL.fromJson(json['VITD']) : null;
    tOCPHA =
        json['TOCPHA'] != null ? new ENERCKCAL.fromJson(json['TOCPHA']) : null;
    vITK1 =
        json['VITK1'] != null ? new ENERCKCAL.fromJson(json['VITK1']) : null;
    wATER =
        json['WATER'] != null ? new ENERCKCAL.fromJson(json['WATER']) : null;
    fATRN =
        json['FATRN'] != null ? new ENERCKCAL.fromJson(json['FATRN']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.eNERCKCAL != null) {
      data['ENERC_KCAL'] = this.eNERCKCAL.toJson();
    }
    if (this.fAT != null) {
      data['FAT'] = this.fAT.toJson();
    }
    if (this.fASAT != null) {
      data['FASAT'] = this.fASAT.toJson();
    }
    if (this.fAMS != null) {
      data['FAMS'] = this.fAMS.toJson();
    }
    if (this.fAPU != null) {
      data['FAPU'] = this.fAPU.toJson();
    }
    if (this.cHOCDF != null) {
      data['CHOCDF'] = this.cHOCDF.toJson();
    }
    if (this.fIBTG != null) {
      data['FIBTG'] = this.fIBTG.toJson();
    }
    if (this.sUGAR != null) {
      data['SUGAR'] = this.sUGAR.toJson();
    }
    if (this.sUGARAdded != null) {
      data['SUGAR.added'] = this.sUGARAdded.toJson();
    }
    if (this.pROCNT != null) {
      data['PROCNT'] = this.pROCNT.toJson();
    }
    if (this.cHOLE != null) {
      data['CHOLE'] = this.cHOLE.toJson();
    }
    if (this.nA != null) {
      data['NA'] = this.nA.toJson();
    }
    if (this.cA != null) {
      data['CA'] = this.cA.toJson();
    }
    if (this.mG != null) {
      data['MG'] = this.mG.toJson();
    }
    if (this.k != null) {
      data['K'] = this.k.toJson();
    }
    if (this.fE != null) {
      data['FE'] = this.fE.toJson();
    }
    if (this.zN != null) {
      data['ZN'] = this.zN.toJson();
    }
    if (this.p != null) {
      data['P'] = this.p.toJson();
    }
    if (this.vITARAE != null) {
      data['VITA_RAE'] = this.vITARAE.toJson();
    }
    if (this.vITC != null) {
      data['VITC'] = this.vITC.toJson();
    }
    if (this.tHIA != null) {
      data['THIA'] = this.tHIA.toJson();
    }
    if (this.rIBF != null) {
      data['RIBF'] = this.rIBF.toJson();
    }
    if (this.nIA != null) {
      data['NIA'] = this.nIA.toJson();
    }
    if (this.vITB6A != null) {
      data['VITB6A'] = this.vITB6A.toJson();
    }
    if (this.fOLDFE != null) {
      data['FOLDFE'] = this.fOLDFE.toJson();
    }
    if (this.fOLFD != null) {
      data['FOLFD'] = this.fOLFD.toJson();
    }
    if (this.fOLAC != null) {
      data['FOLAC'] = this.fOLAC.toJson();
    }
    if (this.vITB12 != null) {
      data['VITB12'] = this.vITB12.toJson();
    }
    if (this.vITD != null) {
      data['VITD'] = this.vITD.toJson();
    }
    if (this.tOCPHA != null) {
      data['TOCPHA'] = this.tOCPHA.toJson();
    }
    if (this.vITK1 != null) {
      data['VITK1'] = this.vITK1.toJson();
    }
    if (this.wATER != null) {
      data['WATER'] = this.wATER.toJson();
    }
    if (this.fATRN != null) {
      data['FATRN'] = this.fATRN.toJson();
    }
    return data;
  }
}

class ENERCKCAL {
  String label;
  double quantity;
  String unit;

  ENERCKCAL({this.label, this.quantity, this.unit});

  ENERCKCAL.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    quantity = json['quantity'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['quantity'] = this.quantity;
    data['unit'] = this.unit;
    return data;
  }
}

class FOLAC {
  String label;
  int quantity;
  String unit;

  FOLAC({this.label, this.quantity, this.unit});

  FOLAC.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    quantity = json['quantity'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['quantity'] = this.quantity;
    data['unit'] = this.unit;
    return data;
  }
}

class TotalDaily {
  ENERCKCAL eNERCKCAL;
  ENERCKCAL fAT;
  ENERCKCAL fASAT;
  ENERCKCAL cHOCDF;
  ENERCKCAL fIBTG;
  ENERCKCAL pROCNT;
  ENERCKCAL cHOLE;
  ENERCKCAL nA;
  ENERCKCAL cA;
  ENERCKCAL mG;
  ENERCKCAL k;
  ENERCKCAL fE;
  ENERCKCAL zN;
  ENERCKCAL p;
  ENERCKCAL vITARAE;
  ENERCKCAL vITC;
  ENERCKCAL tHIA;
  ENERCKCAL rIBF;
  ENERCKCAL nIA;
  ENERCKCAL vITB6A;
  ENERCKCAL fOLDFE;
  ENERCKCAL vITB12;
  ENERCKCAL vITD;
  ENERCKCAL tOCPHA;
  ENERCKCAL vITK1;

  TotalDaily(
      {this.eNERCKCAL,
      this.fAT,
      this.fASAT,
      this.cHOCDF,
      this.fIBTG,
      this.pROCNT,
      this.cHOLE,
      this.nA,
      this.cA,
      this.mG,
      this.k,
      this.fE,
      this.zN,
      this.p,
      this.vITARAE,
      this.vITC,
      this.tHIA,
      this.rIBF,
      this.nIA,
      this.vITB6A,
      this.fOLDFE,
      this.vITB12,
      this.vITD,
      this.tOCPHA,
      this.vITK1});

  TotalDaily.fromJson(Map<String, dynamic> json) {
    eNERCKCAL = json['ENERC_KCAL'] != null
        ? new ENERCKCAL.fromJson(json['ENERC_KCAL'])
        : null;
    fAT = json['FAT'] != null ? new ENERCKCAL.fromJson(json['FAT']) : null;
    fASAT =
        json['FASAT'] != null ? new ENERCKCAL.fromJson(json['FASAT']) : null;
    cHOCDF =
        json['CHOCDF'] != null ? new ENERCKCAL.fromJson(json['CHOCDF']) : null;
    fIBTG =
        json['FIBTG'] != null ? new ENERCKCAL.fromJson(json['FIBTG']) : null;
    pROCNT =
        json['PROCNT'] != null ? new ENERCKCAL.fromJson(json['PROCNT']) : null;
    cHOLE =
        json['CHOLE'] != null ? new ENERCKCAL.fromJson(json['CHOLE']) : null;
    nA = json['NA'] != null ? new ENERCKCAL.fromJson(json['NA']) : null;
    cA = json['CA'] != null ? new ENERCKCAL.fromJson(json['CA']) : null;
    mG = json['MG'] != null ? new ENERCKCAL.fromJson(json['MG']) : null;
    k = json['K'] != null ? new ENERCKCAL.fromJson(json['K']) : null;
    fE = json['FE'] != null ? new ENERCKCAL.fromJson(json['FE']) : null;
    zN = json['ZN'] != null ? new ENERCKCAL.fromJson(json['ZN']) : null;
    p = json['P'] != null ? new ENERCKCAL.fromJson(json['P']) : null;
    vITARAE = json['VITA_RAE'] != null
        ? new ENERCKCAL.fromJson(json['VITA_RAE'])
        : null;
    vITC = json['VITC'] != null ? new ENERCKCAL.fromJson(json['VITC']) : null;
    tHIA = json['THIA'] != null ? new ENERCKCAL.fromJson(json['THIA']) : null;
    rIBF = json['RIBF'] != null ? new ENERCKCAL.fromJson(json['RIBF']) : null;
    nIA = json['NIA'] != null ? new ENERCKCAL.fromJson(json['NIA']) : null;
    vITB6A =
        json['VITB6A'] != null ? new ENERCKCAL.fromJson(json['VITB6A']) : null;
    fOLDFE =
        json['FOLDFE'] != null ? new ENERCKCAL.fromJson(json['FOLDFE']) : null;
    vITB12 =
        json['VITB12'] != null ? new ENERCKCAL.fromJson(json['VITB12']) : null;
    vITD = json['VITD'] != null ? new ENERCKCAL.fromJson(json['VITD']) : null;
    tOCPHA =
        json['TOCPHA'] != null ? new ENERCKCAL.fromJson(json['TOCPHA']) : null;
    vITK1 =
        json['VITK1'] != null ? new ENERCKCAL.fromJson(json['VITK1']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.eNERCKCAL != null) {
      data['ENERC_KCAL'] = this.eNERCKCAL.toJson();
    }
    if (this.fAT != null) {
      data['FAT'] = this.fAT.toJson();
    }
    if (this.fASAT != null) {
      data['FASAT'] = this.fASAT.toJson();
    }
    if (this.cHOCDF != null) {
      data['CHOCDF'] = this.cHOCDF.toJson();
    }
    if (this.fIBTG != null) {
      data['FIBTG'] = this.fIBTG.toJson();
    }
    if (this.pROCNT != null) {
      data['PROCNT'] = this.pROCNT.toJson();
    }
    if (this.cHOLE != null) {
      data['CHOLE'] = this.cHOLE.toJson();
    }
    if (this.nA != null) {
      data['NA'] = this.nA.toJson();
    }
    if (this.cA != null) {
      data['CA'] = this.cA.toJson();
    }
    if (this.mG != null) {
      data['MG'] = this.mG.toJson();
    }
    if (this.k != null) {
      data['K'] = this.k.toJson();
    }
    if (this.fE != null) {
      data['FE'] = this.fE.toJson();
    }
    if (this.zN != null) {
      data['ZN'] = this.zN.toJson();
    }
    if (this.p != null) {
      data['P'] = this.p.toJson();
    }
    if (this.vITARAE != null) {
      data['VITA_RAE'] = this.vITARAE.toJson();
    }
    if (this.vITC != null) {
      data['VITC'] = this.vITC.toJson();
    }
    if (this.tHIA != null) {
      data['THIA'] = this.tHIA.toJson();
    }
    if (this.rIBF != null) {
      data['RIBF'] = this.rIBF.toJson();
    }
    if (this.nIA != null) {
      data['NIA'] = this.nIA.toJson();
    }
    if (this.vITB6A != null) {
      data['VITB6A'] = this.vITB6A.toJson();
    }
    if (this.fOLDFE != null) {
      data['FOLDFE'] = this.fOLDFE.toJson();
    }
    if (this.vITB12 != null) {
      data['VITB12'] = this.vITB12.toJson();
    }
    if (this.vITD != null) {
      data['VITD'] = this.vITD.toJson();
    }
    if (this.tOCPHA != null) {
      data['TOCPHA'] = this.tOCPHA.toJson();
    }
    if (this.vITK1 != null) {
      data['VITK1'] = this.vITK1.toJson();
    }
    return data;
  }
}

class Digest {
  String label;
  String tag;
  String schemaOrgTag;
  double total;
  bool hasRDI;
  double daily;
  String unit;
  List<Sub> sub;

  Digest(
      {this.label,
      this.tag,
      this.schemaOrgTag,
      this.total,
      this.hasRDI,
      this.daily,
      this.unit,
      this.sub});

  Digest.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    tag = json['tag'];
    schemaOrgTag = json['schemaOrgTag'];
    total = json['total'];
    hasRDI = json['hasRDI'];
    daily = json['daily'];
    unit = json['unit'];
    if (json['sub'] != null) {
      sub = <Sub>[];
      json['sub'].forEach((v) {
        sub.add(new Sub.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['tag'] = this.tag;
    data['schemaOrgTag'] = this.schemaOrgTag;
    data['total'] = this.total;
    data['hasRDI'] = this.hasRDI;
    data['daily'] = this.daily;
    data['unit'] = this.unit;
    if (this.sub != null) {
      data['sub'] = this.sub.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Sub {
  String label;
  String tag;
  String schemaOrgTag;
  double total;
  bool hasRDI;
  double daily;
  String unit;

  Sub(
      {this.label,
      this.tag,
      this.schemaOrgTag,
      this.total,
      this.hasRDI,
      this.daily,
      this.unit});

  Sub.fromJson(Map<String, dynamic> json) {
    label = json['label'];
    tag = json['tag'];
    schemaOrgTag = json['schemaOrgTag'];
    total = json['total'];
    hasRDI = json['hasRDI'];
    daily = json['daily'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['tag'] = this.tag;
    data['schemaOrgTag'] = this.schemaOrgTag;
    data['total'] = this.total;
    data['hasRDI'] = this.hasRDI;
    data['daily'] = this.daily;
    data['unit'] = this.unit;
    return data;
  }
}
