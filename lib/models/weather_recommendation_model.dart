/// id : "chatcmpl-9JM1uDPrljUbi1C5tgy3PuRnrQDgm"
/// object : "chat.completion"
/// created : 1714399942
/// model : "gpt-3.5-turbo-0125"
/// choices : [{"index":0,"message":{"role":"assistant","content":"For the weather conditions you provided (clear sky, minimum temperature of 25.06, maximum temperature of 27.45, and 15% humidity), I would recommend the following outfit for a woman:\n\n- Light and breathable clothing to stay cool in the warm temperatures, such as a summer dress or shorts paired with a loose top.\n- Sunglasses and a sun hat to protect your eyes and face from the sun's rays.\n- Light sandals or sneakers for comfortable walking.\n- A light shawl or scarf for any cool breeze in the morning or evening.\n\nExplanation:\n\n- **Temperature**: With temperatures ranging from 25.06 to 27.45, it is relatively warm. Choosing light and breathable clothing will help keep you comfortable throughout the day.\n\n- **Weather Conditions**: The clear sky suggests strong sunlight, so wearing sunglasses and a sun hat will help protect you from the sun's rays.\n\n- **Wind Speed**: With a wind speed of 2.96, it is relatively calm. However, it's still a good idea to have a light shawl or scarf on hand in case there's a cool breeze.\n\n- **Humidity**: With a humidity level of 15%, it is relatively dry. Light and breathable clothing will help you stay cool and comfortable in these conditions."},"logprobs":null,"finish_reason":"stop"}]
/// usage : {"prompt_tokens":118,"completion_tokens":260,"total_tokens":378}
/// system_fingerprint : "fp_3b956da36b"

class WeatherRecommendationModel {
  WeatherRecommendationModel({
      String? id, 
      String? object, 
      int? created, 
      String? model, 
      List<Choices>? choices, 
      Usage? usage, 
      String? systemFingerprint,}){
    _id = id;
    _object = object;
    _created = created;
    _model = model;
    _choices = choices;
    _usage = usage;
    _systemFingerprint = systemFingerprint;
}

  WeatherRecommendationModel.fromJson(dynamic json) {
    _id = json['id'];
    _object = json['object'];
    _created = json['created'];
    _model = json['model'];
    if (json['choices'] != null) {
      _choices = [];
      json['choices'].forEach((v) {
        _choices?.add(Choices.fromJson(v));
      });
    }
    _usage = json['usage'] != null ? Usage.fromJson(json['usage']) : null;
    _systemFingerprint = json['system_fingerprint'];
  }
  String? _id;
  String? _object;
  int? _created;
  String? _model;
  List<Choices>? _choices;
  Usage? _usage;
  String? _systemFingerprint;
WeatherRecommendationModel copyWith({  String? id,
  String? object,
  int? created,
  String? model,
  List<Choices>? choices,
  Usage? usage,
  String? systemFingerprint,
}) => WeatherRecommendationModel(  id: id ?? _id,
  object: object ?? _object,
  created: created ?? _created,
  model: model ?? _model,
  choices: choices ?? _choices,
  usage: usage ?? _usage,
  systemFingerprint: systemFingerprint ?? _systemFingerprint,
);
  String? get id => _id;
  String? get object => _object;
  int? get created => _created;
  String? get model => _model;
  List<Choices>? get choices => _choices;
  Usage? get usage => _usage;
  String? get systemFingerprint => _systemFingerprint;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['object'] = _object;
    map['created'] = _created;
    map['model'] = _model;
    if (_choices != null) {
      map['choices'] = _choices?.map((v) => v.toJson()).toList();
    }
    if (_usage != null) {
      map['usage'] = _usage?.toJson();
    }
    map['system_fingerprint'] = _systemFingerprint;
    return map;
  }

}

/// prompt_tokens : 118
/// completion_tokens : 260
/// total_tokens : 378

class Usage {
  Usage({
      int? promptTokens, 
      int? completionTokens, 
      int? totalTokens,}){
    _promptTokens = promptTokens;
    _completionTokens = completionTokens;
    _totalTokens = totalTokens;
}

