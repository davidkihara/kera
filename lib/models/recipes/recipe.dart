// To parse this JSON data, do
//
//     final recipe = recipeFromJson(jsonString);

import 'dart:convert';

Recipe recipeFromJson(String str) => Recipe.fromJson(json.decode(str));

String recipeToJson(Recipe data) => json.encode(data.toJson());

class Recipe {
  Recipe({
    required this.count,
    required this.results,
  });

  int count;
  List<Result> results;

  factory Recipe.fromJson(Map<String, dynamic> json) => Recipe(
        count: json["count"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
      };
}

class Result {
  Result({
    required this.tags,
    this.compilations,
    required this.createdAt,
    required this.id,
    this.brand,
    this.sections,
    required this.thumbnailAltText,
    this.isOneTop,
    required this.facebookPosts,
    required this.showId,
    required this.name,
    required this.thumbnailUrl,
    required this.isShoppable,
    this.seoTitle,
    this.seoPath,
    required this.slug,
    required this.draftStatus,
    required this.show,
    required this.updatedAt,
    required this.renditions,
    this.originalVideoUrl,
    required this.promotion,
    this.price,
    this.nutrition,
    this.numServings,
    this.beautyUrl,
    this.totalTimeTier,
    this.videoAdContent,
    required this.canonicalId,
    this.brandId,
    this.inspiredByUrl,
    this.totalTimeMinutes,
    this.tipsAndRatingsEnabled,
    required this.description,
    required this.videoUrl,
    this.topics,
    this.yields,
    this.instructions,
    this.keywords,
    this.servingsNounSingular,
    this.cookTimeMinutes,
    required this.aspectRatio,
    required this.credits,
    this.servingsNounPlural,
    required this.videoId,
    this.nutritionVisibility,
    this.userRatings,
    this.prepTimeMinutes,
    required this.approvedAt,
    required this.country,
    required this.language,
    this.buzzId,
    this.recipes,
  });

  List<Tag> tags;
  List<Compilation>? compilations;
  int createdAt;
  int id;
  Brand? brand;
  List<Section>? sections;
  String thumbnailAltText;
  bool? isOneTop;
  List<dynamic> facebookPosts;
  int showId;
  String name;
  String thumbnailUrl;
  bool isShoppable;
  String? seoTitle;
  dynamic seoPath;
  String slug;
  DraftStatus draftStatus;
  Show show;
  int updatedAt;
  List<Rendition> renditions;
  String? originalVideoUrl;
  Promotion promotion;
  Price? price;
  Nutrition? nutrition;
  int? numServings;
  dynamic beautyUrl;
  TotalTimeTier? totalTimeTier;
  VideoAdContent? videoAdContent;
  String canonicalId;
  int? brandId;
  String? inspiredByUrl;
  int? totalTimeMinutes;
  bool? tipsAndRatingsEnabled;
  String description;
  String videoUrl;
  List<Topic>? topics;
  String? yields;
  List<Instruction>? instructions;
  String? keywords;
  String? servingsNounSingular;
  int? cookTimeMinutes;
  AspectRatio aspectRatio;
  List<Brand> credits;
  String? servingsNounPlural;
  int videoId;
  NutritionVisibility? nutritionVisibility;
  UserRatings? userRatings;
  int? prepTimeMinutes;
  int approvedAt;
  Country country;
  Language language;
  dynamic buzzId;
  List<RecipeElement>? recipes;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        tags: List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
        compilations: json["compilations"] == null
            ? []
            : List<Compilation>.from(
                json["compilations"]!.map((x) => Compilation.fromJson(x))),
        createdAt: json["created_at"],
        id: json["id"],
        brand: json["brand"] == null ? null : Brand.fromJson(json["brand"]),
        sections: json["sections"] == null
            ? []
            : List<Section>.from(
                json["sections"]!.map((x) => Section.fromJson(x))),
        thumbnailAltText: json["thumbnail_alt_text"],
        isOneTop: json["is_one_top"],
        facebookPosts: List<dynamic>.from(json["facebook_posts"].map((x) => x)),
        showId: json["show_id"],
        name: json["name"],
        thumbnailUrl: json["thumbnail_url"],
        isShoppable: json["is_shoppable"],
        seoTitle: json["seo_title"],
        seoPath: json["seo_path"],
        slug: json["slug"],
        draftStatus: draftStatusValues.map[json["draft_status"]]!,
        show: Show.fromJson(json["show"]),
        updatedAt: json["updated_at"],
        renditions: List<Rendition>.from(
            json["renditions"].map((x) => Rendition.fromJson(x))),
        originalVideoUrl: json["original_video_url"],
        promotion: promotionValues.map[json["promotion"]]!,
        price: json["price"] == null ? null : Price.fromJson(json["price"]),
        nutrition: json["nutrition"] == null
            ? null
            : Nutrition.fromJson(json["nutrition"]),
        numServings: json["num_servings"],
        beautyUrl: json["beauty_url"],
        totalTimeTier: json["total_time_tier"] == null
            ? null
            : TotalTimeTier.fromJson(json["total_time_tier"]),
        videoAdContent:
            videoAdContentValues.map[json["video_ad_content"]] ?? null,
        canonicalId: json["canonical_id"],
        brandId: json["brand_id"],
        inspiredByUrl: json["inspired_by_url"],
        totalTimeMinutes: json["total_time_minutes"],
        tipsAndRatingsEnabled: json["tips_and_ratings_enabled"],
        description: json["description"],
        videoUrl: json["video_url"],
        topics: json["topics"] == null
            ? []
            : List<Topic>.from(json["topics"]!.map((x) => Topic.fromJson(x))),
        yields: json["yields"],
        instructions: json["instructions"] == null
            ? []
            : List<Instruction>.from(
                json["instructions"]!.map((x) => Instruction.fromJson(x))),
        keywords: json["keywords"],
        servingsNounSingular: json["servings_noun_singular"],
        cookTimeMinutes: json["cook_time_minutes"],
        aspectRatio: aspectRatioValues.map[json["aspect_ratio"]]!,
        credits:
            List<Brand>.from(json["credits"].map((x) => Brand.fromJson(x))),
        servingsNounPlural: json["servings_noun_plural"],
        videoId: json["video_id"],
        nutritionVisibility:
            nutritionVisibilityValues.map[json["nutrition_visibility"]] ?? null,
        userRatings: json["user_ratings"] == null
            ? null
            : UserRatings.fromJson(json["user_ratings"]),
        prepTimeMinutes: json["prep_time_minutes"],
        approvedAt: json["approved_at"],
        country: countryValues.map[json["country"]]!,
        language: languageValues.map[json["language"]]!,
        buzzId: json["buzz_id"],
        recipes: json["recipes"] == null
            ? []
            : List<RecipeElement>.from(
                json["recipes"]!.map((x) => RecipeElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "tags": List<dynamic>.from(tags.map((x) => x.toJson())),
        "compilations": compilations == null
            ? []
            : List<dynamic>.from(compilations!.map((x) => x.toJson())),
        "created_at": createdAt,
        "id": id,
        "brand": brand?.toJson(),
        "sections": sections == null
            ? []
            : List<dynamic>.from(sections!.map((x) => x.toJson())),
        "thumbnail_alt_text": thumbnailAltText,
        "is_one_top": isOneTop,
        "facebook_posts": List<dynamic>.from(facebookPosts.map((x) => x)),
        "show_id": showId,
        "name": name,
        "thumbnail_url": thumbnailUrl,
        "is_shoppable": isShoppable,
        "seo_title": seoTitle,
        "seo_path": seoPath,
        "slug": slug,
        "draft_status": draftStatusValues.reverse[draftStatus],
        "show": show.toJson(),
        "updated_at": updatedAt,
        "renditions": List<dynamic>.from(renditions.map((x) => x.toJson())),
        "original_video_url": originalVideoUrl,
        "promotion": promotionValues.reverse[promotion],
        "price": price?.toJson(),
        "nutrition": nutrition?.toJson(),
        "num_servings": numServings,
        "beauty_url": beautyUrl,
        "total_time_tier": totalTimeTier?.toJson(),
        "video_ad_content": videoAdContentValues.reverse[videoAdContent],
        "canonical_id": canonicalId,
        "brand_id": brandId,
        "inspired_by_url": inspiredByUrl,
        "total_time_minutes": totalTimeMinutes,
        "tips_and_ratings_enabled": tipsAndRatingsEnabled,
        "description": description,
        "video_url": videoUrl,
        "topics": topics == null
            ? []
            : List<dynamic>.from(topics!.map((x) => x.toJson())),
        "yields": yields,
        "instructions": instructions == null
            ? []
            : List<dynamic>.from(instructions!.map((x) => x.toJson())),
        "keywords": keywords,
        "servings_noun_singular": servingsNounSingular,
        "cook_time_minutes": cookTimeMinutes,
        "aspect_ratio": aspectRatioValues.reverse[aspectRatio],
        "credits": List<dynamic>.from(credits.map((x) => x.toJson())),
        "servings_noun_plural": servingsNounPlural,
        "video_id": videoId,
        "nutrition_visibility":
            nutritionVisibilityValues.reverse[nutritionVisibility],
        "user_ratings": userRatings?.toJson(),
        "prep_time_minutes": prepTimeMinutes,
        "approved_at": approvedAt,
        "country": countryValues.reverse[country],
        "language": languageValues.reverse[language],
        "buzz_id": buzzId,
        "recipes": recipes == null
            ? []
            : List<dynamic>.from(recipes!.map((x) => x.toJson())),
      };
}

enum AspectRatio { THE_916, THE_11 }

final aspectRatioValues =
    EnumValues({"1:1": AspectRatio.THE_11, "9:16": AspectRatio.THE_916});

class Brand {
  Brand({
    this.imageUrl,
    required this.name,
    this.id,
    this.slug,
    this.type,
  });