  Usage.fromJson(dynamic json) {
    _promptTokens = json['prompt_tokens'];
    _completionTokens = json['completion_tokens'];
    _totalTokens = json['total_tokens'];
  }
  int? _promptTokens;
  int? _completionTokens;
  int? _totalTokens;
Usage copyWith({  int? promptTokens,
  int? completionTokens,
  int? totalTokens,
}) => Usage(  promptTokens: promptTokens ?? _promptTokens,
  completionTokens: completionTokens ?? _completionTokens,
  totalTokens: totalTokens ?? _totalTokens,
);
  int? get promptTokens => _promptTokens;
  int? get completionTokens => _completionTokens;
  int? get totalTokens => _totalTokens;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['prompt_tokens'] = _promptTokens;
    map['completion_tokens'] = _completionTokens;
    map['total_tokens'] = _totalTokens;
    return map;
  }

}

/// index : 0
/// message : {"role":"assistant","content":"For the weather conditions you provided (clear sky, minimum temperature of 25.06, maximum temperature of 27.45, and 15% humidity), I would recommend the following outfit for a woman:\n\n- Light and breathable clothing to stay cool in the warm temperatures, such as a summer dress or shorts paired with a loose top.\n- Sunglasses and a sun hat to protect your eyes and face from the sun's rays.\n- Light sandals or sneakers for comfortable walking.\n- A light shawl or scarf for any cool breeze in the morning or evening.\n\nExplanation:\n\n- **Temperature**: With temperatures ranging from 25.06 to 27.45, it is relatively warm. Choosing light and breathable clothing will help keep you comfortable throughout the day.\n\n- **Weather Conditions**: The clear sky suggests strong sunlight, so wearing sunglasses and a sun hat will help protect you from the sun's rays.\n\n- **Wind Speed**: With a wind speed of 2.96, it is relatively calm. However, it's still a good idea to have a light shawl or scarf on hand in case there's a cool breeze.\n\n- **Humidity**: With a humidity level of 15%, it is relatively dry. Light and breathable clothing will help you stay cool and comfortable in these conditions."}
/// logprobs : null
/// finish_reason : "stop"

class Choices {
  Choices({
      int? index, 
      Message? message, 
      dynamic logprobs, 
      String? finishReason,}){
    _index = index;
    _message = message;
    _logprobs = logprobs;
    _finishReason = finishReason;
}

  Choices.fromJson(dynamic json) {
    _index = json['index'];
    _message = json['message'] != null ? Message.fromJson(json['message']) : null;
    _logprobs = json['logprobs'];
    _finishReason = json['finish_reason'];
  }
  int? _index;
  Message? _message;
  dynamic _logprobs;
  String? _finishReason;
Choices copyWith({  int? index,
  Message? message,
  dynamic logprobs,
  String? finishReason,
}) => Choices(  index: index ?? _index,
  message: message ?? _message,
  logprobs: logprobs ?? _logprobs,
  finishReason: finishReason ?? _finishReason,
);
  int? get index => _index;
  Message? get message => _message;
  dynamic get logprobs => _logprobs;
  String? get finishReason => _finishReason;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['index'] = _index;
    if (_message != null) {
      map['message'] = _message?.toJson();
    }
    map['logprobs'] = _logprobs;
    map['finish_reason'] = _finishReason;
    return map;
  }

}

/// role : "assistant"
/// content : "For the weather conditions you provided (clear sky, minimum temperature of 25.06, maximum temperature of 27.45, and 15% humidity), I would recommend the following outfit for a woman:\n\n- Light and breathable clothing to stay cool in the warm temperatures, such as a summer dress or shorts paired with a loose top.\n- Sunglasses and a sun hat to protect your eyes and face from the sun's rays.\n- Light sandals or sneakers for comfortable walking.\n- A light shawl or scarf for any cool breeze in the morning or evening.\n\nExplanation:\n\n- **Temperature**: With temperatures ranging from 25.06 to 27.45, it is relatively warm. Choosing light and breathable clothing will help keep you comfortable throughout the day.\n\n- **Weather Conditions**: The clear sky suggests strong sunlight, so wearing sunglasses and a sun hat will help protect you from the sun's rays.\n\n- **Wind Speed**: With a wind speed of 2.96, it is relatively calm. However, it's still a good idea to have a light shawl or scarf on hand in case there's a cool breeze.\n\n- **Humidity**: With a humidity level of 15%, it is relatively dry. Light and breathable clothing will help you stay cool and comfortable in these conditions."

class Message {
  Message({
      String? role, 
      String? content,}){
    _role = role;
    _content = content;
}

  Message.fromJson(dynamic json) {
    _role = json['role'];
    _content = json['content'];
  }
  String? _role;
  String? _content;
Message copyWith({  String? role,
  String? content,
}) => Message(  role: role ?? _role,
  content: content ?? _content,
);
  String? get role => _role;
  String? get content => _content;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['role'] = _role;
    map['content'] = _content;
    return map;
  }

}