  String? imageUrl;
  String name;
  int? id;
  Slug? slug;
  BrandType? type;

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        imageUrl: json["image_url"],
        name: json["name"],
        id: json["id"],
        slug: slugValues.map[json["slug"]] ?? null,
        type: brandTypeValues.map[json["type"]] ?? null,
      );

  Map<String, dynamic> toJson() => {
        "image_url": imageUrl,
        "name": name,
        "id": id,
        "slug": slugValues.reverse[slug],
        "type": brandTypeValues.reverse[type],
      };
}

enum Slug { INCREDIBLE_EGG, MCCORMICK, FISHER_R_NUTS }

final slugValues = EnumValues({
  "fisher-r-nuts": Slug.FISHER_R_NUTS,
  "incredible-egg": Slug.INCREDIBLE_EGG,
  "mccormick": Slug.MCCORMICK
});

enum BrandType { INTERNAL, BRAND }

final brandTypeValues =
    EnumValues({"brand": BrandType.BRAND, "internal": BrandType.INTERNAL});

class Compilation {
  Compilation({
    required this.isShoppable,
    required this.createdAt,
    required this.name,
    required this.promotion,
    required this.aspectRatio,
    required this.country,
    required this.language,
    required this.videoUrl,
    required this.slug,
    required this.videoId,
    required this.facebookPosts,
    required this.show,
    required this.thumbnailUrl,
    required this.approvedAt,
    required this.canonicalId,
    this.beautyUrl,
    this.keywords,
    required this.description,
    required this.draftStatus,
    required this.thumbnailAltText,
    required this.id,
    this.buzzId,
  });

  bool isShoppable;
  int createdAt;
  String name;
  Promotion promotion;
  AspectRatio aspectRatio;
  Country country;
  Language language;
  String videoUrl;
  String slug;
  int videoId;
  List<dynamic> facebookPosts;
  List<Show> show;
  String thumbnailUrl;
  int approvedAt;
  String canonicalId;
  dynamic beautyUrl;
  dynamic keywords;
  String description;
  DraftStatus draftStatus;
  String thumbnailAltText;
  int id;
  dynamic buzzId;

  factory Compilation.fromJson(Map<String, dynamic> json) => Compilation(
        isShoppable: json["is_shoppable"],
        createdAt: json["created_at"],
        name: json["name"],
        promotion: promotionValues.map[json["promotion"]]!,
        aspectRatio: aspectRatioValues.map[json["aspect_ratio"]]!,
        country: countryValues.map[json["country"]]!,
        language: languageValues.map[json["language"]]!,
        videoUrl: json["video_url"],
        slug: json["slug"],
        videoId: json["video_id"],
        facebookPosts: List<dynamic>.from(json["facebook_posts"].map((x) => x)),
        show: List<Show>.from(json["show"].map((x) => Show.fromJson(x))),
        thumbnailUrl: json["thumbnail_url"],
        approvedAt: json["approved_at"],
        canonicalId: json["canonical_id"],
        beautyUrl: json["beauty_url"],
        keywords: json["keywords"],
        description: json["description"],
        draftStatus: draftStatusValues.map[json["draft_status"]]!,
        thumbnailAltText: json["thumbnail_alt_text"],
        id: json["id"],
        buzzId: json["buzz_id"],
      );

  Map<String, dynamic> toJson() => {
        "is_shoppable": isShoppable,
        "created_at": createdAt,
        "name": name,
        "promotion": promotionValues.reverse[promotion],
        "aspect_ratio": aspectRatioValues.reverse[aspectRatio],
        "country": countryValues.reverse[country],
        "language": languageValues.reverse[language],
        "video_url": videoUrl,
        "slug": slug,
        "video_id": videoId,
        "facebook_posts": List<dynamic>.from(facebookPosts.map((x) => x)),
        "show": List<dynamic>.from(show.map((x) => x.toJson())),
        "thumbnail_url": thumbnailUrl,
        "approved_at": approvedAt,
        "canonical_id": canonicalId,
        "beauty_url": beautyUrl,
        "keywords": keywords,
        "description": description,
        "draft_status": draftStatusValues.reverse[draftStatus],
        "thumbnail_alt_text": thumbnailAltText,
        "id": id,
        "buzz_id": buzzId,
      };
}

enum Country { US }

final countryValues = EnumValues({"US": Country.US});

enum DraftStatus { PUBLISHED }

final draftStatusValues = EnumValues({"published": DraftStatus.PUBLISHED});

enum Language { ENG }

final languageValues = EnumValues({"eng": Language.ENG});

enum Promotion { FULL }

final promotionValues = EnumValues({"full": Promotion.FULL});

class Show {
  Show({
    required this.id,
    required this.name,
  });

  int id;
  ShowName name;

  factory Show.fromJson(Map<String, dynamic> json) => Show(
        id: json["id"],
        name: showNameValues.map[json["name"]]!,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": showNameValues.reverse[name],
      };
}

enum ShowName { TASTY }

final showNameValues = EnumValues({"Tasty": ShowName.TASTY});

class Instruction {
  Instruction({
    this.appliance,
    required this.endTime,
    this.temperature,
    required this.id,
    required this.position,
    required this.displayText,
    required this.startTime,
  });

  String? appliance;
  int endTime;
  int? temperature;
  int id;
  int position;
  String displayText;
  int startTime;

  factory Instruction.fromJson(Map<String, dynamic> json) => Instruction(
        appliance: json["appliance"],
        endTime: json["end_time"],
        temperature: json["temperature"],
        id: json["id"],
        position: json["position"],
        displayText: json["display_text"],
        startTime: json["start_time"],
      );

  Map<String, dynamic> toJson() => {
        "appliance": appliance,
        "end_time": endTime,
        "temperature": temperature,
        "id": id,
        "position": position,
        "display_text": displayText,
        "start_time": startTime,
      };
}

class Nutrition {
  Nutrition({
    this.carbohydrates,
    this.fiber,
    this.updatedAt,
    this.protein,
    this.fat,
    this.calories,
    this.sugar,
  });

  int? carbohydrates;
  int? fiber;
  DateTime? updatedAt;
  int? protein;
  int? fat;
  int? calories;
  int? sugar;

  factory Nutrition.fromJson(Map<String, dynamic> json) => Nutrition(
        carbohydrates: json["carbohydrates"],
        fiber: json["fiber"],
        updatedAt: json["updated_at"] == null
            ? null
            : DateTime.parse(json["updated_at"]),
        protein: json["protein"],
        fat: json["fat"],
        calories: json["calories"],
        sugar: json["sugar"],
      );

  Map<String, dynamic> toJson() => {
        "carbohydrates": carbohydrates,
        "fiber": fiber,
        "updated_at": updatedAt?.toIso8601String(),
        "protein": protein,
        "fat": fat,
        "calories": calories,
        "sugar": sugar,
      };
}

enum NutritionVisibility { AUTO }

final nutritionVisibilityValues =
    EnumValues({"auto": NutritionVisibility.AUTO});

class Price {
  Price({
    required this.total,
    required this.updatedAt,
    required this.portion,
    required this.consumptionTotal,
    required this.consumptionPortion,
  });

  int total;
  DateTime updatedAt;
  int portion;
  int consumptionTotal;
  int consumptionPortion;

  factory Price.fromJson(Map<String, dynamic> json) => Price(
        total: json["total"],
        updatedAt: DateTime.parse(json["updated_at"]),
        portion: json["portion"],
        consumptionTotal: json["consumption_total"],
        consumptionPortion: json["consumption_portion"],
      );

  Map<String, dynamic> toJson() => {
        "total": total,
        "updated_at": updatedAt.toIso8601String(),
        "portion": portion,
        "consumption_total": consumptionTotal,
        "consumption_portion": consumptionPortion,
      };
}

class RecipeElement {
  RecipeElement({
    required this.brandId,
    required this.totalTimeTier,
    required this.videoId,
    required this.createdAt,
    required this.servingsNounSingular,
    this.buzzId,
    required this.tipsAndRatingsEnabled,
    required this.cookTimeMinutes,
    required this.showId,
    required this.draftStatus,
    required this.isShoppable,
    required this.topics,
    required this.tags,
    required this.type,
    required this.totalTimeMinutes,
    required this.recipeId,
    required this.brand,
    required this.numServings,
    this.inspiredByUrl,
    required this.keywords,
    required this.aspectRatio,
    required this.videoUrl,
    required this.nutritionVisibility,
    required this.country,
    required this.language,
    required this.canonicalId,
    required this.userRatings,
    required this.show,
    required this.approvedAt,
    required this.servingsNounPlural,
    required this.index,
    required this.thumbnailAltText,
    required this.price,
    required this.compilations,
    required this.id,
    required this.seoTitle,
    required this.promotion,
    required this.facebookPosts,
    required this.sections,
    required this.description,
    required this.credits,
    required this.slug,
    required this.updatedAt,
    this.beautyUrl,
    required this.opType,
    required this.originalVideoUrl,
    this.seoPath,
    required this.name,
    required this.isOneTop,
    required this.renditions,
    required this.videoAdContent,
    required this.yields,
    required this.instructions,
    required this.nutrition,
    required this.prepTimeMinutes,
    required this.thumbnailUrl,
  });

  int brandId;
  TotalTimeTier totalTimeTier;
  int videoId;
  int createdAt;
  String servingsNounSingular;
  dynamic buzzId;
  bool tipsAndRatingsEnabled;
  int cookTimeMinutes;
  int showId;
  DraftStatus draftStatus;
  bool isShoppable;
  List<Topic> topics;
  List<Tag> tags;
  String type;
  int totalTimeMinutes;
  int recipeId;
  Brand brand;
  int numServings;
  dynamic inspiredByUrl;
  String keywords;
  AspectRatio aspectRatio;
  String videoUrl;
  NutritionVisibility nutritionVisibility;
  Country country;
  Language language;
  String canonicalId;
  UserRatings userRatings;
  Show show;
  int approvedAt;
  String servingsNounPlural;
  String index;
  String thumbnailAltText;
  Price price;
  List<Compilation> compilations;
  int id;
  String seoTitle;
  Promotion promotion;
  List<dynamic> facebookPosts;
  List<Section> sections;
  String description;
  List<Brand> credits;
  String slug;
  int updatedAt;
  dynamic beautyUrl;
  String opType;
  String originalVideoUrl;
  dynamic seoPath;
  String name;
  bool isOneTop;
  List<Rendition> renditions;
  VideoAdContent videoAdContent;
  String yields;
  List<Instruction> instructions;
  Nutrition nutrition;
  int prepTimeMinutes;
  String thumbnailUrl;

  factory RecipeElement.fromJson(Map<String, dynamic> json) => RecipeElement(
        brandId: json["brand_id"],
        totalTimeTier: TotalTimeTier.fromJson(json["total_time_tier"]),
        videoId: json["video_id"],
        createdAt: json["created_at"],
        servingsNounSingular: json["servings_noun_singular"],
        buzzId: json["buzz_id"],
        tipsAndRatingsEnabled: json["tips_and_ratings_enabled"],
        cookTimeMinutes: json["cook_time_minutes"],
        showId: json["show_id"],
        draftStatus: draftStatusValues.map[json["draft_status"]]!,
        isShoppable: json["is_shoppable"],
        topics: List<Topic>.from(json["topics"].map((x) => Topic.fromJson(x))),
        tags: List<Tag>.from(json["tags"].map((x) => Tag.fromJson(x))),
        type: json["_type"],
        totalTimeMinutes: json["total_time_minutes"],
        recipeId: json["id"],
        brand: Brand.fromJson(json["brand"]),
        numServings: json["num_servings"],
        inspiredByUrl: json["inspired_by_url"],
        keywords: json["keywords"],
        aspectRatio: aspectRatioValues.map[json["aspect_ratio"]]!,
        videoUrl: json["video_url"],
        nutritionVisibility:
            nutritionVisibilityValues.map[json["nutrition_visibility"]]!,
        country: countryValues.map[json["country"]]!,
        language: languageValues.map[json["language"]]!,
        canonicalId: json["canonical_id"],
        userRatings: UserRatings.fromJson(json["user_ratings"]),
        show: Show.fromJson(json["show"]),
        approvedAt: json["approved_at"],
        servingsNounPlural: json["servings_noun_plural"],
        index: json["_index"],
        thumbnailAltText: json["thumbnail_alt_text"],
        price: Price.fromJson(json["price"]),
        compilations: List<Compilation>.from(
            json["compilations"].map((x) => Compilation.fromJson(x))),
        id: json["_id"],
        seoTitle: json["seo_title"],
        promotion: promotionValues.map[json["promotion"]]!,
        facebookPosts: List<dynamic>.from(json["facebook_posts"].map((x) => x)),
        sections: List<Section>.from(
            json["sections"].map((x) => Section.fromJson(x))),
        description: json["description"],
        credits:
            List<Brand>.from(json["credits"].map((x) => Brand.fromJson(x))),
        slug: json["slug"],
        updatedAt: json["updated_at"],
        beautyUrl: json["beauty_url"],
        opType: json["_op_type"],
        originalVideoUrl: json["original_video_url"],
        seoPath: json["seo_path"],
        name: json["name"],
        isOneTop: json["is_one_top"],
        renditions: List<Rendition>.from(
            json["renditions"].map((x) => Rendition.fromJson(x))),
        videoAdContent: videoAdContentValues.map[json["video_ad_content"]]!,
        yields: json["yields"],
        instructions: List<Instruction>.from(
            json["instructions"].map((x) => Instruction.fromJson(x))),
        nutrition: Nutrition.fromJson(json["nutrition"]),
        prepTimeMinutes: json["prep_time_minutes"],
        thumbnailUrl: json["thumbnail_url"],
      );

  Map<String, dynamic> toJson() => {
        "brand_id": brandId,
        "total_time_tier": totalTimeTier.toJson(),
        "video_id": videoId,
        "created_at": createdAt,
        "servings_noun_singular": servingsNounSingular,
        "buzz_id": buzzId,
        "tips_and_ratings_enabled": tipsAndRatingsEnabled,
        "cook_time_minutes": cookTimeMinutes,
        "show_id": showId,
        "draft_status": draftStatusValues.reverse[draftStatus],
        "is_shoppable": isShoppable,
        "topics": List<dynamic>.from(topics.map((x) => x.toJson())),
        "tags": List<dynamic>.from(tags.map((x) => x.toJson())),
        "_type": type,
        "total_time_minutes": totalTimeMinutes,
        "id": recipeId,
        "brand": brand.toJson(),
        "num_servings": numServings,
        "inspired_by_url": inspiredByUrl,
        "keywords": keywords,
        "aspect_ratio": aspectRatioValues.reverse[aspectRatio],
        "video_url": videoUrl,
        "nutrition_visibility":
            nutritionVisibilityValues.reverse[nutritionVisibility],
        "country": countryValues.reverse[country],
        "language": languageValues.reverse[language],
        "canonical_id": canonicalId,
        "user_ratings": userRatings.toJson(),
        "show": show.toJson(),
        "approved_at": approvedAt,
        "servings_noun_plural": servingsNounPlural,
        "_index": index,
        "thumbnail_alt_text": thumbnailAltText,
        "price": price.toJson(),
        "compilations": List<dynamic>.from(compilations.map((x) => x.toJson())),
        "_id": id,
        "seo_title": seoTitle,
        "promotion": promotionValues.reverse[promotion],
        "facebook_posts": List<dynamic>.from(facebookPosts.map((x) => x)),
        "sections": List<dynamic>.from(sections.map((x) => x.toJson())),
        "description": description,
        "credits": List<dynamic>.from(credits.map((x) => x.toJson())),
        "slug": slug,
        "updated_at": updatedAt,
        "beauty_url": beautyUrl,
        "_op_type": opType,
        "original_video_url": originalVideoUrl,
        "seo_path": seoPath,
        "name": name,
        "is_one_top": isOneTop,
        "renditions": List<dynamic>.from(renditions.map((x) => x.toJson())),
        "video_ad_content": videoAdContentValues.reverse[videoAdContent],
        "yields": yields,
        "instructions": List<dynamic>.from(instructions.map((x) => x.toJson())),
        "nutrition": nutrition.toJson(),
        "prep_time_minutes": prepTimeMinutes,
        "thumbnail_url": thumbnailUrl,
      };
}

class Rendition {
  Rendition({
    required this.height,
    required this.container,
    required this.posterUrl,
    required this.url,
    required this.aspect,
    required this.width,
    required this.name,
    this.fileSize,
    required this.duration,
    this.bitRate,
    required this.contentType,
    this.minimumBitRate,
    this.maximumBitRate,
  });

  int height;
  Container container;
  String posterUrl;
  String url;
  Aspect aspect;
  int width;
  RenditionName name;
  int? fileSize;
  int duration;
  int? bitRate;
  ContentType contentType;
  int? minimumBitRate;
  int? maximumBitRate;

  factory Rendition.fromJson(Map<String, dynamic> json) => Rendition(
        height: json["height"],
        container: containerValues.map[json["container"]]!,
        posterUrl: json["poster_url"],
        url: json["url"],
        aspect: aspectValues.map[json["aspect"]]!,
        width: json["width"],
        name: renditionNameValues.map[json["name"]]!,
        fileSize: json["file_size"],
        duration: json["duration"],
        bitRate: json["bit_rate"],
        contentType: contentTypeValues.map[json["content_type"]]!,
        minimumBitRate: json["minimum_bit_rate"],
        maximumBitRate: json["maximum_bit_rate"],
      );

  Map<String, dynamic> toJson() => {
        "height": height,
        "container": containerValues.reverse[container],
        "poster_url": posterUrl,
        "url": url,
        "aspect": aspectValues.reverse[aspect],
        "width": width,
        "name": renditionNameValues.reverse[name],
        "file_size": fileSize,
        "duration": duration,
        "bit_rate": bitRate,
        "content_type": contentTypeValues.reverse[contentType],
        "minimum_bit_rate": minimumBitRate,
        "maximum_bit_rate": maximumBitRate,
      };
}

enum Aspect { SQUARE, PORTRAIT }

final aspectValues =
    EnumValues({"portrait": Aspect.PORTRAIT, "square": Aspect.SQUARE});

enum Container { MP4, TS }

final containerValues = EnumValues({"mp4": Container.MP4, "ts": Container.TS});

enum ContentType { VIDEO_MP4, APPLICATION_VND_APPLE_MPEGURL }

final contentTypeValues = EnumValues({
  "application/vnd.apple.mpegurl": ContentType.APPLICATION_VND_APPLE_MPEGURL,
  "video/mp4": ContentType.VIDEO_MP4
});

enum RenditionName {
  MP4_720_X720,
  MP4_320_X320,
  MP4_480_X480,
  LOW,
  MP4_404_X720,
  MP4_180_X320,
  MP4_270_X480
}

final renditionNameValues = EnumValues({
  "low": RenditionName.LOW,
  "mp4_180x320": RenditionName.MP4_180_X320,
  "mp4_270x480": RenditionName.MP4_270_X480,
  "mp4_320x320": RenditionName.MP4_320_X320,
  "mp4_404x720": RenditionName.MP4_404_X720,
  "mp4_480x480": RenditionName.MP4_480_X480,
  "mp4_720x720": RenditionName.MP4_720_X720
});

class Section {
  Section({
    required this.components,
    this.name,
    required this.position,
  });

  List<Component> components;
  String? name;
  int position;

  factory Section.fromJson(Map<String, dynamic> json) => Section(
        components: List<Component>.from(
            json["components"].map((x) => Component.fromJson(x))),
        name: json["name"],
        position: json["position"],
      );

  Map<String, dynamic> toJson() => {
        "components": List<dynamic>.from(components.map((x) => x.toJson())),
        "name": name,
        "position": position,
      };
}

class Component {
  Component({
    required this.ingredient,
    required this.id,
    required this.position,
    required this.measurements,
    required this.rawText,
    required this.extraComment,
  });

  Ingredient ingredient;
  int id;
  int position;
  List<Measurement> measurements;
  String rawText;
  String extraComment;

  factory Component.fromJson(Map<String, dynamic> json) => Component(
        ingredient: Ingredient.fromJson(json["ingredient"]),
        id: json["id"],
        position: json["position"],
        measurements: List<Measurement>.from(
            json["measurements"].map((x) => Measurement.fromJson(x))),
        rawText: json["raw_text"],
        extraComment: json["extra_comment"],
      );

  Map<String, dynamic> toJson() => {
        "ingredient": ingredient.toJson(),
        "id": id,
        "position": position,
        "measurements": List<dynamic>.from(measurements.map((x) => x.toJson())),
        "raw_text": rawText,
        "extra_comment": extraComment,
      };
}

class Ingredient {
  Ingredient({
    required this.createdAt,
    required this.displayPlural,
    required this.id,
    required this.displaySingular,
    required this.updatedAt,
    required this.name,
  });

  int createdAt;
  String displayPlural;
  int id;
  String displaySingular;
  int updatedAt;
  String name;

  factory Ingredient.fromJson(Map<String, dynamic> json) => Ingredient(
        createdAt: json["created_at"],
        displayPlural: json["display_plural"],
        id: json["id"],
        displaySingular: json["display_singular"],
        updatedAt: json["updated_at"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "created_at": createdAt,
        "display_plural": displayPlural,
        "id": id,
        "display_singular": displaySingular,
        "updated_at": updatedAt,
        "name": name,
      };
}

class Measurement {
  Measurement({
    required this.unit,
    required this.quantity,
    required this.id,
  });

  Unit unit;
  String quantity;
  int id;

  factory Measurement.fromJson(Map<String, dynamic> json) => Measurement(
        unit: Unit.fromJson(json["unit"]),
        quantity: json["quantity"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "unit": unit.toJson(),
        "quantity": quantity,
        "id": id,
      };
}

class Unit {
  Unit({
    required this.system,
    required this.name,
    required this.displayPlural,
    required this.displaySingular,
    required this.abbreviation,
  });

  System system;
  String name;
  String displayPlural;
  String displaySingular;
  String abbreviation;

  factory Unit.fromJson(Map<String, dynamic> json) => Unit(
        system: systemValues.map[json["system"]]!,
        name: json["name"],
        displayPlural: json["display_plural"],
        displaySingular: json["display_singular"],
        abbreviation: json["abbreviation"],
      );

  Map<String, dynamic> toJson() => {
        "system": systemValues.reverse[system],
        "name": name,
        "display_plural": displayPlural,
        "display_singular": displaySingular,
        "abbreviation": abbreviation,
      };
}

enum System { METRIC, IMPERIAL, NONE }

final systemValues = EnumValues({
  "imperial": System.IMPERIAL,
  "metric": System.METRIC,
  "none": System.NONE
});

class Tag {
  Tag({
    required this.type,
    required this.name,
    required this.id,
    required this.displayName,
  });

  TagType type;
  String name;
  int id;
  String displayName;

  factory Tag.fromJson(Map<String, dynamic> json) => Tag(
        type: tagTypeValues.map[json["type"]]!,
        name: json["name"],
        id: json["id"],
        displayName: json["display_name"],
      );

  Map<String, dynamic> toJson() => {
        "type": tagTypeValues.reverse[type],
        "name": name,
        "id": id,
        "display_name": displayName,
      };
}

enum TagType {
  MEAL,
  DIFFICULTY,
  HOLIDAY,
  DIETARY,
  COOKING_STYLE,
  APPLIANCE,
  OCCASION,
  HEALTHY,
  EQUIPMENT,
  CUISINE,
  SEASONAL
}

final tagTypeValues = EnumValues({
  "appliance": TagType.APPLIANCE,
  "cooking_style": TagType.COOKING_STYLE,
  "cuisine": TagType.CUISINE,
  "dietary": TagType.DIETARY,
  "difficulty": TagType.DIFFICULTY,
  "equipment": TagType.EQUIPMENT,
  "healthy": TagType.HEALTHY,
  "holiday": TagType.HOLIDAY,
  "meal": TagType.MEAL,
  "occasion": TagType.OCCASION,
  "seasonal": TagType.SEASONAL
});

class Topic {
  Topic({
    required this.name,
    required this.slug,
  });

  String name;
  String slug;

  factory Topic.fromJson(Map<String, dynamic> json) => Topic(
        name: json["name"],
        slug: json["slug"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "slug": slug,
      };
}

class TotalTimeTier {
  TotalTimeTier({
    required this.tier,
    required this.displayTier,
  });

  Tier tier;
  DisplayTier displayTier;

  factory TotalTimeTier.fromJson(Map<String, dynamic> json) => TotalTimeTier(
        tier: tierValues.map[json["tier"]]!,
        displayTier: displayTierValues.map[json["display_tier"]]!,
      );

  Map<String, dynamic> toJson() => {
        "tier": tierValues.reverse[tier],
        "display_tier": displayTierValues.reverse[displayTier],
      };
}

enum DisplayTier { UNDER_30_MINUTES, UNDER_15_MINUTES }

final displayTierValues = EnumValues({
  "Under 15 minutes": DisplayTier.UNDER_15_MINUTES,
  "Under 30 minutes": DisplayTier.UNDER_30_MINUTES
});

enum Tier { UNDER_30_MINUTES, UNDER_15_MINUTES }

final tierValues = EnumValues({
  "under_15_minutes": Tier.UNDER_15_MINUTES,
  "under_30_minutes": Tier.UNDER_30_MINUTES
});

class UserRatings {
  UserRatings({
    required this.countPositive,
    required this.score,
    required this.countNegative,
  });

  int countPositive;
  double score;
  int countNegative;

  factory UserRatings.fromJson(Map<String, dynamic> json) => UserRatings(
        countPositive: json["count_positive"],
        score: json["score"]?.toDouble(),
        countNegative: json["count_negative"],
      );

  Map<String, dynamic> toJson() => {
        "count_positive": countPositive,
        "score": score,
        "count_negative": countNegative,
      };
}

enum VideoAdContent { NONE, CO_BRANDED }

final videoAdContentValues = EnumValues(
    {"co_branded": VideoAdContent.CO_BRANDED, "none": VideoAdContent.NONE});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
