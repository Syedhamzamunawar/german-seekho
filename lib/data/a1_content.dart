

// =============================================
// GERMAN SEEKHO — A1 Complete Content
// =============================================

// Word Model
class GermanWord {
  final String german;
  final String english;
  final String urdu;
  final String article;
  final String gender;
  final String emoji;

  const GermanWord({
    required this.german,
    required this.english,
    required this.urdu,
    this.article = '',
    this.gender = '',
    this.emoji = '📖',
  });
}

// Sentence Word Model (word by word)
class SentenceWord {
  final String de;
  final String en;
  final String ur;

  const SentenceWord({
    required this.de,
    required this.en,
    required this.ur,
  });
}

// Sentence Model
class GermanSentence {
  final List<SentenceWord> words;
  final String grammarNote;
  final String emoji;

  const GermanSentence({
    required this.words,
    this.grammarNote = '',
    this.emoji = '💬',
  });

  String get germanFull => words.map((w) => w.de).join(' ');
  String get englishFull => words.map((w) => w.en).join(' ');
  String get urduFull => words.map((w) => w.ur).join(' ');
}

// Topic Model
class A1Topic {
  final String title;
  final String urduTitle;
  final String emoji;
  final List<GermanWord> words;
  final List<GermanSentence> sentences;

  const A1Topic({
    required this.title,
    required this.urduTitle,
    required this.emoji,
    required this.words,
    required this.sentences,
  });
}

// =============================================
// A1 CONTENT
// =============================================

const List<A1Topic> a1Topics = [

  // =============================================
  // TOPIC 1 — INTRODUCE YOURSELF
  // =============================================
  A1Topic(
    title: 'Introduce Yourself',
    urduTitle: 'اپنا تعارف کروائیں',
    emoji: '👋',
    words: [
      GermanWord(german: 'der Name', english: 'the Name', urdu: 'نام', article: 'der', gender: 'masculine — مذکر', emoji: '👤'),
      GermanWord(german: 'der Vorname', english: 'the First Name', urdu: 'پہلا نام', article: 'der', gender: 'masculine — مذکر', emoji: '📝'),
      GermanWord(german: 'der Nachname', english: 'the Last Name', urdu: 'خاندانی نام', article: 'der', gender: 'masculine — مذکر', emoji: '📝'),
      GermanWord(german: 'das Alter', english: 'the Age', urdu: 'عمر', article: 'das', gender: 'neutral — غیرجنس', emoji: '🎂'),
      GermanWord(german: 'das Land', english: 'the Country', urdu: 'ملک', article: 'das', gender: 'neutral — غیرجنس', emoji: '🌍'),
      GermanWord(german: 'die Stadt', english: 'the City', urdu: 'شہر', article: 'die', gender: 'feminine — مؤنث', emoji: '🏙️'),
      GermanWord(german: 'die Sprache', english: 'the Language', urdu: 'زبان', article: 'die', gender: 'feminine — مؤنث', emoji: '🗣️'),
      GermanWord(german: 'der Beruf', english: 'the Occupation', urdu: 'پیشہ', article: 'der', gender: 'masculine — مذکر', emoji: '💼'),
      GermanWord(german: 'die Adresse', english: 'the Address', urdu: 'پتہ', article: 'die', gender: 'feminine — مؤنث', emoji: '🏠'),
      GermanWord(german: 'die Telefonnummer', english: 'the Phone Number', urdu: 'فون نمبر', article: 'die', gender: 'feminine — مؤنث', emoji: '📞'),
      GermanWord(german: 'die E-Mail', english: 'the Email', urdu: 'ای میل', article: 'die', gender: 'feminine — مؤنث', emoji: '📧'),
      GermanWord(german: 'die Nationalität', english: 'the Nationality', urdu: 'قومیت', article: 'die', gender: 'feminine — مؤنث', emoji: '🌍'),
      GermanWord(german: 'Pakistan', english: 'Pakistan', urdu: 'پاکستان', emoji: '🇵🇰'),
      GermanWord(german: 'Deutschland', english: 'Germany', urdu: 'جرمنی', emoji: '🇩🇪'),
      GermanWord(german: 'der Ingenieur', english: 'the Engineer', urdu: 'انجینیئر', article: 'der', gender: 'masculine — مذکر', emoji: '👷'),
      GermanWord(german: 'der Arzt', english: 'the Doctor', urdu: 'ڈاکٹر', article: 'der', gender: 'masculine — مذکر', emoji: '👨‍⚕️'),
      GermanWord(german: 'der Lehrer', english: 'the Teacher', urdu: 'استاد', article: 'der', gender: 'masculine — مذکر', emoji: '👨‍🏫'),
      GermanWord(german: 'der Student', english: 'the Student', urdu: 'طالب علم', article: 'der', gender: 'masculine — مذکر', emoji: '👨‍🎓'),
      GermanWord(german: 'verheiratet', english: 'married', urdu: 'شادی شدہ', emoji: '💍'),
      GermanWord(german: 'ledig', english: 'single', urdu: 'کنوارہ', emoji: '👤'),
    ],
    sentences: [
      GermanSentence(
        emoji: '👋',
        grammarNote: '"heiße" verb "heißen" se aata hai — Ich ke saath heiße use hota hai — میرا نام ہے',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'heiße', en: 'am called', ur: 'کہلاتا ہوں'),
          SentenceWord(de: 'Hamza.', en: 'Hamza.', ur: 'حمزہ۔'),
        ],
      ),
      GermanSentence(
        emoji: '👤',
        grammarNote: '"Mein Name ist" = My name is = میرا نام ہے — formal way',
        words: [
          SentenceWord(de: 'Mein', en: 'My', ur: 'میرا'),
          SentenceWord(de: 'Name', en: 'name', ur: 'نام'),
          SentenceWord(de: 'ist', en: 'is', ur: 'ہے'),
          SentenceWord(de: 'Hamza.', en: 'Hamza.', ur: 'حمزہ۔'),
        ],
      ),
      GermanSentence(
        emoji: '🌍',
        grammarNote: '"komme aus" = come from — aus preposition hai jo country ke saath use hota hai',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'komme', en: 'come', ur: 'آتا ہوں'),
          SentenceWord(de: 'aus', en: 'from', ur: 'سے'),
          SentenceWord(de: 'Pakistan.', en: 'Pakistan.', ur: 'پاکستان۔'),
        ],
      ),
      GermanSentence(
        emoji: '🏙️',
        grammarNote: '"wohne in" = live in = میں رہتا ہوں — wohnen verb hai',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'wohne', en: 'live', ur: 'رہتا ہوں'),
          SentenceWord(de: 'in', en: 'in', ur: 'میں'),
          SentenceWord(de: 'Ilmenau.', en: 'Ilmenau.', ur: 'المناؤ۔'),
        ],
      ),
      GermanSentence(
        emoji: '🎂',
        grammarNote: '"bin ... Jahre alt" = am ... years old — Jahre alt = سال کا',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'bin', en: 'am', ur: 'ہوں'),
          SentenceWord(de: '25', en: '25', ur: '25'),
          SentenceWord(de: 'Jahre', en: 'years', ur: 'سال'),
          SentenceWord(de: 'alt.', en: 'old.', ur: 'کا۔'),
        ],
      ),
      GermanSentence(
        emoji: '💼',
        grammarNote: 'Beruf batane mein koi article nahi lagta — Ich bin Student (kein Artikel!)',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'bin', en: 'am', ur: 'ہوں'),
          SentenceWord(de: 'Student.', en: 'a student.', ur: 'طالب علم۔'),
        ],
      ),
      GermanSentence(
        emoji: '🗣️',
        grammarNote: '"spreche" verb "sprechen" se — Ich spreche = I speak = میں بولتا ہوں',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'spreche', en: 'speak', ur: 'بولتا ہوں'),
          SentenceWord(de: 'Urdu', en: 'Urdu', ur: 'اردو'),
          SentenceWord(de: 'und', en: 'and', ur: 'اور'),
          SentenceWord(de: 'Englisch.', en: 'English.', ur: 'انگریزی۔'),
        ],
      ),
      GermanSentence(
        emoji: '📞',
        grammarNote: '"Meine Nummer ist" = My number is = میرا نمبر ہے',
        words: [
          SentenceWord(de: 'Meine', en: 'My', ur: 'میرا'),
          SentenceWord(de: 'Telefonnummer', en: 'phone number', ur: 'فون نمبر'),
          SentenceWord(de: 'ist', en: 'is', ur: 'ہے'),
          SentenceWord(de: '0123456789.', en: '0123456789.', ur: '0123456789۔'),
        ],
      ),
      GermanSentence(
        emoji: '💍',
        grammarNote: '"bin verheiratet" = am married = شادی شدہ ہوں',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'bin', en: 'am', ur: 'ہوں'),
          SentenceWord(de: 'verheiratet.', en: 'married.', ur: 'شادی شدہ۔'),
        ],
      ),
      GermanSentence(
        emoji: '❓',
        grammarNote: '"Wie heißen Sie?" = What is your name? (formal) = آپ کا نام کیا ہے؟',
        words: [
          SentenceWord(de: 'Wie', en: 'What', ur: 'کیا'),
          SentenceWord(de: 'heißen', en: 'is called', ur: 'کہلاتے ہیں'),
          SentenceWord(de: 'Sie?', en: 'you? (formal)', ur: 'آپ؟'),
        ],
      ),
      GermanSentence(
        emoji: '❓',
        grammarNote: '"Woher kommen Sie?" = Where do you come from? (formal)',
        words: [
          SentenceWord(de: 'Woher', en: 'Where from', ur: 'کہاں سے'),
          SentenceWord(de: 'kommen', en: 'come', ur: 'آتے ہیں'),
          SentenceWord(de: 'Sie?', en: 'you?', ur: 'آپ؟'),
        ],
      ),
      GermanSentence(
        emoji: '❓',
        grammarNote: '"Wo wohnen Sie?" = Where do you live? (formal)',
        words: [
          SentenceWord(de: 'Wo', en: 'Where', ur: 'کہاں'),
          SentenceWord(de: 'wohnen', en: 'live', ur: 'رہتے ہیں'),
          SentenceWord(de: 'Sie?', en: 'you?', ur: 'آپ؟'),
        ],
      ),
    ],
  ),
  // =============================================
  // TOPIC 2 — NUMBERS
  // =============================================
  A1Topic(
    title: 'Numbers — Zahlen',
    urduTitle: 'گنتی',
    emoji: '🔢',
    words: [
      GermanWord(german: 'null', english: 'zero', urdu: 'صفر', emoji: '0️⃣'),
      GermanWord(german: 'eins', english: 'one', urdu: 'ایک', emoji: '1️⃣'),
      GermanWord(german: 'zwei', english: 'two', urdu: 'دو', emoji: '2️⃣'),
      GermanWord(german: 'drei', english: 'three', urdu: 'تین', emoji: '3️⃣'),
      GermanWord(german: 'vier', english: 'four', urdu: 'چار', emoji: '4️⃣'),
      GermanWord(german: 'fünf', english: 'five', urdu: 'پانچ', emoji: '5️⃣'),
      GermanWord(german: 'sechs', english: 'six', urdu: 'چھ', emoji: '6️⃣'),
      GermanWord(german: 'sieben', english: 'seven', urdu: 'سات', emoji: '7️⃣'),
      GermanWord(german: 'acht', english: 'eight', urdu: 'آٹھ', emoji: '8️⃣'),
      GermanWord(german: 'neun', english: 'nine', urdu: 'نو', emoji: '9️⃣'),
      GermanWord(german: 'zehn', english: 'ten', urdu: 'دس', emoji: '🔟'),
      GermanWord(german: 'elf', english: 'eleven', urdu: 'گیارہ', emoji: '1️⃣1️⃣'),
      GermanWord(german: 'zwölf', english: 'twelve', urdu: 'بارہ', emoji: '1️⃣2️⃣'),
      GermanWord(german: 'dreizehn', english: 'thirteen', urdu: 'تیرہ', emoji: '1️⃣3️⃣'),
      GermanWord(german: 'vierzehn', english: 'fourteen', urdu: 'چودہ', emoji: '1️⃣4️⃣'),
      GermanWord(german: 'fünfzehn', english: 'fifteen', urdu: 'پندرہ', emoji: '1️⃣5️⃣'),
      GermanWord(german: 'sechzehn', english: 'sixteen', urdu: 'سولہ', emoji: '1️⃣6️⃣'),
      GermanWord(german: 'siebzehn', english: 'seventeen', urdu: 'سترہ', emoji: '1️⃣7️⃣'),
      GermanWord(german: 'achtzehn', english: 'eighteen', urdu: 'اٹھارہ', emoji: '1️⃣8️⃣'),
      GermanWord(german: 'neunzehn', english: 'nineteen', urdu: 'انیس', emoji: '1️⃣9️⃣'),
      GermanWord(german: 'zwanzig', english: 'twenty', urdu: 'بیس', emoji: '2️⃣0️⃣'),
      GermanWord(german: 'einundzwanzig', english: 'twenty one', urdu: 'اکیس', emoji: '2️⃣1️⃣'),
      GermanWord(german: 'dreißig', english: 'thirty', urdu: 'تیس', emoji: '3️⃣0️⃣'),
      GermanWord(german: 'vierzig', english: 'forty', urdu: 'چالیس', emoji: '4️⃣0️⃣'),
      GermanWord(german: 'fünfzig', english: 'fifty', urdu: 'پچاس', emoji: '5️⃣0️⃣'),
      GermanWord(german: 'sechzig', english: 'sixty', urdu: 'ساٹھ', emoji: '6️⃣0️⃣'),
      GermanWord(german: 'siebzig', english: 'seventy', urdu: 'ستر', emoji: '7️⃣0️⃣'),
      GermanWord(german: 'achtzig', english: 'eighty', urdu: 'اسی', emoji: '8️⃣0️⃣'),
      GermanWord(german: 'neunzig', english: 'ninety', urdu: 'نوے', emoji: '9️⃣0️⃣'),
      GermanWord(german: 'hundert', english: 'hundred', urdu: 'سو', emoji: '💯'),
      GermanWord(german: 'tausend', english: 'thousand', urdu: 'ہزار', emoji: '1️⃣0️⃣0️⃣0️⃣'),
      GermanWord(german: 'erste', english: 'first', urdu: 'پہلا', emoji: '🥇'),
      GermanWord(german: 'zweite', english: 'second', urdu: 'دوسرا', emoji: '🥈'),
      GermanWord(german: 'dritte', english: 'third', urdu: 'تیسرا', emoji: '🥉'),
    ],
    sentences: [
      GermanSentence(
        emoji: '🎂',
        grammarNote: '"bin ... Jahre alt" = am ... years old = ... سال کا ہوں',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'bin', en: 'am', ur: 'ہوں'),
          SentenceWord(de: 'fünfundzwanzig', en: 'twenty five', ur: 'پچیس'),
          SentenceWord(de: 'Jahre', en: 'years', ur: 'سال'),
          SentenceWord(de: 'alt.', en: 'old.', ur: 'کا۔'),
        ],
      ),
      GermanSentence(
        emoji: '📞',
        grammarNote: '"Meine Nummer ist" = My number is = میرا نمبر ہے',
        words: [
          SentenceWord(de: 'Meine', en: 'My', ur: 'میرا'),
          SentenceWord(de: 'Nummer', en: 'number', ur: 'نمبر'),
          SentenceWord(de: 'ist', en: 'is', ur: 'ہے'),
          SentenceWord(de: 'null', en: 'zero', ur: 'صفر'),
          SentenceWord(de: 'eins', en: 'one', ur: 'ایک'),
          SentenceWord(de: 'zwei.', en: 'two.', ur: 'دو۔'),
        ],
      ),
      GermanSentence(
        emoji: '🛒',
        grammarNote: '"kostet" = costs = کا ہے — price batane ke liye',
        words: [
          SentenceWord(de: 'Das', en: 'That', ur: 'یہ'),
          SentenceWord(de: 'kostet', en: 'costs', ur: 'کا ہے'),
          SentenceWord(de: 'fünf', en: 'five', ur: 'پانچ'),
          SentenceWord(de: 'Euro.', en: 'euros.', ur: 'یورو۔'),
        ],
      ),
      GermanSentence(
        emoji: '🏠',
        grammarNote: '"wohne im ... Stock" = live on ... floor = ... منزل پر رہتا ہوں',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'wohne', en: 'live', ur: 'رہتا ہوں'),
          SentenceWord(de: 'im', en: 'on the', ur: ''),
          SentenceWord(de: 'dritten', en: 'third', ur: 'تیسری'),
          SentenceWord(de: 'Stock.', en: 'floor.', ur: 'منزل پر۔'),
        ],
      ),
      GermanSentence(
        emoji: '🚌',
        grammarNote: '"Linie" = line/route = لائن — bus number batane ke liye',
        words: [
          SentenceWord(de: 'Nehmen', en: 'Take', ur: 'لو'),
          SentenceWord(de: 'Sie', en: 'you', ur: 'آپ'),
          SentenceWord(de: 'die', en: 'the', ur: ''),
          SentenceWord(de: 'Linie', en: 'line', ur: 'لائن'),
          SentenceWord(de: 'zehn.', en: 'ten.', ur: 'دس۔'),
        ],
      ),
      GermanSentence(
        emoji: '💯',
        grammarNote: '"hundert Prozent" = hundred percent = سو فیصد',
        words: [
          SentenceWord(de: 'Das', en: 'That', ur: 'یہ'),
          SentenceWord(de: 'ist', en: 'is', ur: 'ہے'),
          SentenceWord(de: 'hundert', en: 'hundred', ur: 'سو'),
          SentenceWord(de: 'Prozent', en: 'percent', ur: 'فیصد'),
          SentenceWord(de: 'richtig!', en: 'correct!', ur: 'درست!'),
        ],
      ),
    ],
  ),
  // =============================================
  // TOPIC 3 — ARTICLES der/die/das
  // =============================================
  A1Topic(
    title: 'Articles — der/die/das',
    urduTitle: 'اسم کی جنس — der/die/das',
    emoji: '📖',
    words: [
      // ===== DER (Masculine — مذکر) =====
      GermanWord(german: 'der Mann', english: 'the Man', urdu: 'مرد', article: 'der', gender: 'masculine — مذکر', emoji: '👨'),
      GermanWord(german: 'der Vater', english: 'the Father', urdu: 'باپ', article: 'der', gender: 'masculine — مذکر', emoji: '👨‍👧'),
      GermanWord(german: 'der Bruder', english: 'the Brother', urdu: 'بھائی', article: 'der', gender: 'masculine — مذکر', emoji: '👦'),
      GermanWord(german: 'der Sohn', english: 'the Son', urdu: 'بیٹا', article: 'der', gender: 'masculine — مذکر', emoji: '👦'),
      GermanWord(german: 'der Onkel', english: 'the Uncle', urdu: 'چچا/ماموں', article: 'der', gender: 'masculine — مذکر', emoji: '👴'),
      GermanWord(german: 'der Großvater', english: 'the Grandfather', urdu: 'دادا/نانا', article: 'der', gender: 'masculine — مذکر', emoji: '👴'),
      GermanWord(german: 'der Freund', english: 'the Friend (male)', urdu: 'دوست', article: 'der', gender: 'masculine — مذکر', emoji: '🤝'),
      GermanWord(german: 'der Lehrer', english: 'the Teacher (male)', urdu: 'استاد', article: 'der', gender: 'masculine — مذکر', emoji: '👨‍🏫'),
      GermanWord(german: 'der Arzt', english: 'the Doctor (male)', urdu: 'ڈاکٹر', article: 'der', gender: 'masculine — مذکر', emoji: '👨‍⚕️'),
      GermanWord(german: 'der Ingenieur', english: 'the Engineer', urdu: 'انجینیئر', article: 'der', gender: 'masculine — مذکر', emoji: '👷'),
      GermanWord(german: 'der Student', english: 'the Student (male)', urdu: 'طالب علم', article: 'der', gender: 'masculine — مذکر', emoji: '👨‍🎓'),
      GermanWord(german: 'der Apfel', english: 'the Apple', urdu: 'سیب', article: 'der', gender: 'masculine — مذکر', emoji: '🍎'),
      GermanWord(german: 'der Tisch', english: 'the Table', urdu: 'میز', article: 'der', gender: 'masculine — مذکر', emoji: '🪑'),
      GermanWord(german: 'der Stuhl', english: 'the Chair', urdu: 'کرسی', article: 'der', gender: 'masculine — مذکر', emoji: '🪑'),
      GermanWord(german: 'der Computer', english: 'the Computer', urdu: 'کمپیوٹر', article: 'der', gender: 'masculine — مذکر', emoji: '💻'),
      GermanWord(german: 'der Stift', english: 'the Pen', urdu: 'قلم', article: 'der', gender: 'masculine — مذکر', emoji: '✏️'),
      GermanWord(german: 'der Schlüssel', english: 'the Key', urdu: 'چابی', article: 'der', gender: 'masculine — مذکر', emoji: '🔑'),
      GermanWord(german: 'der Bahnhof', english: 'the Train Station', urdu: 'ریلوے اسٹیشن', article: 'der', gender: 'masculine — مذکر', emoji: '🚉'),
      GermanWord(german: 'der Bus', english: 'the Bus', urdu: 'بس', article: 'der', gender: 'masculine — مذکر', emoji: '🚌'),
      GermanWord(german: 'der Zug', english: 'the Train', urdu: 'ٹرین', article: 'der', gender: 'masculine — مذکر', emoji: '🚂'),
      GermanWord(german: 'der Kaffee', english: 'the Coffee', urdu: 'کافی', article: 'der', gender: 'masculine — مذکر', emoji: '☕'),
      GermanWord(german: 'der Tee', english: 'the Tea', urdu: 'چائے', article: 'der', gender: 'masculine — مذکر', emoji: '🍵'),
      GermanWord(german: 'der Reis', english: 'the Rice', urdu: 'چاول', article: 'der', gender: 'masculine — مذکر', emoji: '🍚'),
      GermanWord(german: 'der Supermarkt', english: 'the Supermarket', urdu: 'سپر مارکیٹ', article: 'der', gender: 'masculine — مذکر', emoji: '🛒'),
      GermanWord(german: 'der Park', english: 'the Park', urdu: 'پارک', article: 'der', gender: 'masculine — مذکر', emoji: '🌳'),

      // ===== DIE (Feminine — مؤنث) =====
      GermanWord(german: 'die Frau', english: 'the Woman', urdu: 'عورت', article: 'die', gender: 'feminine — مؤنث', emoji: '👩'),
      GermanWord(german: 'die Mutter', english: 'the Mother', urdu: 'ماں', article: 'die', gender: 'feminine — مؤنث', emoji: '👩‍👧'),
      GermanWord(german: 'die Schwester', english: 'the Sister', urdu: 'بہن', article: 'die', gender: 'feminine — مؤنث', emoji: '👧'),
      GermanWord(german: 'die Tochter', english: 'the Daughter', urdu: 'بیٹی', article: 'die', gender: 'feminine — مؤنث', emoji: '👧'),
      GermanWord(german: 'die Tante', english: 'the Aunt', urdu: 'چچی/خالہ', article: 'die', gender: 'feminine — مؤنث', emoji: '👵'),
      GermanWord(german: 'die Großmutter', english: 'the Grandmother', urdu: 'دادی/نانی', article: 'die', gender: 'feminine — مؤنث', emoji: '👵'),
      GermanWord(german: 'die Freundin', english: 'the Friend (female)', urdu: 'سہیلی', article: 'die', gender: 'feminine — مؤنث', emoji: '🤝'),
      GermanWord(german: 'die Lehrerin', english: 'the Teacher (female)', urdu: 'استانی', article: 'die', gender: 'feminine — مؤنث', emoji: '👩‍🏫'),
      GermanWord(german: 'die Ärztin', english: 'the Doctor (female)', urdu: 'ڈاکٹرنی', article: 'die', gender: 'feminine — مؤنث', emoji: '👩‍⚕️'),
      GermanWord(german: 'die Studentin', english: 'the Student (female)', urdu: 'طالبہ', article: 'die', gender: 'feminine — مؤنث', emoji: '👩‍🎓'),
      GermanWord(german: 'die Schule', english: 'the School', urdu: 'سکول', article: 'die', gender: 'feminine — مؤنث', emoji: '🏫'),
      GermanWord(german: 'die Universität', english: 'the University', urdu: 'یونیورسٹی', article: 'die', gender: 'feminine — مؤنث', emoji: '🎓'),
      GermanWord(german: 'die Stadt', english: 'the City', urdu: 'شہر', article: 'die', gender: 'feminine — مؤنث', emoji: '🏙️'),
      GermanWord(german: 'die Straße', english: 'the Street', urdu: 'سڑک', article: 'die', gender: 'feminine — مؤنث', emoji: '🛣️'),
      GermanWord(german: 'die Küche', english: 'the Kitchen', urdu: 'باورچی خانہ', article: 'die', gender: 'feminine — مؤنث', emoji: '🍳'),
      GermanWord(german: 'die Tür', english: 'the Door', urdu: 'دروازہ', article: 'die', gender: 'feminine — مؤنث', emoji: '🚪'),
      GermanWord(german: 'die Milch', english: 'the Milk', urdu: 'دودھ', article: 'die', gender: 'feminine — مؤنث', emoji: '🥛'),
      GermanWord(german: 'die Banane', english: 'the Banana', urdu: 'کیلا', article: 'die', gender: 'feminine — مؤنث', emoji: '🍌'),
      GermanWord(german: 'die Zeitung', english: 'the Newspaper', urdu: 'اخبار', article: 'die', gender: 'feminine — مؤنث', emoji: '📰'),
      GermanWord(german: 'die Tasche', english: 'the Bag', urdu: 'بیگ', article: 'die', gender: 'feminine — مؤنث', emoji: '👜'),
      GermanWord(german: 'die Uhr', english: 'the Clock/Watch', urdu: 'گھڑی', article: 'die', gender: 'feminine — مؤنث', emoji: '⌚'),
      GermanWord(german: 'die Sprache', english: 'the Language', urdu: 'زبان', article: 'die', gender: 'feminine — مؤنث', emoji: '🗣️'),
      GermanWord(german: 'die Arbeit', english: 'the Work', urdu: 'کام', article: 'die', gender: 'feminine — مؤنث', emoji: '💼'),
      GermanWord(german: 'die Wohnung', english: 'the Apartment', urdu: 'اپارٹمنٹ', article: 'die', gender: 'feminine — مؤنث', emoji: '🏠'),
      GermanWord(german: 'die Apotheke', english: 'the Pharmacy', urdu: 'دوا خانہ', article: 'die', gender: 'feminine — مؤنث', emoji: '💊'),

      // ===== DAS (Neutral — غیرجنس) =====
      GermanWord(german: 'das Kind', english: 'the Child', urdu: 'بچہ', article: 'das', gender: 'neutral — غیرجنس', emoji: '🧒'),
      GermanWord(german: 'das Baby', english: 'the Baby', urdu: 'بچہ', article: 'das', gender: 'neutral — غیرجنس', emoji: '👶'),
      GermanWord(german: 'das Buch', english: 'the Book', urdu: 'کتاب', article: 'das', gender: 'neutral — غیرجنس', emoji: '📚'),
      GermanWord(german: 'das Auto', english: 'the Car', urdu: 'گاڑی', article: 'das', gender: 'neutral — غیرجنس', emoji: '🚗'),
      GermanWord(german: 'das Haus', english: 'the House', urdu: 'گھر', article: 'das', gender: 'neutral — غیرجنس', emoji: '🏠'),
      GermanWord(german: 'das Zimmer', english: 'the Room', urdu: 'کمرہ', article: 'das', gender: 'neutral — غیرجنس', emoji: '🛏️'),
      GermanWord(german: 'das Bett', english: 'the Bed', urdu: 'بستر', article: 'das', gender: 'neutral — غیرجنس', emoji: '🛏️'),
      GermanWord(german: 'das Fenster', english: 'the Window', urdu: 'کھڑکی', article: 'das', gender: 'neutral — غیرجنس', emoji: '🪟'),
      GermanWord(german: 'das Telefon', english: 'the Phone', urdu: 'فون', article: 'das', gender: 'neutral — غیرجنس', emoji: '📱'),
      GermanWord(german: 'das Wasser', english: 'the Water', urdu: 'پانی', article: 'das', gender: 'neutral — غیرجنس', emoji: '💧'),
      GermanWord(german: 'das Brot', english: 'the Bread', urdu: 'روٹی', article: 'das', gender: 'neutral — غیرجنس', emoji: '🍞'),
      GermanWord(german: 'das Ei', english: 'the Egg', urdu: 'انڈہ', article: 'das', gender: 'neutral — غیرجنس', emoji: '🥚'),
      GermanWord(german: 'das Restaurant', english: 'the Restaurant', urdu: 'ریستوران', article: 'das', gender: 'neutral — غیرجنس', emoji: '🍽️'),
      GermanWord(german: 'das Hotel', english: 'the Hotel', urdu: 'ہوٹل', article: 'das', gender: 'neutral — غیرجنس', emoji: '🏨'),
      GermanWord(german: 'das Krankenhaus', english: 'the Hospital', urdu: 'ہسپتال', article: 'das', gender: 'neutral — غیرجنس', emoji: '🏥'),
      GermanWord(german: 'das Geld', english: 'the Money', urdu: 'پیسے', article: 'das', gender: 'neutral — غیرجنس', emoji: '💰'),
      GermanWord(german: 'das Land', english: 'the Country', urdu: 'ملک', article: 'das', gender: 'neutral — غیرجنس', emoji: '🌍'),
      GermanWord(german: 'das Wetter', english: 'the Weather', urdu: 'موسم', article: 'das', gender: 'neutral — غیرجنس', emoji: '🌤️'),
      GermanWord(german: 'das Büro', english: 'the Office', urdu: 'دفتر', article: 'das', gender: 'neutral — غیرجنس', emoji: '🏢'),
      GermanWord(german: 'das Hemd', english: 'the Shirt', urdu: 'قمیض', article: 'das', gender: 'neutral — غیرجنس', emoji: '👕'),
    ],
    sentences: [
      // DER sentences
      GermanSentence(
        emoji: '👨',
        grammarNote: 'der = masculine article — Mann, Vater, Bruder sab der hain',
        words: [
          SentenceWord(de: 'Das', en: 'This', ur: 'یہ'),
          SentenceWord(de: 'ist', en: 'is', ur: 'ہے'),
          SentenceWord(de: 'der', en: 'the', ur: ''),
          SentenceWord(de: 'Mann.', en: 'man.', ur: 'مرد۔'),
        ],
      ),
      GermanSentence(
        emoji: '👨‍🏫',
        grammarNote: 'Beruf batane mein article nahi lagta — Ich bin Lehrer (kein Artikel!)',
        words: [
          SentenceWord(de: 'Er', en: 'He', ur: 'وہ'),
          SentenceWord(de: 'ist', en: 'is', ur: 'ہے'),
          SentenceWord(de: 'der', en: 'the', ur: ''),
          SentenceWord(de: 'Lehrer.', en: 'teacher.', ur: 'استاد۔'),
        ],
      ),
      GermanSentence(
        emoji: '☕',
        grammarNote: 'Akkusativ — der → einen: Ich trinke einen Kaffee',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'trinke', en: 'drink', ur: 'پیتا ہوں'),
          SentenceWord(de: 'einen', en: 'a', ur: 'ایک'),
          SentenceWord(de: 'Kaffee.', en: 'coffee.', ur: 'کافی۔'),
        ],
      ),
      GermanSentence(
        emoji: '🚌',
        grammarNote: 'mit + Dativ — der Bus → dem Bus: mit dem Bus fahren',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'fahre', en: 'travel', ur: 'سفر کرتا ہوں'),
          SentenceWord(de: 'mit', en: 'by', ur: 'سے'),
          SentenceWord(de: 'dem', en: 'the', ur: ''),
          SentenceWord(de: 'Bus.', en: 'bus.', ur: 'بس۔'),
        ],
      ),
      // DIE sentences
      GermanSentence(
        emoji: '👩',
        grammarNote: 'die = feminine article — Frau, Mutter, Schwester sab die hain',
        words: [
          SentenceWord(de: 'Das', en: 'This', ur: 'یہ'),
          SentenceWord(de: 'ist', en: 'is', ur: 'ہے'),
          SentenceWord(de: 'die', en: 'the', ur: ''),
          SentenceWord(de: 'Frau.', en: 'woman.', ur: 'عورت۔'),
        ],
      ),
      GermanSentence(
        emoji: '🏫',
        grammarNote: 'in + Dativ — die Schule → der Schule: in der Schule',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'lerne', en: 'learn', ur: 'سیکھتا ہوں'),
          SentenceWord(de: 'in', en: 'in', ur: 'میں'),
          SentenceWord(de: 'der', en: 'the', ur: ''),
          SentenceWord(de: 'Schule.', en: 'school.', ur: 'سکول۔'),
        ],
      ),
      GermanSentence(
        emoji: '🏙️',
        grammarNote: 'Akkusativ — die → eine: Ich suche eine Stadt',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'wohne', en: 'live', ur: 'رہتا ہوں'),
          SentenceWord(de: 'in', en: 'in', ur: 'میں'),
          SentenceWord(de: 'der', en: 'the', ur: ''),
          SentenceWord(de: 'Stadt.', en: 'city.', ur: 'شہر۔'),
        ],
      ),
      GermanSentence(
        emoji: '💼',
        grammarNote: 'die Arbeit — feminine — Ich gehe zur Arbeit (zu + der = zur)',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'gehe', en: 'go', ur: 'جاتا ہوں'),
          SentenceWord(de: 'zur', en: 'to the', ur: ''),
          SentenceWord(de: 'Arbeit.', en: 'work.', ur: 'کام پر۔'),
        ],
      ),
      // DAS sentences
      GermanSentence(
        emoji: '🧒',
        grammarNote: 'das = neutral article — Kind, Baby, Buch sab das hain',
        words: [
          SentenceWord(de: 'Das', en: 'This', ur: 'یہ'),
          SentenceWord(de: 'ist', en: 'is', ur: 'ہے'),
          SentenceWord(de: 'das', en: 'the', ur: ''),
          SentenceWord(de: 'Kind.', en: 'child.', ur: 'بچہ۔'),
        ],
      ),
      GermanSentence(
        emoji: '🏠',
        grammarNote: 'das Haus — neutral — in dem Haus = im Haus (in + dem = im)',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'wohne', en: 'live', ur: 'رہتا ہوں'),
          SentenceWord(de: 'im', en: 'in the', ur: ''),
          SentenceWord(de: 'Haus.', en: 'house.', ur: 'گھر میں۔'),
        ],
      ),
      GermanSentence(
        emoji: '📚',
        grammarNote: 'Akkusativ — das → ein: Ich lese ein Buch',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'lese', en: 'read', ur: 'پڑھتا ہوں'),
          SentenceWord(de: 'ein', en: 'a', ur: 'ایک'),
          SentenceWord(de: 'Buch.', en: 'book.', ur: 'کتاب۔'),
        ],
      ),
      GermanSentence(
        emoji: '💰',
        grammarNote: 'das Geld — neutral — Ich habe kein Geld (kein = no)',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'مجھے'),
          SentenceWord(de: 'habe', en: 'have', ur: 'ہے'),
          SentenceWord(de: 'kein', en: 'no', ur: 'کوئی نہیں'),
          SentenceWord(de: 'Geld.', en: 'money.', ur: 'پیسے۔'),
        ],
      ),
    ],
  ),

  // =============================================
  // TOPIC 4 — DAYS & MONTHS
  // =============================================
  A1Topic(
    title: 'Days & Months',
    urduTitle: 'دن اور مہینے',
    emoji: '📅',
    words: [
      // Days
      GermanWord(german: 'der Montag', english: 'Monday', urdu: 'پیر', article: 'der', gender: 'masculine — مذکر', emoji: '1️⃣'),
      GermanWord(german: 'der Dienstag', english: 'Tuesday', urdu: 'منگل', article: 'der', gender: 'masculine — مذکر', emoji: '2️⃣'),
      GermanWord(german: 'der Mittwoch', english: 'Wednesday', urdu: 'بدھ', article: 'der', gender: 'masculine — مذکر', emoji: '3️⃣'),
      GermanWord(german: 'der Donnerstag', english: 'Thursday', urdu: 'جمعرات', article: 'der', gender: 'masculine — مذکر', emoji: '4️⃣'),
      GermanWord(german: 'der Freitag', english: 'Friday', urdu: 'جمعہ', article: 'der', gender: 'masculine — مذکر', emoji: '5️⃣'),
      GermanWord(german: 'der Samstag', english: 'Saturday', urdu: 'ہفتہ', article: 'der', gender: 'masculine — مذکر', emoji: '6️⃣'),
      GermanWord(german: 'der Sonntag', english: 'Sunday', urdu: 'اتوار', article: 'der', gender: 'masculine — مذکر', emoji: '7️⃣'),
      // Months
      GermanWord(german: 'der Januar', english: 'January', urdu: 'جنوری', article: 'der', gender: 'masculine — مذکر', emoji: '❄️'),
      GermanWord(german: 'der Februar', english: 'February', urdu: 'فروری', article: 'der', gender: 'masculine — مذکر', emoji: '💝'),
      GermanWord(german: 'der März', english: 'March', urdu: 'مارچ', article: 'der', gender: 'masculine — مذکر', emoji: '🌱'),
      GermanWord(german: 'der April', english: 'April', urdu: 'اپریل', article: 'der', gender: 'masculine — مذکر', emoji: '🌸'),
      GermanWord(german: 'der Mai', english: 'May', urdu: 'مئی', article: 'der', gender: 'masculine — مذکر', emoji: '🌺'),
      GermanWord(german: 'der Juni', english: 'June', urdu: 'جون', article: 'der', gender: 'masculine — مذکر', emoji: '☀️'),
      GermanWord(german: 'der Juli', english: 'July', urdu: 'جولائی', article: 'der', gender: 'masculine — مذکر', emoji: '🏖️'),
      GermanWord(german: 'der August', english: 'August', urdu: 'اگست', article: 'der', gender: 'masculine — مذکر', emoji: '🌻'),
      GermanWord(german: 'der September', english: 'September', urdu: 'ستمبر', article: 'der', gender: 'masculine — مذکر', emoji: '🍂'),
      GermanWord(german: 'der Oktober', english: 'October', urdu: 'اکتوبر', article: 'der', gender: 'masculine — مذکر', emoji: '🎃'),
      GermanWord(german: 'der November', english: 'November', urdu: 'نومبر', article: 'der', gender: 'masculine — مذکر', emoji: '🌧️'),
      GermanWord(german: 'der Dezember', english: 'December', urdu: 'دسمبر', article: 'der', gender: 'masculine — مذکر', emoji: '🎄'),
      // Time related
      GermanWord(german: 'die Woche', english: 'the Week', urdu: 'ہفتہ', article: 'die', gender: 'feminine — مؤنث', emoji: '📅'),
      GermanWord(german: 'das Wochenende', english: 'the Weekend', urdu: 'ویک اینڈ', article: 'das', gender: 'neutral — غیرجنس', emoji: '🎉'),
      GermanWord(german: 'der Monat', english: 'the Month', urdu: 'مہینہ', article: 'der', gender: 'masculine — مذکر', emoji: '📆'),
      GermanWord(german: 'das Jahr', english: 'the Year', urdu: 'سال', article: 'das', gender: 'neutral — غیرجنس', emoji: '🗓️'),
      GermanWord(german: 'heute', english: 'today', urdu: 'آج', emoji: '📅'),
      GermanWord(german: 'morgen', english: 'tomorrow', urdu: 'کل', emoji: '➡️'),
      GermanWord(german: 'gestern', english: 'yesterday', urdu: 'کل (گزشتہ)', emoji: '⬅️'),
      GermanWord(german: 'übermorgen', english: 'day after tomorrow', urdu: 'پرسوں', emoji: '⏭️'),
      GermanWord(german: 'letzte Woche', english: 'last week', urdu: 'گزشتہ ہفتہ', emoji: '⬅️'),
      GermanWord(german: 'nächste Woche', english: 'next week', urdu: 'اگلا ہفتہ', emoji: '➡️'),
      GermanWord(german: 'das Datum', english: 'the Date', urdu: 'تاریخ', article: 'das', gender: 'neutral — غیرجنس', emoji: '📅'),
    ],
    sentences: [
      GermanSentence(
        emoji: '📅',
        grammarNote: '"Heute ist" = Today is = آج ہے — din batane ke liye',
        words: [
          SentenceWord(de: 'Heute', en: 'Today', ur: 'آج'),
          SentenceWord(de: 'ist', en: 'is', ur: 'ہے'),
          SentenceWord(de: 'Montag.', en: 'Monday.', ur: 'پیر۔'),
        ],
      ),
      GermanSentence(
        emoji: '🗓️',
        grammarNote: '"im" + Monat = in the month — im Januar = جنوری میں',
        words: [
          SentenceWord(de: 'Wir', en: 'We', ur: 'ہم'),
          SentenceWord(de: 'sind', en: 'are', ur: 'ہیں'),
          SentenceWord(de: 'im', en: 'in', ur: 'میں'),
          SentenceWord(de: 'Januar.', en: 'January.', ur: 'جنوری۔'),
        ],
      ),
      GermanSentence(
        emoji: '➡️',
        grammarNote: '"morgen" = tomorrow = کل — koi article nahi lagta',
        words: [
          SentenceWord(de: 'Morgen', en: 'Tomorrow', ur: 'کل'),
          SentenceWord(de: 'ist', en: 'is', ur: 'ہے'),
          SentenceWord(de: 'Dienstag.', en: 'Tuesday.', ur: 'منگل۔'),
        ],
      ),
      GermanSentence(
        emoji: '🎉',
        grammarNote: '"am Wochenende" = on the weekend = ویک اینڈ پر — am = an + dem',
        words: [
          SentenceWord(de: 'Am', en: 'On the', ur: ''),
          SentenceWord(de: 'Wochenende', en: 'weekend', ur: 'ویک اینڈ'),
          SentenceWord(de: 'bin', en: 'am', ur: 'ہوں'),
          SentenceWord(de: 'ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'frei.', en: 'free.', ur: 'فارغ۔'),
        ],
      ),
      GermanSentence(
        emoji: '📆',
        grammarNote: '"am" + Tag = on the day — am Montag = پیر کو',
        words: [
          SentenceWord(de: 'Am', en: 'On', ur: ''),
          SentenceWord(de: 'Freitag', en: 'Friday', ur: 'جمعہ'),
          SentenceWord(de: 'gehe', en: 'go', ur: 'جاتا ہوں'),
          SentenceWord(de: 'ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'zur', en: 'to the', ur: ''),
          SentenceWord(de: 'Moschee.', en: 'mosque.', ur: 'مسجد۔'),
        ],
      ),
      GermanSentence(
        emoji: '🎂',
        grammarNote: '"im" + Monat — Geburtstag = birthday = سالگرہ',
        words: [
          SentenceWord(de: 'Mein', en: 'My', ur: 'میری'),
          SentenceWord(de: 'Geburtstag', en: 'birthday', ur: 'سالگرہ'),
          SentenceWord(de: 'ist', en: 'is', ur: 'ہے'),
          SentenceWord(de: 'im', en: 'in', ur: ''),
          SentenceWord(de: 'März.', en: 'March.', ur: 'مارچ میں۔'),
        ],
      ),
      GermanSentence(
        emoji: '📅',
        grammarNote: '"Welcher Tag ist heute?" = What day is today? = آج کون سا دن ہے؟',
        words: [
          SentenceWord(de: 'Welcher', en: 'Which', ur: 'کون سا'),
          SentenceWord(de: 'Tag', en: 'day', ur: 'دن'),
          SentenceWord(de: 'ist', en: 'is', ur: 'ہے'),
          SentenceWord(de: 'heute?', en: 'today?', ur: 'آج؟'),
        ],
      ),
      GermanSentence(
        emoji: '🗓️',
        grammarNote: '"Welches Datum?" = What date? = کیا تاریخ ہے؟',
        words: [
          SentenceWord(de: 'Welches', en: 'What', ur: 'کیا'),
          SentenceWord(de: 'Datum', en: 'date', ur: 'تاریخ'),
          SentenceWord(de: 'haben', en: 'do we have', ur: 'ہے'),
          SentenceWord(de: 'wir', en: 'we', ur: 'ہم'),
          SentenceWord(de: 'heute?', en: 'today?', ur: 'آج؟'),
        ],
      ),
    ],
  ),
  // =============================================
  // TOPIC 5 — TIME
  // =============================================
  A1Topic(
    title: 'Time — Uhrzeit',
    urduTitle: 'وقت',
    emoji: '🕐',
    words: [
      GermanWord(german: 'die Uhr', english: 'the Clock/Hour', urdu: 'گھڑی/بجے', article: 'die', gender: 'feminine — مؤنث', emoji: '🕐'),
      GermanWord(german: 'die Minute', english: 'the Minute', urdu: 'منٹ', article: 'die', gender: 'feminine — مؤنث', emoji: '⏱️'),
      GermanWord(german: 'die Stunde', english: 'the Hour', urdu: 'گھنٹہ', article: 'die', gender: 'feminine — مؤنث', emoji: '⏰'),
      GermanWord(german: 'die Sekunde', english: 'the Second', urdu: 'سیکنڈ', article: 'die', gender: 'feminine — مؤنث', emoji: '⚡'),
      GermanWord(german: 'der Morgen', english: 'the Morning', urdu: 'صبح', article: 'der', gender: 'masculine — مذکر', emoji: '🌅'),
      GermanWord(german: 'der Vormittag', english: 'the Forenoon', urdu: 'چاشت', article: 'der', gender: 'masculine — مذکر', emoji: '🌤️'),
      GermanWord(german: 'der Mittag', english: 'the Noon', urdu: 'دوپہر', article: 'der', gender: 'masculine — مذکر', emoji: '☀️'),
      GermanWord(german: 'der Nachmittag', english: 'the Afternoon', urdu: 'سہ پہر', article: 'der', gender: 'masculine — مذکر', emoji: '🌤️'),
      GermanWord(german: 'der Abend', english: 'the Evening', urdu: 'شام', article: 'der', gender: 'masculine — مذکر', emoji: '🌆'),
      GermanWord(german: 'die Nacht', english: 'the Night', urdu: 'رات', article: 'die', gender: 'feminine — مؤنث', emoji: '🌙'),
      GermanWord(german: 'halb', english: 'half', urdu: 'آدھا', emoji: '⏰'),
      GermanWord(german: 'Viertel', english: 'quarter', urdu: 'پاؤ', emoji: '🕒'),
      GermanWord(german: 'nach', english: 'past', urdu: 'بعد', emoji: '➡️'),
      GermanWord(german: 'vor', english: 'to/before', urdu: 'پہلے', emoji: '⬅️'),
      GermanWord(german: 'früh', english: 'early', urdu: 'جلدی', emoji: '🌅'),
      GermanWord(german: 'spät', english: 'late', urdu: 'دیر سے', emoji: '🌙'),
      GermanWord(german: 'pünktlich', english: 'on time', urdu: 'وقت پر', emoji: '✅'),
      GermanWord(german: 'jetzt', english: 'now', urdu: 'ابھی', emoji: '⚡'),
      GermanWord(german: 'bald', english: 'soon', urdu: 'جلد', emoji: '🔜'),
      GermanWord(german: 'später', english: 'later', urdu: 'بعد میں', emoji: '⏭️'),
    ],
    sentences: [
      GermanSentence(
        emoji: '🕐',
        grammarNote: '"Es ist" = It is = یہ ہے — waqt batane ke liye hamesha "Es ist" use hota hai',
        words: [
          SentenceWord(de: 'Es', en: 'It', ur: 'یہ'),
          SentenceWord(de: 'ist', en: 'is', ur: 'ہے'),
          SentenceWord(de: 'drei', en: 'three', ur: 'تین'),
          SentenceWord(de: 'Uhr.', en: "o'clock.", ur: 'بجے۔'),
        ],
      ),
      GermanSentence(
        emoji: '🕒',
        grammarNote: '"Viertel nach" = quarter past = سوا — Es ist Viertel nach drei = 3:15',
        words: [
          SentenceWord(de: 'Es', en: 'It', ur: 'یہ'),
          SentenceWord(de: 'ist', en: 'is', ur: 'ہے'),
          SentenceWord(de: 'Viertel', en: 'quarter', ur: 'پاؤ'),
          SentenceWord(de: 'nach', en: 'past', ur: 'بعد'),
          SentenceWord(de: 'drei.', en: 'three.', ur: 'تین کے۔'),
        ],
      ),
      GermanSentence(
        emoji: '⏰',
        grammarNote: '"halb vier" = half past three = ساڑھے تین — halb = 30 min BEFORE next hour!',
        words: [
          SentenceWord(de: 'Es', en: 'It', ur: 'یہ'),
          SentenceWord(de: 'ist', en: 'is', ur: 'ہے'),
          SentenceWord(de: 'halb', en: 'half past', ur: 'ساڑھے'),
          SentenceWord(de: 'vier.', en: 'three (3:30).', ur: 'تین۔'),
        ],
      ),
      GermanSentence(
        emoji: '🕒',
        grammarNote: '"Viertel vor" = quarter to = پون — Es ist Viertel vor vier = 3:45',
        words: [
          SentenceWord(de: 'Es', en: 'It', ur: 'یہ'),
          SentenceWord(de: 'ist', en: 'is', ur: 'ہے'),
          SentenceWord(de: 'Viertel', en: 'quarter', ur: 'پون'),
          SentenceWord(de: 'vor', en: 'to', ur: 'پہلے'),
          SentenceWord(de: 'vier.', en: 'four.', ur: 'چار کے۔'),
        ],
      ),
      GermanSentence(
        emoji: '🌅',
        grammarNote: '"stehe auf" = get up = اٹھتا ہوں — aufstehen separable verb hai!',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'stehe', en: 'get', ur: 'اٹھتا'),
          SentenceWord(de: 'um', en: 'at', ur: ''),
          SentenceWord(de: 'sieben', en: 'seven', ur: 'سات'),
          SentenceWord(de: 'Uhr', en: "o'clock", ur: 'بجے'),
          SentenceWord(de: 'auf.', en: 'up.', ur: 'ہوں۔'),
        ],
      ),
      GermanSentence(
        emoji: '❓',
        grammarNote: '"Wie spät ist es?" = What time is it? = کیا وقت ہوا ہے؟',
        words: [
          SentenceWord(de: 'Wie', en: 'What', ur: 'کیا'),
          SentenceWord(de: 'spät', en: 'time', ur: 'وقت'),
          SentenceWord(de: 'ist', en: 'is', ur: 'ہوا'),
          SentenceWord(de: 'es?', en: 'it?', ur: 'ہے؟'),
        ],
      ),
      GermanSentence(
        emoji: '❓',
        grammarNote: '"Um wie viel Uhr?" = At what time? = کتنے بجے؟',
        words: [
          SentenceWord(de: 'Um', en: 'At', ur: ''),
          SentenceWord(de: 'wie', en: 'what', ur: 'کتنے'),
          SentenceWord(de: 'viel', en: 'much', ur: ''),
          SentenceWord(de: 'Uhr', en: 'time', ur: 'بجے'),
          SentenceWord(de: 'beginnt', en: 'does start', ur: 'شروع ہوتی ہے'),
          SentenceWord(de: 'die', en: 'the', ur: ''),
          SentenceWord(de: 'Schule?', en: 'school?', ur: 'سکول؟'),
        ],
      ),
      GermanSentence(
        emoji: '🌙',
        grammarNote: '"gehe schlafen" = go to sleep = سونے جاتا ہوں — um = at (time)',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'gehe', en: 'go', ur: 'جاتا ہوں'),
          SentenceWord(de: 'um', en: 'at', ur: ''),
          SentenceWord(de: 'zehn', en: 'ten', ur: 'دس'),
          SentenceWord(de: 'Uhr', en: "o'clock", ur: 'بجے'),
          SentenceWord(de: 'schlafen.', en: 'to sleep.', ur: 'سونے۔'),
        ],
      ),
    ],
  ),

  // =============================================
  // TOPIC 6 — FOOD & DRINKS
  // =============================================
  A1Topic(
    title: 'Food & Drinks',
    urduTitle: 'کھانا اور پینا',
    emoji: '🍽️',
    words: [
      // Staple Foods
      GermanWord(german: 'das Brot', english: 'the Bread', urdu: 'روٹی', article: 'das', gender: 'neutral — غیرجنس', emoji: '🍞'),
      GermanWord(german: 'der Reis', english: 'the Rice', urdu: 'چاول', article: 'der', gender: 'masculine — مذکر', emoji: '🍚'),
      GermanWord(german: 'die Nudeln', english: 'the Pasta/Noodles', urdu: 'پاستہ', article: 'die', gender: 'feminine — مؤنث', emoji: '🍝'),
      GermanWord(german: 'das Fleisch', english: 'the Meat', urdu: 'گوشت', article: 'das', gender: 'neutral — غیرجنس', emoji: '🥩'),
      GermanWord(german: 'das Hähnchen', english: 'the Chicken', urdu: 'مرغی', article: 'das', gender: 'neutral — غیرجنس', emoji: '🍗'),
      GermanWord(german: 'der Fisch', english: 'the Fish', urdu: 'مچھلی', article: 'der', gender: 'masculine — مذکر', emoji: '🐟'),
      GermanWord(german: 'das Ei', english: 'the Egg', urdu: 'انڈہ', article: 'das', gender: 'neutral — غیرجنس', emoji: '🥚'),
      GermanWord(german: 'der Käse', english: 'the Cheese', urdu: 'پنیر', article: 'der', gender: 'masculine — مذکر', emoji: '🧀'),
      GermanWord(german: 'die Butter', english: 'the Butter', urdu: 'مکھن', article: 'die', gender: 'feminine — مؤنث', emoji: '🧈'),
      // Fruits
      GermanWord(german: 'der Apfel', english: 'the Apple', urdu: 'سیب', article: 'der', gender: 'masculine — مذکر', emoji: '🍎'),
      GermanWord(german: 'die Banane', english: 'the Banana', urdu: 'کیلا', article: 'die', gender: 'feminine — مؤنث', emoji: '🍌'),
      GermanWord(german: 'die Orange', english: 'the Orange', urdu: 'مالٹا', article: 'die', gender: 'feminine — مؤنث', emoji: '🍊'),
      GermanWord(german: 'die Traube', english: 'the Grape', urdu: 'انگور', article: 'die', gender: 'feminine — مؤنث', emoji: '🍇'),
      GermanWord(german: 'die Erdbeere', english: 'the Strawberry', urdu: 'اسٹرابیری', article: 'die', gender: 'feminine — مؤنث', emoji: '🍓'),
      GermanWord(german: 'die Mango', english: 'the Mango', urdu: 'آم', article: 'die', gender: 'feminine — مؤنث', emoji: '🥭'),
      // Vegetables
      GermanWord(german: 'die Kartoffel', english: 'the Potato', urdu: 'آلو', article: 'die', gender: 'feminine — مؤنث', emoji: '🥔'),
      GermanWord(german: 'die Tomate', english: 'the Tomato', urdu: 'ٹماٹر', article: 'die', gender: 'feminine — مؤنث', emoji: '🍅'),
      GermanWord(german: 'die Zwiebel', english: 'the Onion', urdu: 'پیاز', article: 'die', gender: 'feminine — مؤنث', emoji: '🧅'),
      GermanWord(german: 'der Knoblauch', english: 'the Garlic', urdu: 'لہسن', article: 'der', gender: 'masculine — مذکر', emoji: '🧄'),
      GermanWord(german: 'die Karotte', english: 'the Carrot', urdu: 'گاجر', article: 'die', gender: 'feminine — مؤنث', emoji: '🥕'),
      GermanWord(german: 'der Salat', english: 'the Salad/Lettuce', urdu: 'سلاد', article: 'der', gender: 'masculine — مذکر', emoji: '🥗'),
      // Drinks
      GermanWord(german: 'das Wasser', english: 'the Water', urdu: 'پانی', article: 'das', gender: 'neutral — غیرجنس', emoji: '💧'),
      GermanWord(german: 'der Tee', english: 'the Tea', urdu: 'چائے', article: 'der', gender: 'masculine — مذکر', emoji: '🍵'),
      GermanWord(german: 'der Kaffee', english: 'the Coffee', urdu: 'کافی', article: 'der', gender: 'masculine — مذکر', emoji: '☕'),
      GermanWord(german: 'die Milch', english: 'the Milk', urdu: 'دودھ', article: 'die', gender: 'feminine — مؤنث', emoji: '🥛'),
      GermanWord(german: 'der Saft', english: 'the Juice', urdu: 'جوس', article: 'der', gender: 'masculine — مذکر', emoji: '🥤'),
      GermanWord(german: 'die Limonade', english: 'the Lemonade', urdu: 'لیمونیڈ', article: 'die', gender: 'feminine — مؤنث', emoji: '🍋'),
      // Restaurant
      GermanWord(german: 'die Speisekarte', english: 'the Menu', urdu: 'مینو', article: 'die', gender: 'feminine — مؤنث', emoji: '📋'),
      GermanWord(german: 'der Kellner', english: 'the Waiter', urdu: 'ویٹر', article: 'der', gender: 'masculine — مذکر', emoji: '🧑‍🍳'),
      GermanWord(german: 'die Rechnung', english: 'the Bill', urdu: 'بل', article: 'die', gender: 'feminine — مؤنث', emoji: '🧾'),
      GermanWord(german: 'lecker', english: 'delicious', urdu: 'مزیدار', emoji: '😋'),
      GermanWord(german: 'vegetarisch', english: 'vegetarian', urdu: 'سبزی خور', emoji: '🥗'),
      GermanWord(german: 'halal', english: 'halal', urdu: 'حلال', emoji: '✅'),
    ],
    sentences: [
      GermanSentence(
        emoji: '🍽️',
        grammarNote: '"möchte" = would like = چاہتا ہوں — polite request ke liye use hota hai',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'möchte', en: 'would like', ur: 'چاہتا ہوں'),
          SentenceWord(de: 'einen', en: 'a', ur: 'ایک'),
          SentenceWord(de: 'Tee,', en: 'tea,', ur: 'چائے،'),
          SentenceWord(de: 'bitte.', en: 'please.', ur: 'براہ کرم۔'),
        ],
      ),
      GermanSentence(
        emoji: '🍎',
        grammarNote: '"esse" = eat = کھاتا ہوں — Akkusativ: der Apfel → einen Apfel',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'esse', en: 'eat', ur: 'کھاتا ہوں'),
          SentenceWord(de: 'einen', en: 'an', ur: 'ایک'),
          SentenceWord(de: 'Apfel.', en: 'apple.', ur: 'سیب۔'),
        ],
      ),
      GermanSentence(
        emoji: '💧',
        grammarNote: '"trinke" = drink = پیتا ہوں — Wasser das hai isliye kein article',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'trinke', en: 'drink', ur: 'پیتا ہوں'),
          SentenceWord(de: 'Wasser.', en: 'water.', ur: 'پانی۔'),
        ],
      ),
      GermanSentence(
        emoji: '📋',
        grammarNote: '"Die Speisekarte, bitte!" = The menu, please! = مینو دیں براہ کرم',
        words: [
          SentenceWord(de: 'Die', en: 'The', ur: ''),
          SentenceWord(de: 'Speisekarte,', en: 'menu,', ur: 'مینو،'),
          SentenceWord(de: 'bitte!', en: 'please!', ur: 'براہ کرم!'),
        ],
      ),
      GermanSentence(
        emoji: '🧾',
        grammarNote: '"Die Rechnung, bitte!" = The bill, please! = بل لائیں براہ کرم',
        words: [
          SentenceWord(de: 'Die', en: 'The', ur: ''),
          SentenceWord(de: 'Rechnung,', en: 'bill,', ur: 'بل،'),
          SentenceWord(de: 'bitte!', en: 'please!', ur: 'براہ کرم!'),
        ],
      ),
      GermanSentence(
        emoji: '😋',
        grammarNote: '"Das schmeckt lecker!" = That tastes delicious! = یہ مزیدار ہے!',
        words: [
          SentenceWord(de: 'Das', en: 'That', ur: 'یہ'),
          SentenceWord(de: 'schmeckt', en: 'tastes', ur: 'لگتا ہے'),
          SentenceWord(de: 'sehr', en: 'very', ur: 'بہت'),
          SentenceWord(de: 'lecker!', en: 'delicious!', ur: 'مزیدار!'),
        ],
      ),
      GermanSentence(
        emoji: '✅',
        grammarNote: '"Ist das halal?" = Is that halal? = کیا یہ حلال ہے؟',
        words: [
          SentenceWord(de: 'Ist', en: 'Is', ur: 'کیا'),
          SentenceWord(de: 'das', en: 'that', ur: 'یہ'),
          SentenceWord(de: 'halal?', en: 'halal?', ur: 'حلال ہے؟'),
        ],
      ),
      GermanSentence(
        emoji: '🥗',
        grammarNote: '"Ich bin Vegetarier" = I am vegetarian = میں سبزی خور ہوں',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'bin', en: 'am', ur: 'ہوں'),
          SentenceWord(de: 'Vegetarier.', en: 'vegetarian.', ur: 'سبزی خور۔'),
        ],
      ),
      GermanSentence(
        emoji: '❓',
        grammarNote: '"Was empfehlen Sie?" = What do you recommend? = آپ کیا تجویز کرتے ہیں؟',
        words: [
          SentenceWord(de: 'Was', en: 'What', ur: 'کیا'),
          SentenceWord(de: 'empfehlen', en: 'recommend', ur: 'تجویز کرتے ہیں'),
          SentenceWord(de: 'Sie?', en: 'you?', ur: 'آپ؟'),
        ],
      ),
      GermanSentence(
        emoji: '🍽️',
        grammarNote: '"Guten Appetit!" = Enjoy your meal! = بسم اللہ / نوش فرمائیں',
        words: [
          SentenceWord(de: 'Guten', en: 'Good', ur: 'اچھی'),
          SentenceWord(de: 'Appetit!', en: 'appetite!', ur: 'بھوک!'),
        ],
      ),
    ],
  ),

  // =============================================
  // TOPIC 7 — HOBBIES & FREE TIME
  // =============================================
  A1Topic(
    title: 'Hobbies & Free Time',
    urduTitle: 'مشاغل اور فارغ وقت',
    emoji: '🎮',
    words: [
      GermanWord(german: 'das Hobby', english: 'the Hobby', urdu: 'مشغلہ', article: 'das', gender: 'neutral — غیرجنس', emoji: '🎯'),
      GermanWord(german: 'der Sport', english: 'the Sport', urdu: 'کھیل', article: 'der', gender: 'masculine — مذکر', emoji: '⚽'),
      GermanWord(german: 'die Musik', english: 'the Music', urdu: 'موسیقی', article: 'die', gender: 'feminine — مؤنث', emoji: '🎵'),
      GermanWord(german: 'das Lesen', english: 'the Reading', urdu: 'پڑھنا', article: 'das', gender: 'neutral — غیرجنس', emoji: '📚'),
      GermanWord(german: 'das Reisen', english: 'the Traveling', urdu: 'سفر', article: 'das', gender: 'neutral — غیرجنس', emoji: '✈️'),
      GermanWord(german: 'das Kochen', english: 'the Cooking', urdu: 'کھانا پکانا', article: 'das', gender: 'neutral — غیرجنس', emoji: '👨‍🍳'),
      GermanWord(german: 'das Schwimmen', english: 'the Swimming', urdu: 'تیراکی', article: 'das', gender: 'neutral — غیرجنس', emoji: '🏊'),
      GermanWord(german: 'das Laufen', english: 'the Running', urdu: 'دوڑنا', article: 'das', gender: 'neutral — غیرجنس', emoji: '🏃'),
      GermanWord(german: 'das Tanzen', english: 'the Dancing', urdu: 'ناچنا', article: 'das', gender: 'neutral — غیرجنس', emoji: '💃'),
      GermanWord(german: 'das Malen', english: 'the Painting', urdu: 'مصوری', article: 'das', gender: 'neutral — غیرجنس', emoji: '🎨'),
      GermanWord(german: 'das Fotografieren', english: 'the Photography', urdu: 'فوٹوگرافی', article: 'das', gender: 'neutral — غیرجنس', emoji: '📷'),
      GermanWord(german: 'das Spielen', english: 'the Playing', urdu: 'کھیلنا', article: 'das', gender: 'neutral — غیرجنس', emoji: '🎮'),
      GermanWord(german: 'der Fußball', english: 'the Football', urdu: 'فٹبال', article: 'der', gender: 'masculine — مذکر', emoji: '⚽'),
      GermanWord(german: 'das Tennis', english: 'the Tennis', urdu: 'ٹینس', article: 'das', gender: 'neutral — غیرجنس', emoji: '🎾'),
      GermanWord(german: 'das Kino', english: 'the Cinema', urdu: 'سینما', article: 'das', gender: 'neutral — غیرجنس', emoji: '🎬'),
      GermanWord(german: 'das Theater', english: 'the Theater', urdu: 'تھیٹر', article: 'das', gender: 'neutral — غیرجنس', emoji: '🎭'),
      GermanWord(german: 'die Bibliothek', english: 'the Library', urdu: 'لائبریری', article: 'die', gender: 'feminine — مؤنث', emoji: '📚'),
      GermanWord(german: 'der Spaziergang', english: 'the Walk', urdu: 'سیر', article: 'der', gender: 'masculine — مذکر', emoji: '🚶'),
      GermanWord(german: 'gerne', english: 'gladly/like to', urdu: 'خوشی سے', emoji: '😊'),
      GermanWord(german: 'lieber', english: 'rather/prefer', urdu: 'زیادہ پسند', emoji: '❤️'),
    ],
    sentences: [
      GermanSentence(
        emoji: '🎯',
        grammarNote: '"Mein Hobby ist" = My hobby is = میرا مشغلہ ہے',
        words: [
          SentenceWord(de: 'Mein', en: 'My', ur: 'میرا'),
          SentenceWord(de: 'Hobby', en: 'hobby', ur: 'مشغلہ'),
          SentenceWord(de: 'ist', en: 'is', ur: 'ہے'),
          SentenceWord(de: 'Lesen.', en: 'reading.', ur: 'پڑھنا۔'),
        ],
      ),
      GermanSentence(
        emoji: '⚽',
        grammarNote: '"spiele gerne" = like to play = خوشی سے کھیلتا ہوں — gerne = gladly',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'spiele', en: 'play', ur: 'کھیلتا ہوں'),
          SentenceWord(de: 'gerne', en: 'gladly', ur: 'خوشی سے'),
          SentenceWord(de: 'Fußball.', en: 'football.', ur: 'فٹبال۔'),
        ],
      ),
      GermanSentence(
        emoji: '🎵',
        grammarNote: '"höre Musik" = listen to music = موسیقی سنتا ہوں — hören = to listen',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'höre', en: 'listen to', ur: 'سنتا ہوں'),
          SentenceWord(de: 'gerne', en: 'gladly', ur: 'خوشی سے'),
          SentenceWord(de: 'Musik.', en: 'music.', ur: 'موسیقی۔'),
        ],
      ),
      GermanSentence(
        emoji: '🎬',
        grammarNote: '"gehe ins Kino" = go to cinema = سینما جاتا ہوں — ins = in + das',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'gehe', en: 'go', ur: 'جاتا ہوں'),
          SentenceWord(de: 'ins', en: 'to the', ur: ''),
          SentenceWord(de: 'Kino.', en: 'cinema.', ur: 'سینما۔'),
        ],
      ),
      GermanSentence(
        emoji: '🏊',
        grammarNote: '"schwimme" = swim = تیرتا ہوں — schwimmen verb',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'schwimme', en: 'swim', ur: 'تیرتا ہوں'),
          SentenceWord(de: 'gerne', en: 'gladly', ur: 'خوشی سے'),
          SentenceWord(de: 'im', en: 'in the', ur: ''),
          SentenceWord(de: 'Sommer.', en: 'summer.', ur: 'گرمیوں میں۔'),
        ],
      ),
      GermanSentence(
        emoji: '❓',
        grammarNote: '"Was machst du in der Freizeit?" = What do you do in free time?',
        words: [
          SentenceWord(de: 'Was', en: 'What', ur: 'کیا'),
          SentenceWord(de: 'machst', en: 'do', ur: 'کرتے ہو'),
          SentenceWord(de: 'du', en: 'you', ur: 'تم'),
          SentenceWord(de: 'in', en: 'in', ur: 'میں'),
          SentenceWord(de: 'der', en: 'the', ur: ''),
          SentenceWord(de: 'Freizeit?', en: 'free time?', ur: 'فارغ وقت؟'),
        ],
      ),
      GermanSentence(
        emoji: '🚶',
        grammarNote: '"mache einen Spaziergang" = take a walk = سیر کرتا ہوں',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'mache', en: 'take', ur: 'کرتا ہوں'),
          SentenceWord(de: 'einen', en: 'a', ur: 'ایک'),
          SentenceWord(de: 'Spaziergang.', en: 'walk.', ur: 'سیر۔'),
        ],
      ),
      GermanSentence(
        emoji: '❤️',
        grammarNote: '"lieber" = prefer = زیادہ پسند — lieber + verb = prefer to do',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'lese', en: 'read', ur: 'پڑھتا ہوں'),
          SentenceWord(de: 'lieber', en: 'rather', ur: 'زیادہ'),
          SentenceWord(de: 'als', en: 'than', ur: 'سے'),
          SentenceWord(de: 'fernsehen.', en: 'watching TV.', ur: 'ٹی وی دیکھنا۔'),
        ],
      ),
    ],
  ),
  // =============================================
  // TOPIC 8 — AT THE HOTEL
  // =============================================
  A1Topic(
    title: 'At the Hotel',
    urduTitle: 'ہوٹل میں',
    emoji: '🏨',
    words: [
      GermanWord(german: 'das Hotel', english: 'the Hotel', urdu: 'ہوٹل', article: 'das', gender: 'neutral — غیرجنس', emoji: '🏨'),
      GermanWord(german: 'das Zimmer', english: 'the Room', urdu: 'کمرہ', article: 'das', gender: 'neutral — غیرجنس', emoji: '🛏️'),
      GermanWord(german: 'das Einzelzimmer', english: 'the Single Room', urdu: 'سنگل کمرہ', article: 'das', gender: 'neutral — غیرجنس', emoji: '🛏️'),
      GermanWord(german: 'das Doppelzimmer', english: 'the Double Room', urdu: 'ڈبل کمرہ', article: 'das', gender: 'neutral — غیرجنس', emoji: '🛏️🛏️'),
      GermanWord(german: 'die Rezeption', english: 'the Reception', urdu: 'استقبالیہ', article: 'die', gender: 'feminine — مؤنث', emoji: '🛎️'),
      GermanWord(german: 'der Schlüssel', english: 'the Key', urdu: 'چابی', article: 'der', gender: 'masculine — مذکر', emoji: '🔑'),
      GermanWord(german: 'die Nacht', english: 'the Night', urdu: 'رات', article: 'die', gender: 'feminine — مؤنث', emoji: '🌙'),
      GermanWord(german: 'das Frühstück', english: 'the Breakfast', urdu: 'ناشتہ', article: 'das', gender: 'neutral — غیرجنس', emoji: '🍳'),
      GermanWord(german: 'der Aufzug', english: 'the Elevator', urdu: 'لفٹ', article: 'der', gender: 'masculine — مذکر', emoji: '🛗'),
      GermanWord(german: 'die Etage', english: 'the Floor', urdu: 'منزل', article: 'die', gender: 'feminine — مؤنث', emoji: '🏢'),
      GermanWord(german: 'das Bad', english: 'the Bathroom', urdu: 'باتھ روم', article: 'das', gender: 'neutral — غیرجنس', emoji: '🚿'),
      GermanWord(german: 'das Handtuch', english: 'the Towel', urdu: 'تولیہ', article: 'das', gender: 'neutral — غیرجنس', emoji: '🏨'),
      GermanWord(german: 'die Reservierung', english: 'the Reservation', urdu: 'بکنگ', article: 'die', gender: 'feminine — مؤنث', emoji: '📋'),
      GermanWord(german: 'der Preis', english: 'the Price', urdu: 'قیمت', article: 'der', gender: 'masculine — مذکر', emoji: '💰'),
      GermanWord(german: 'inklusive', english: 'inclusive', urdu: 'شامل', emoji: '✅'),
      GermanWord(german: 'der Parkplatz', english: 'the Parking', urdu: 'پارکنگ', article: 'der', gender: 'masculine — مذکر', emoji: '🅿️'),
      GermanWord(german: 'das WLAN', english: 'the WiFi', urdu: 'وائی فائی', article: 'das', gender: 'neutral — غیرجنس', emoji: '📶'),
      GermanWord(german: 'die Anmeldung', english: 'the Check-in', urdu: 'چیک ان', article: 'die', gender: 'feminine — مؤنث', emoji: '✅'),
      GermanWord(german: 'die Abmeldung', english: 'the Check-out', urdu: 'چیک آؤٹ', article: 'die', gender: 'feminine — مؤنث', emoji: '🚪'),
      GermanWord(german: 'ruhig', english: 'quiet', urdu: 'پرسکون', emoji: '🤫'),
    ],
    sentences: [
      GermanSentence(
        emoji: '🏨',
        grammarNote: '"Ich möchte" = I would like = میں چاہتا ہوں — polite request',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'möchte', en: 'would like', ur: 'چاہتا ہوں'),
          SentenceWord(de: 'ein', en: 'a', ur: 'ایک'),
          SentenceWord(de: 'Zimmer', en: 'room', ur: 'کمرہ'),
          SentenceWord(de: 'buchen.', en: 'book.', ur: 'بک کرنا۔'),
        ],
      ),
      GermanSentence(
        emoji: '💰',
        grammarNote: '"Was kostet" = How much does it cost = کتنے کا ہے',
        words: [
          SentenceWord(de: 'Was', en: 'What', ur: 'کیا'),
          SentenceWord(de: 'kostet', en: 'costs', ur: 'کا ہے'),
          SentenceWord(de: 'das', en: 'the', ur: 'یہ'),
          SentenceWord(de: 'Zimmer', en: 'room', ur: 'کمرہ'),
          SentenceWord(de: 'pro', en: 'per', ur: 'فی'),
          SentenceWord(de: 'Nacht?', en: 'night?', ur: 'رات؟'),
        ],
      ),
      GermanSentence(
        emoji: '📶',
        grammarNote: '"Gibt es" = Is there = کیا ہے — gibt es = there is/are',
        words: [
          SentenceWord(de: 'Gibt', en: 'Is', ur: 'کیا'),
          SentenceWord(de: 'es', en: 'there', ur: 'یہاں'),
          SentenceWord(de: 'WLAN', en: 'WiFi', ur: 'وائی فائی'),
          SentenceWord(de: 'im', en: 'in the', ur: ''),
          SentenceWord(de: 'Hotel?', en: 'hotel?', ur: 'ہوٹل میں ہے؟'),
        ],
      ),
      GermanSentence(
        emoji: '🍳',
        grammarNote: '"Ist das Frühstück inklusive?" = Is breakfast included?',
        words: [
          SentenceWord(de: 'Ist', en: 'Is', ur: 'کیا'),
          SentenceWord(de: 'das', en: 'the', ur: ''),
          SentenceWord(de: 'Frühstück', en: 'breakfast', ur: 'ناشتہ'),
          SentenceWord(de: 'inklusive?', en: 'included?', ur: 'شامل ہے؟'),
        ],
      ),
      GermanSentence(
        emoji: '🔑',
        grammarNote: '"Hier ist Ihr Schlüssel" = Here is your key = یہ آپ کی چابی ہے',
        words: [
          SentenceWord(de: 'Hier', en: 'Here', ur: 'یہ'),
          SentenceWord(de: 'ist', en: 'is', ur: 'ہے'),
          SentenceWord(de: 'Ihr', en: 'your', ur: 'آپ کی'),
          SentenceWord(de: 'Schlüssel.', en: 'key.', ur: 'چابی۔'),
        ],
      ),
      GermanSentence(
        emoji: '🚪',
        grammarNote: '"Ich möchte auschecken" = I would like to check out = چیک آؤٹ کرنا ہے',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'möchte', en: 'would like', ur: 'چاہتا ہوں'),
          SentenceWord(de: 'auschecken.', en: 'to check out.', ur: 'چیک آؤٹ کرنا۔'),
        ],
      ),
      GermanSentence(
        emoji: '🛗',
        grammarNote: '"Wo ist der Aufzug?" = Where is the elevator? = لفٹ کہاں ہے؟',
        words: [
          SentenceWord(de: 'Wo', en: 'Where', ur: 'کہاں'),
          SentenceWord(de: 'ist', en: 'is', ur: 'ہے'),
          SentenceWord(de: 'der', en: 'the', ur: ''),
          SentenceWord(de: 'Aufzug?', en: 'elevator?', ur: 'لفٹ؟'),
        ],
      ),
      GermanSentence(
        emoji: '🤫',
        grammarNote: '"Ich möchte ein ruhiges Zimmer" = I would like a quiet room',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'möchte', en: 'would like', ur: 'چاہتا ہوں'),
          SentenceWord(de: 'ein', en: 'a', ur: 'ایک'),
          SentenceWord(de: 'ruhiges', en: 'quiet', ur: 'پرسکون'),
          SentenceWord(de: 'Zimmer.', en: 'room.', ur: 'کمرہ۔'),
        ],
      ),
    ],
  ),
  // =============================================
  // TOPIC 9 — THE CITY
  // =============================================
  A1Topic(
    title: 'The City',
    urduTitle: 'شہر',
    emoji: '🏙️',
    words: [
      GermanWord(german: 'die Stadt', english: 'the City', urdu: 'شہر', article: 'die', gender: 'feminine — مؤنث', emoji: '🏙️'),
      GermanWord(german: 'die Straße', english: 'the Street', urdu: 'سڑک', article: 'die', gender: 'feminine — مؤنث', emoji: '🛣️'),
      GermanWord(german: 'der Platz', english: 'the Square', urdu: 'چوک', article: 'der', gender: 'masculine — مذکر', emoji: '🏛️'),
      GermanWord(german: 'der Bahnhof', english: 'the Train Station', urdu: 'ریلوے اسٹیشن', article: 'der', gender: 'masculine — مذکر', emoji: '🚉'),
      GermanWord(german: 'die Bank', english: 'the Bank', urdu: 'بینک', article: 'die', gender: 'feminine — مؤنث', emoji: '🏦'),
      GermanWord(german: 'das Krankenhaus', english: 'the Hospital', urdu: 'ہسپتال', article: 'das', gender: 'neutral — غیرجنس', emoji: '🏥'),
      GermanWord(german: 'die Apotheke', english: 'the Pharmacy', urdu: 'دوا خانہ', article: 'die', gender: 'feminine — مؤنث', emoji: '💊'),
      GermanWord(german: 'der Supermarkt', english: 'the Supermarket', urdu: 'سپر مارکیٹ', article: 'der', gender: 'masculine — مذکر', emoji: '🛒'),
      GermanWord(german: 'die Post', english: 'the Post Office', urdu: 'ڈاک خانہ', article: 'die', gender: 'feminine — مؤنث', emoji: '📮'),
      GermanWord(german: 'die Polizei', english: 'the Police', urdu: 'پولیس', article: 'die', gender: 'feminine — مؤنث', emoji: '👮'),
      GermanWord(german: 'die Kirche', english: 'the Church', urdu: 'گرجا گھر', article: 'die', gender: 'feminine — مؤنث', emoji: '⛪'),
      GermanWord(german: 'die Moschee', english: 'the Mosque', urdu: 'مسجد', article: 'die', gender: 'feminine — مؤنث', emoji: '🕌'),
      GermanWord(german: 'der Park', english: 'the Park', urdu: 'پارک', article: 'der', gender: 'masculine — مذکر', emoji: '🌳'),
      GermanWord(german: 'das Museum', english: 'the Museum', urdu: 'عجائب گھر', article: 'das', gender: 'neutral — غیرجنس', emoji: '🏛️'),
      GermanWord(german: 'die Bushaltestelle', english: 'the Bus Stop', urdu: 'بس اسٹاپ', article: 'die', gender: 'feminine — مؤنث', emoji: '🚌'),
      GermanWord(german: 'links', english: 'left', urdu: 'بائیں', emoji: '⬅️'),
      GermanWord(german: 'rechts', english: 'right', urdu: 'دائیں', emoji: '➡️'),
      GermanWord(german: 'geradeaus', english: 'straight ahead', urdu: 'سیدھا', emoji: '⬆️'),
      GermanWord(german: 'nah', english: 'near', urdu: 'قریب', emoji: '📍'),
      GermanWord(german: 'weit', english: 'far', urdu: 'دور', emoji: '🗺️'),
      GermanWord(german: 'die Kreuzung', english: 'the Crossroads', urdu: 'چوراہا', article: 'die', gender: 'feminine — مؤنث', emoji: '🚦'),
      GermanWord(german: 'die Ampel', english: 'the Traffic Light', urdu: 'ٹریفک لائٹ', article: 'die', gender: 'feminine — مؤنث', emoji: '🚦'),
      GermanWord(german: 'die Brücke', english: 'the Bridge', urdu: 'پل', article: 'die', gender: 'feminine — مؤنث', emoji: '🌉'),
      GermanWord(german: 'der Weg', english: 'the Way/Path', urdu: 'راستہ', article: 'der', gender: 'masculine — مذکر', emoji: '🛤️'),
      GermanWord(german: 'entlang', english: 'along', urdu: 'ساتھ ساتھ', emoji: '➡️'),
    ],
    sentences: [
      GermanSentence(
        emoji: '🗺️',
        grammarNote: '"Wo ist" = Where is = کہاں ہے — direction poochne ke liye',
        words: [
          SentenceWord(de: 'Wo', en: 'Where', ur: 'کہاں'),
          SentenceWord(de: 'ist', en: 'is', ur: 'ہے'),
          SentenceWord(de: 'der', en: 'the', ur: ''),
          SentenceWord(de: 'Bahnhof?', en: 'train station?', ur: 'ریلوے اسٹیشن؟'),
        ],
      ),
      GermanSentence(
        emoji: '➡️',
        grammarNote: '"Gehen Sie geradeaus" = Go straight = سیدھے جائیں — formal command',
        words: [
          SentenceWord(de: 'Gehen', en: 'Go', ur: 'جائیں'),
          SentenceWord(de: 'Sie', en: 'you', ur: 'آپ'),
          SentenceWord(de: 'geradeaus,', en: 'straight,', ur: 'سیدھا،'),
          SentenceWord(de: 'dann', en: 'then', ur: 'پھر'),
          SentenceWord(de: 'links.', en: 'left.', ur: 'بائیں۔'),
        ],
      ),
      GermanSentence(
        emoji: '📍',
        grammarNote: '"in der Nähe" = nearby = قریب میں — Nähe = nearness',
        words: [
          SentenceWord(de: 'Ist', en: 'Is', ur: 'کیا'),
          SentenceWord(de: 'das', en: 'the', ur: ''),
          SentenceWord(de: 'Hotel', en: 'hotel', ur: 'ہوٹل'),
          SentenceWord(de: 'in', en: 'in', ur: ''),
          SentenceWord(de: 'der', en: 'the', ur: ''),
          SentenceWord(de: 'Nähe?', en: 'nearby?', ur: 'قریب ہے؟'),
        ],
      ),
      GermanSentence(
        emoji: '🚦',
        grammarNote: '"an der Ampel" = at the traffic light = ٹریفک لائٹ پر',
        words: [
          SentenceWord(de: 'Biegen', en: 'Turn', ur: 'مڑیں'),
          SentenceWord(de: 'Sie', en: 'you', ur: 'آپ'),
          SentenceWord(de: 'an', en: 'at', ur: ''),
          SentenceWord(de: 'der', en: 'the', ur: ''),
          SentenceWord(de: 'Ampel', en: 'traffic light', ur: 'ٹریفک لائٹ'),
          SentenceWord(de: 'rechts.', en: 'right.', ur: 'دائیں۔'),
        ],
      ),
      GermanSentence(
        emoji: '🕌',
        grammarNote: '"zur Moschee" = to the mosque = مسجد کی طرف — zu + der = zur',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'gehe', en: 'go', ur: 'جاتا ہوں'),
          SentenceWord(de: 'zur', en: 'to the', ur: ''),
          SentenceWord(de: 'Moschee.', en: 'mosque.', ur: 'مسجد۔'),
        ],
      ),
      GermanSentence(
        emoji: '🚌',
        grammarNote: '"an der Bushaltestelle" = at the bus stop = بس اسٹاپ پر',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'warte', en: 'wait', ur: 'انتظار کرتا ہوں'),
          SentenceWord(de: 'an', en: 'at', ur: ''),
          SentenceWord(de: 'der', en: 'the', ur: ''),
          SentenceWord(de: 'Bushaltestelle.', en: 'bus stop.', ur: 'بس اسٹاپ پر۔'),
        ],
      ),
      GermanSentence(
        emoji: '❓',
        grammarNote: '"Entschuldigung" = Excuse me = معاف کیجیے — politeness ke liye',
        words: [
          SentenceWord(de: 'Entschuldigung,', en: 'Excuse me,', ur: 'معاف کیجیے،'),
          SentenceWord(de: 'wo', en: 'where', ur: 'کہاں'),
          SentenceWord(de: 'ist', en: 'is', ur: 'ہے'),
          SentenceWord(de: 'die', en: 'the', ur: ''),
          SentenceWord(de: 'Post?', en: 'post office?', ur: 'ڈاک خانہ؟'),
        ],
      ),
      GermanSentence(
        emoji: '🌉',
        grammarNote: '"über die Brücke" = over the bridge = پل کے اوپر سے',
        words: [
          SentenceWord(de: 'Gehen', en: 'Go', ur: 'جائیں'),
          SentenceWord(de: 'Sie', en: 'you', ur: 'آپ'),
          SentenceWord(de: 'über', en: 'over', ur: 'اوپر سے'),
          SentenceWord(de: 'die', en: 'the', ur: ''),
          SentenceWord(de: 'Brücke.', en: 'bridge.', ur: 'پل۔'),
        ],
      ),
    ],
  ),
  // =============================================
  // TOPIC 10 — HEALTH
  // =============================================
  A1Topic(
    title: 'Health',
    urduTitle: 'صحت',
    emoji: '🏥',
    words: [
      GermanWord(german: 'der Arzt', english: 'the Doctor (male)', urdu: 'ڈاکٹر', article: 'der', gender: 'masculine — مذکر', emoji: '👨‍⚕️'),
      GermanWord(german: 'die Ärztin', english: 'the Doctor (female)', urdu: 'ڈاکٹرنی', article: 'die', gender: 'feminine — مؤنث', emoji: '👩‍⚕️'),
      GermanWord(german: 'das Krankenhaus', english: 'the Hospital', urdu: 'ہسپتال', article: 'das', gender: 'neutral — غیرجنس', emoji: '🏥'),
      GermanWord(german: 'die Apotheke', english: 'the Pharmacy', urdu: 'دوا خانہ', article: 'die', gender: 'feminine — مؤنث', emoji: '💊'),
      GermanWord(german: 'die Medizin', english: 'the Medicine', urdu: 'دوا', article: 'die', gender: 'feminine — مؤنث', emoji: '💊'),
      GermanWord(german: 'das Rezept', english: 'the Prescription', urdu: 'نسخہ', article: 'das', gender: 'neutral — غیرجنس', emoji: '📋'),
      GermanWord(german: 'der Kopf', english: 'the Head', urdu: 'سر', article: 'der', gender: 'masculine — مذکر', emoji: '🤕'),
      GermanWord(german: 'der Hals', english: 'the Throat/Neck', urdu: 'گلا', article: 'der', gender: 'masculine — مذکر', emoji: '😷'),
      GermanWord(german: 'der Bauch', english: 'the Stomach', urdu: 'پیٹ', article: 'der', gender: 'masculine — مذکر', emoji: '🤢'),
      GermanWord(german: 'der Rücken', english: 'the Back', urdu: 'کمر', article: 'der', gender: 'masculine — مذکر', emoji: '🦴'),
      GermanWord(german: 'das Fieber', english: 'the Fever', urdu: 'بخار', article: 'das', gender: 'neutral — غیرجنس', emoji: '🤒'),
      GermanWord(german: 'der Husten', english: 'the Cough', urdu: 'کھانسی', article: 'der', gender: 'masculine — مذکر', emoji: '😷'),
      GermanWord(german: 'der Schnupfen', english: 'the Cold/Runny Nose', urdu: 'نزلہ', article: 'der', gender: 'masculine — مذکر', emoji: '🤧'),
      GermanWord(german: 'die Erkältung', english: 'the Cold', urdu: 'سردی', article: 'die', gender: 'feminine — مؤنث', emoji: '🤧'),
      GermanWord(german: 'die Kopfschmerzen', english: 'the Headache', urdu: 'سر درد', article: 'die', gender: 'feminine — مؤنث', emoji: '🤕'),
      GermanWord(german: 'die Bauchschmerzen', english: 'the Stomachache', urdu: 'پیٹ درد', article: 'die', gender: 'feminine — مؤنث', emoji: '🤢'),
      GermanWord(german: 'krank', english: 'sick', urdu: 'بیمار', emoji: '🤒'),
      GermanWord(german: 'gesund', english: 'healthy', urdu: 'صحت مند', emoji: '💪'),
      GermanWord(german: 'der Termin', english: 'the Appointment', urdu: 'اپوائنٹمنٹ', article: 'der', gender: 'masculine — مذکر', emoji: '📅'),
      GermanWord(german: 'die Versicherung', english: 'the Insurance', urdu: 'بیمہ', article: 'die', gender: 'feminine — مؤنث', emoji: '📄'),
      GermanWord(german: 'die Allergie', english: 'the Allergy', urdu: 'الرجی', article: 'die', gender: 'feminine — مؤنث', emoji: '🤧'),
      GermanWord(german: 'der Schmerz', english: 'the Pain', urdu: 'درد', article: 'der', gender: 'masculine — مذکر', emoji: '😣'),
    ],
    sentences: [
      GermanSentence(
        emoji: '🤒',
        grammarNote: '"Ich bin krank" = I am sick = میں بیمار ہوں — bin = am',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'bin', en: 'am', ur: 'ہوں'),
          SentenceWord(de: 'krank.', en: 'sick.', ur: 'بیمار۔'),
        ],
      ),
      GermanSentence(
        emoji: '🤕',
        grammarNote: '"Ich habe Kopfschmerzen" = I have a headache — habe = have',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'مجھے'),
          SentenceWord(de: 'habe', en: 'have', ur: 'ہے'),
          SentenceWord(de: 'Kopfschmerzen.', en: 'a headache.', ur: 'سر درد۔'),
        ],
      ),
      GermanSentence(
        emoji: '🤢',
        grammarNote: '"Mein Bauch tut weh" = My stomach hurts = میرا پیٹ درد کر رہا ہے',
        words: [
          SentenceWord(de: 'Mein', en: 'My', ur: 'میرا'),
          SentenceWord(de: 'Bauch', en: 'stomach', ur: 'پیٹ'),
          SentenceWord(de: 'tut', en: 'does', ur: 'کر رہا'),
          SentenceWord(de: 'weh.', en: 'hurt.', ur: 'ہے درد۔'),
        ],
      ),
      GermanSentence(
        emoji: '👨‍⚕️',
        grammarNote: '"brauche einen Arzt" = need a doctor = ڈاکٹر چاہیے — Akkusativ einen',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'مجھے'),
          SentenceWord(de: 'brauche', en: 'need', ur: 'چاہیے'),
          SentenceWord(de: 'einen', en: 'a', ur: 'ایک'),
          SentenceWord(de: 'Arzt.', en: 'doctor.', ur: 'ڈاکٹر۔'),
        ],
      ),
      GermanSentence(
        emoji: '📅',
        grammarNote: '"einen Termin machen" = make an appointment = اپوائنٹمنٹ لینا',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'möchte', en: 'would like', ur: 'چاہتا ہوں'),
          SentenceWord(de: 'einen', en: 'an', ur: 'ایک'),
          SentenceWord(de: 'Termin', en: 'appointment', ur: 'اپوائنٹمنٹ'),
          SentenceWord(de: 'machen.', en: 'make.', ur: 'لینا۔'),
        ],
      ),
      GermanSentence(
        emoji: '🤧',
        grammarNote: '"Ich habe Husten" = I have a cough = مجھے کھانسی ہے',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'مجھے'),
          SentenceWord(de: 'habe', en: 'have', ur: 'ہے'),
          SentenceWord(de: 'Husten', en: 'a cough', ur: 'کھانسی'),
          SentenceWord(de: 'und', en: 'and', ur: 'اور'),
          SentenceWord(de: 'Schnupfen.', en: 'a cold.', ur: 'نزلہ۔'),
        ],
      ),
      GermanSentence(
        emoji: '🤒',
        grammarNote: '"Ich habe Fieber" = I have fever = مجھے بخار ہے',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'مجھے'),
          SentenceWord(de: 'habe', en: 'have', ur: 'ہے'),
          SentenceWord(de: 'Fieber.', en: 'fever.', ur: 'بخار۔'),
        ],
      ),
      GermanSentence(
        emoji: '💊',
        grammarNote: '"nehmen Sie" = take (formal) = لیں — Tabletten = tablets',
        words: [
          SentenceWord(de: 'Nehmen', en: 'Take', ur: 'لیں'),
          SentenceWord(de: 'Sie', en: 'you', ur: 'آپ'),
          SentenceWord(de: 'diese', en: 'these', ur: 'یہ'),
          SentenceWord(de: 'Tabletten.', en: 'tablets.', ur: 'گولیاں۔'),
        ],
      ),
      GermanSentence(
        emoji: '🤧',
        grammarNote: '"Ich bin gegen ... allergisch" = I am allergic to ... = مجھے ... سے الرجی ہے',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'مجھے'),
          SentenceWord(de: 'bin', en: 'am', ur: 'ہے'),
          SentenceWord(de: 'gegen', en: 'to', ur: 'سے'),
          SentenceWord(de: 'Penicillin', en: 'Penicillin', ur: 'پینسلین'),
          SentenceWord(de: 'allergisch.', en: 'allergic.', ur: 'الرجی۔'),
        ],
      ),
      GermanSentence(
        emoji: '💪',
        grammarNote: '"Gute Besserung!" = Get well soon! = جلد صحت یاب ہوں!',
        words: [
          SentenceWord(de: 'Gute', en: 'Good', ur: 'جلد'),
          SentenceWord(de: 'Besserung!', en: 'recovery!', ur: 'صحت یاب ہوں!'),
        ],
      ),
    ],
  ),
  // =============================================
  // TOPIC 11 — WORK & WORKPLACE
  // =============================================
  A1Topic(
    title: 'Work & Workplace',
    urduTitle: 'کام اور دفتر',
    emoji: '💼',
    words: [
      GermanWord(german: 'die Arbeit', english: 'the Work', urdu: 'کام', article: 'die', gender: 'feminine — مؤنث', emoji: '💼'),
      GermanWord(german: 'das Büro', english: 'the Office', urdu: 'دفتر', article: 'das', gender: 'neutral — غیرجنس', emoji: '🏢'),
      GermanWord(german: 'der Chef', english: 'the Boss (male)', urdu: 'باس', article: 'der', gender: 'masculine — مذکر', emoji: '👨‍💼'),
      GermanWord(german: 'die Chefin', english: 'the Boss (female)', urdu: 'باس', article: 'die', gender: 'feminine — مؤنث', emoji: '👩‍💼'),
      GermanWord(german: 'der Kollege', english: 'the Colleague (male)', urdu: 'ساتھی', article: 'der', gender: 'masculine — مذکر', emoji: '🤝'),
      GermanWord(german: 'die Kollegin', english: 'the Colleague (female)', urdu: 'ساتھی', article: 'die', gender: 'feminine — مؤنث', emoji: '🤝'),
      GermanWord(german: 'die Besprechung', english: 'the Meeting', urdu: 'میٹنگ', article: 'die', gender: 'feminine — مؤنث', emoji: '👥'),
      GermanWord(german: 'der Computer', english: 'the Computer', urdu: 'کمپیوٹر', article: 'der', gender: 'masculine — مذکر', emoji: '💻'),
      GermanWord(german: 'das Telefon', english: 'the Phone', urdu: 'فون', article: 'das', gender: 'neutral — غیرجنس', emoji: '📞'),
      GermanWord(german: 'die E-Mail', english: 'the Email', urdu: 'ای میل', article: 'die', gender: 'feminine — مؤنث', emoji: '📧'),
      GermanWord(german: 'der Termin', english: 'the Appointment', urdu: 'اپوائنٹمنٹ', article: 'der', gender: 'masculine — مذکر', emoji: '📅'),
      GermanWord(german: 'das Gehalt', english: 'the Salary', urdu: 'تنخواہ', article: 'das', gender: 'neutral — غیرجنس', emoji: '💰'),
      GermanWord(german: 'der Urlaub', english: 'the Vacation', urdu: 'چھٹی', article: 'der', gender: 'masculine — مذکر', emoji: '🏖️'),
      GermanWord(german: 'die Pause', english: 'the Break', urdu: 'وقفہ', article: 'die', gender: 'feminine — مؤنث', emoji: '☕'),
      GermanWord(german: 'der Drucker', english: 'the Printer', urdu: 'پرنٹر', article: 'der', gender: 'masculine — مذکر', emoji: '🖨️'),
      GermanWord(german: 'die Stelle', english: 'the Job Position', urdu: 'عہدہ', article: 'die', gender: 'feminine — مؤنث', emoji: '💼'),
      GermanWord(german: 'die Firma', english: 'the Company', urdu: 'کمپنی', article: 'die', gender: 'feminine — مؤنث', emoji: '🏢'),
      GermanWord(german: 'der Vertrag', english: 'the Contract', urdu: 'معاہدہ', article: 'der', gender: 'masculine — مذکر', emoji: '📄'),
      GermanWord(german: 'die Bewerbung', english: 'the Job Application', urdu: 'درخواست', article: 'die', gender: 'feminine — مؤنث', emoji: '📝'),
      GermanWord(german: 'das Interview', english: 'the Interview', urdu: 'انٹرویو', article: 'das', gender: 'neutral — غیرجنس', emoji: '🎤'),
      GermanWord(german: 'die Erfahrung', english: 'the Experience', urdu: 'تجربہ', article: 'die', gender: 'feminine — مؤنث', emoji: '⭐'),
      GermanWord(german: 'die Ausbildung', english: 'the Training/Education', urdu: 'تربیت', article: 'die', gender: 'feminine — مؤنث', emoji: '🎓'),
      GermanWord(german: 'der Arbeitsplatz', english: 'the Workplace', urdu: 'کام کی جگہ', article: 'der', gender: 'masculine — مذکر', emoji: '🏢'),
      GermanWord(german: 'die Arbeitszeit', english: 'the Working Hours', urdu: 'کام کے اوقات', article: 'die', gender: 'feminine — مؤنث', emoji: '⏰'),
      GermanWord(german: 'die Überstunden', english: 'the Overtime', urdu: 'اضافی وقت', article: 'die', gender: 'feminine — مؤنث', emoji: '⏱️'),
      GermanWord(german: 'das Projekt', english: 'the Project', urdu: 'منصوبہ', article: 'das', gender: 'neutral — غیرجنس', emoji: '📊'),
      GermanWord(german: 'die Aufgabe', english: 'the Task', urdu: 'کام', article: 'die', gender: 'feminine — مؤنث', emoji: '✅'),
      GermanWord(german: 'der Bericht', english: 'the Report', urdu: 'رپورٹ', article: 'der', gender: 'masculine — مذکر', emoji: '📋'),
      GermanWord(german: 'die Präsentation', english: 'the Presentation', urdu: 'پریزنٹیشن', article: 'die', gender: 'feminine — مؤنث', emoji: '📊'),
      GermanWord(german: 'der Stress', english: 'the Stress', urdu: 'تناؤ', article: 'der', gender: 'masculine — مذکر', emoji: '😓'),
      GermanWord(german: 'die Lösung', english: 'the Solution', urdu: 'حل', article: 'die', gender: 'feminine — مؤنث', emoji: '💡'),
      GermanWord(german: 'arbeiten', english: 'to work', urdu: 'کام کرنا', emoji: '💪'),
      GermanWord(german: 'anrufen', english: 'to call', urdu: 'فون کرنا', emoji: '📞'),
      GermanWord(german: 'schreiben', english: 'to write', urdu: 'لکھنا', emoji: '✍️'),
      GermanWord(german: 'lesen', english: 'to read', urdu: 'پڑھنا', emoji: '📖'),
    ],
    sentences: [
      GermanSentence(
        emoji: '💼',
        grammarNote: '"arbeite bei" = work at = کام کرتا ہوں — bei + company name',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'arbeite', en: 'work', ur: 'کام کرتا ہوں'),
          SentenceWord(de: 'bei', en: 'at', ur: ''),
          SentenceWord(de: 'einer', en: 'a', ur: 'ایک'),
          SentenceWord(de: 'Firma.', en: 'company.', ur: 'کمپنی میں۔'),
        ],
      ),
      GermanSentence(
        emoji: '🏢',
        grammarNote: '"im Büro" = in the office = دفتر میں — im = in + dem',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'bin', en: 'am', ur: 'ہوں'),
          SentenceWord(de: 'im', en: 'in the', ur: ''),
          SentenceWord(de: 'Büro.', en: 'office.', ur: 'دفتر میں۔'),
        ],
      ),
      GermanSentence(
        emoji: '📅',
        grammarNote: '"Ich habe einen Termin" = I have an appointment = میری اپوائنٹمنٹ ہے',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میری'),
          SentenceWord(de: 'habe', en: 'have', ur: 'ہے'),
          SentenceWord(de: 'einen', en: 'an', ur: 'ایک'),
          SentenceWord(de: 'Termin', en: 'appointment', ur: 'اپوائنٹمنٹ'),
          SentenceWord(de: 'um', en: 'at', ur: ''),
          SentenceWord(de: 'zehn', en: 'ten', ur: 'دس'),
          SentenceWord(de: 'Uhr.', en: "o'clock.", ur: 'بجے۔'),
        ],
      ),
      GermanSentence(
        emoji: '📧',
        grammarNote: '"schreibe eine E-Mail" = write an email = ای میل لکھتا ہوں',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'schreibe', en: 'write', ur: 'لکھتا ہوں'),
          SentenceWord(de: 'eine', en: 'an', ur: 'ایک'),
          SentenceWord(de: 'E-Mail.', en: 'email.', ur: 'ای میل۔'),
        ],
      ),
      GermanSentence(
        emoji: '☕',
        grammarNote: '"Pause machen" = take a break = وقفہ لینا',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'mache', en: 'take', ur: 'لیتا ہوں'),
          SentenceWord(de: 'eine', en: 'a', ur: 'ایک'),
          SentenceWord(de: 'Pause.', en: 'break.', ur: 'وقفہ۔'),
        ],
      ),
      GermanSentence(
        emoji: '📞',
        grammarNote: '"rufe an" = call = فون کرتا ہوں — anrufen separable verb!',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'rufe', en: 'call', ur: 'فون کرتا ہوں'),
          SentenceWord(de: 'meinen', en: 'my', ur: 'اپنے'),
          SentenceWord(de: 'Chef', en: 'boss', ur: 'باس کو'),
          SentenceWord(de: 'an.', en: 'up.', ur: '۔'),
        ],
      ),
      GermanSentence(
        emoji: '🏖️',
        grammarNote: '"Urlaub nehmen" = take vacation = چھٹی لینا',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'möchte', en: 'would like', ur: 'چاہتا ہوں'),
          SentenceWord(de: 'Urlaub', en: 'vacation', ur: 'چھٹی'),
          SentenceWord(de: 'nehmen.', en: 'take.', ur: 'لینا۔'),
        ],
      ),
      GermanSentence(
        emoji: '👥',
        grammarNote: '"Wir haben eine Besprechung" = We have a meeting = ہماری میٹنگ ہے',
        words: [
          SentenceWord(de: 'Wir', en: 'We', ur: 'ہماری'),
          SentenceWord(de: 'haben', en: 'have', ur: 'ہے'),
          SentenceWord(de: 'eine', en: 'a', ur: 'ایک'),
          SentenceWord(de: 'Besprechung.', en: 'meeting.', ur: 'میٹنگ۔'),
        ],
      ),
      GermanSentence(
        emoji: '🎤',
        grammarNote: '"Ich habe ein Interview" = I have an interview = میرا انٹرویو ہے',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میرا'),
          SentenceWord(de: 'habe', en: 'have', ur: 'ہے'),
          SentenceWord(de: 'morgen', en: 'tomorrow', ur: 'کل'),
          SentenceWord(de: 'ein', en: 'an', ur: 'ایک'),
          SentenceWord(de: 'Interview.', en: 'interview.', ur: 'انٹرویو۔'),
        ],
      ),
      GermanSentence(
        emoji: '😓',
        grammarNote: '"Ich habe viel Stress" = I have a lot of stress = مجھے بہت تناؤ ہے',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'مجھے'),
          SentenceWord(de: 'habe', en: 'have', ur: 'ہے'),
          SentenceWord(de: 'viel', en: 'a lot of', ur: 'بہت'),
          SentenceWord(de: 'Stress.', en: 'stress.', ur: 'تناؤ۔'),
        ],
      ),
      GermanSentence(
        emoji: '📊',
        grammarNote: '"arbeite an einem Projekt" = work on a project = منصوبے پر کام کرتا ہوں',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'arbeite', en: 'work', ur: 'کام کرتا ہوں'),
          SentenceWord(de: 'an', en: 'on', ur: ''),
          SentenceWord(de: 'einem', en: 'a', ur: 'ایک'),
          SentenceWord(de: 'Projekt.', en: 'project.', ur: 'منصوبے پر۔'),
        ],
      ),
      GermanSentence(
        emoji: '💡',
        grammarNote: '"Ich habe eine Lösung" = I have a solution = میرے پاس حل ہے',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میرے پاس'),
          SentenceWord(de: 'habe', en: 'have', ur: 'ہے'),
          SentenceWord(de: 'eine', en: 'a', ur: 'ایک'),
          SentenceWord(de: 'Lösung.', en: 'solution.', ur: 'حل۔'),
        ],
      ),
      GermanSentence(
        emoji: '⏱️',
        grammarNote: '"mache Überstunden" = do overtime = اضافی وقت کام کرتا ہوں',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'mache', en: 'do', ur: 'کرتا ہوں'),
          SentenceWord(de: 'heute', en: 'today', ur: 'آج'),
          SentenceWord(de: 'Überstunden.', en: 'overtime.', ur: 'اضافی وقت۔'),
        ],
      ),
      GermanSentence(
        emoji: '📝',
        grammarNote: '"schicke eine Bewerbung" = send an application = درخواست بھیجتا ہوں',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'schicke', en: 'send', ur: 'بھیجتا ہوں'),
          SentenceWord(de: 'eine', en: 'an', ur: 'ایک'),
          SentenceWord(de: 'Bewerbung.', en: 'application.', ur: 'درخواست۔'),
        ],
      ),
    ],
  ),
  // =============================================
  // TOPIC 12 — DAILY SCHEDULE
  // =============================================
  A1Topic(
    title: 'Daily Schedule',
    urduTitle: 'روزانہ کا معمول',
    emoji: '📋',
    words: [
      // Morning Routine
      GermanWord(german: 'aufstehen', english: 'to get up', urdu: 'اٹھنا', emoji: '🌅'),
      GermanWord(german: 'aufwachen', english: 'to wake up', urdu: 'جاگنا', emoji: '⏰'),
      GermanWord(german: 'der Wecker', english: 'the Alarm Clock', urdu: 'الارم', article: 'der', gender: 'masculine — مذکر', emoji: '⏰'),
      GermanWord(german: 'duschen', english: 'to shower', urdu: 'نہانا', emoji: '🚿'),
      GermanWord(german: 'sich waschen', english: 'to wash oneself', urdu: 'دھونا', emoji: '🧼'),
      GermanWord(german: 'sich anziehen', english: 'to get dressed', urdu: 'کپڑے پہننا', emoji: '👔'),
      GermanWord(german: 'sich kämmen', english: 'to comb hair', urdu: 'کنگھی کرنا', emoji: '💈'),
      GermanWord(german: 'sich rasieren', english: 'to shave', urdu: 'شیو کرنا', emoji: '🪒'),
      GermanWord(german: 'die Zahnbürste', english: 'the Toothbrush', urdu: 'ٹوتھ برش', article: 'die', gender: 'feminine — مؤنث', emoji: '🪥'),
      GermanWord(german: 'die Zahnpasta', english: 'the Toothpaste', urdu: 'ٹوتھ پیسٹ', article: 'die', gender: 'feminine — مؤنث', emoji: '🦷'),
      // Meals
      GermanWord(german: 'das Frühstück', english: 'the Breakfast', urdu: 'ناشتہ', article: 'das', gender: 'neutral — غیرجنس', emoji: '🍳'),
      GermanWord(german: 'das Mittagessen', english: 'the Lunch', urdu: 'دوپہر کا کھانا', article: 'das', gender: 'neutral — غیرجنس', emoji: '🍽️'),
      GermanWord(german: 'das Abendessen', english: 'the Dinner', urdu: 'رات کا کھانا', article: 'das', gender: 'neutral — غیرجنس', emoji: '🌙'),
      GermanWord(german: 'frühstücken', english: 'to have breakfast', urdu: 'ناشتہ کرنا', emoji: '🍳'),
      GermanWord(german: 'kochen', english: 'to cook', urdu: 'کھانا پکانا', emoji: '👨‍🍳'),
      GermanWord(german: 'essen', english: 'to eat', urdu: 'کھانا', emoji: '🍴'),
      GermanWord(german: 'trinken', english: 'to drink', urdu: 'پینا', emoji: '🥤'),
      // Transport
      GermanWord(german: 'der Zug', english: 'the Train', urdu: 'ٹرین', article: 'der', gender: 'masculine — مذکر', emoji: '🚂'),
      GermanWord(german: 'der Bus', english: 'the Bus', urdu: 'بس', article: 'der', gender: 'masculine — مذکر', emoji: '🚌'),
      GermanWord(german: 'die U-Bahn', english: 'the Subway', urdu: 'میٹرو', article: 'die', gender: 'feminine — مؤنث', emoji: '🚇'),
      GermanWord(german: 'das Fahrrad', english: 'the Bicycle', urdu: 'سائیکل', article: 'das', gender: 'neutral — غیرجنس', emoji: '🚲'),
      GermanWord(german: 'das Auto', english: 'the Car', urdu: 'گاڑی', article: 'das', gender: 'neutral — غیرجنس', emoji: '🚗'),
      GermanWord(german: 'zu Fuß', english: 'on foot', urdu: 'پیدل', emoji: '🚶'),
      GermanWord(german: 'fahren', english: 'to drive/travel', urdu: 'جانا/چلانا', emoji: '🚗'),
      GermanWord(german: 'gehen', english: 'to go/walk', urdu: 'جانا/چلنا', emoji: '🚶'),
      // Work/Study
      GermanWord(german: 'arbeiten', english: 'to work', urdu: 'کام کرنا', emoji: '💼'),
      GermanWord(german: 'lernen', english: 'to learn/study', urdu: 'پڑھنا/سیکھنا', emoji: '📚'),
      GermanWord(german: 'die Universität', english: 'the University', urdu: 'یونیورسٹی', article: 'die', gender: 'feminine — مؤنث', emoji: '🎓'),
      GermanWord(german: 'die Vorlesung', english: 'the Lecture', urdu: 'لیکچر', article: 'die', gender: 'feminine — مؤنث', emoji: '👨‍🏫'),
      GermanWord(german: 'die Pause', english: 'the Break', urdu: 'وقفہ', article: 'die', gender: 'feminine — مؤنث', emoji: '☕'),
      // Evening/Night
      GermanWord(german: 'schlafen', english: 'to sleep', urdu: 'سونا', emoji: '😴'),
      GermanWord(german: 'schlafen gehen', english: 'to go to sleep', urdu: 'سونے جانا', emoji: '🛏️'),
      GermanWord(german: 'fernsehen', english: 'to watch TV', urdu: 'ٹی وی دیکھنا', emoji: '📺'),
      GermanWord(german: 'lesen', english: 'to read', urdu: 'پڑھنا', emoji: '📖'),
      GermanWord(german: 'spazieren gehen', english: 'to go for a walk', urdu: 'سیر کرنا', emoji: '🚶'),
      GermanWord(german: 'einkaufen', english: 'to shop', urdu: 'خریداری کرنا', emoji: '🛒'),
      GermanWord(german: 'aufräumen', english: 'to tidy up', urdu: 'صفائی کرنا', emoji: '🧹'),
      GermanWord(german: 'beten', english: 'to pray', urdu: 'نماز پڑھنا', emoji: '🕌'),
      // Frequency Words
      GermanWord(german: 'immer', english: 'always', urdu: 'ہمیشہ', emoji: '♾️'),
      GermanWord(german: 'manchmal', english: 'sometimes', urdu: 'کبھی کبھی', emoji: '🔄'),
      GermanWord(german: 'nie', english: 'never', urdu: 'کبھی نہیں', emoji: '❌'),
      GermanWord(german: 'oft', english: 'often', urdu: 'اکثر', emoji: '🔁'),
      GermanWord(german: 'jeden Tag', english: 'every day', urdu: 'ہر روز', emoji: '📅'),
      GermanWord(german: 'normalerweise', english: 'normally', urdu: 'عام طور پر', emoji: '✅'),
      GermanWord(german: 'meistens', english: 'mostly', urdu: 'زیادہ تر', emoji: '📊'),
      GermanWord(german: 'selten', english: 'rarely', urdu: 'شاذ و نادر', emoji: '🔸'),
      GermanWord(german: 'täglich', english: 'daily', urdu: 'روزانہ', emoji: '📅'),
      GermanWord(german: 'morgens', english: 'in the morning', urdu: 'صبح کو', emoji: '🌅'),
      GermanWord(german: 'mittags', english: 'at noon', urdu: 'دوپہر کو', emoji: '☀️'),
      GermanWord(german: 'abends', english: 'in the evening', urdu: 'شام کو', emoji: '🌆'),
      GermanWord(german: 'nachts', english: 'at night', urdu: 'رات کو', emoji: '🌙'),
      GermanWord(german: 'früh', english: 'early', urdu: 'جلدی', emoji: '🌅'),
      GermanWord(german: 'spät', english: 'late', urdu: 'دیر سے', emoji: '🌙'),
      GermanWord(german: 'pünktlich', english: 'on time', urdu: 'وقت پر', emoji: '✅'),
      GermanWord(german: 'zuerst', english: 'first of all', urdu: 'سب سے پہلے', emoji: '1️⃣'),
      GermanWord(german: 'dann', english: 'then', urdu: 'پھر', emoji: '➡️'),
      GermanWord(german: 'danach', english: 'after that', urdu: 'اس کے بعد', emoji: '⏭️'),
      GermanWord(german: 'zuletzt', english: 'finally', urdu: 'آخر میں', emoji: '🏁'),
      GermanWord(german: 'gleichzeitig', english: 'at the same time', urdu: 'ایک ساتھ', emoji: '🔄'),
      GermanWord(german: 'die Routine', english: 'the Routine', urdu: 'معمول', article: 'die', gender: 'feminine — مؤنث', emoji: '🔄'),
      GermanWord(german: 'der Alltag', english: 'the Everyday Life', urdu: 'روزمرہ زندگی', article: 'der', gender: 'masculine — مذکر', emoji: '📅'),
      GermanWord(german: 'der Abend', english: 'the Evening', urdu: 'شام', article: 'der', gender: 'masculine — مذکر', emoji: '🌆'),
      GermanWord(german: 'der Morgen', english: 'the Morning', urdu: 'صبح', article: 'der', gender: 'masculine — مذکر', emoji: '🌅'),
      GermanWord(german: 'die Nacht', english: 'the Night', urdu: 'رات', article: 'die', gender: 'feminine — مؤنث', emoji: '🌙'),
      GermanWord(german: 'der Mittag', english: 'the Noon', urdu: 'دوپہر', article: 'der', gender: 'masculine — مذکر', emoji: '☀️'),
      GermanWord(german: 'der Nachmittag', english: 'the Afternoon', urdu: 'سہ پہر', article: 'der', gender: 'masculine — مذکر', emoji: '🌤️'),
      GermanWord(german: 'die Woche', english: 'the Week', urdu: 'ہفتہ', article: 'die', gender: 'feminine — مؤنث', emoji: '📅'),
      GermanWord(german: 'das Wochenende', english: 'the Weekend', urdu: 'ویک اینڈ', article: 'das', gender: 'neutral — غیرجنس', emoji: '🎉'),
    ],
    sentences: [
      GermanSentence(
        emoji: '⏰',
        grammarNote: '"Mein Wecker klingelt" = My alarm rings = میرا الارم بجتا ہے',
        words: [
          SentenceWord(de: 'Mein', en: 'My', ur: 'میرا'),
          SentenceWord(de: 'Wecker', en: 'alarm', ur: 'الارم'),
          SentenceWord(de: 'klingelt', en: 'rings', ur: 'بجتا ہے'),
          SentenceWord(de: 'um', en: 'at', ur: ''),
          SentenceWord(de: 'sechs', en: 'six', ur: 'چھ'),
          SentenceWord(de: 'Uhr.', en: "o'clock.", ur: 'بجے۔'),
        ],
      ),
      GermanSentence(
        emoji: '🌅',
        grammarNote: '"stehe auf" = get up — aufstehen separable verb — "auf" end mein!',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'stehe', en: 'get', ur: 'اٹھتا'),
          SentenceWord(de: 'um', en: 'at', ur: ''),
          SentenceWord(de: 'sieben', en: 'seven', ur: 'سات'),
          SentenceWord(de: 'Uhr', en: "o'clock", ur: 'بجے'),
          SentenceWord(de: 'auf.', en: 'up.', ur: 'ہوں۔'),
        ],
      ),
      GermanSentence(
        emoji: '🚿',
        grammarNote: '"duschen" = shower = نہانا — regular verb, jeden Morgen = every morning',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'dusche', en: 'shower', ur: 'نہاتا ہوں'),
          SentenceWord(de: 'jeden', en: 'every', ur: 'ہر'),
          SentenceWord(de: 'Morgen.', en: 'morning.', ur: 'صبح۔'),
        ],
      ),
      GermanSentence(
        emoji: '🪥',
        grammarNote: '"putze mir die Zähne" = brush my teeth = دانت صاف کرتا ہوں',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'putze', en: 'brush', ur: 'صاف کرتا ہوں'),
          SentenceWord(de: 'mir', en: 'my', ur: 'اپنے'),
          SentenceWord(de: 'die', en: 'the', ur: ''),
          SentenceWord(de: 'Zähne.', en: 'teeth.', ur: 'دانت۔'),
        ],
      ),
      GermanSentence(
        emoji: '👔',
        grammarNote: '"ziehe mich an" = get dressed = کپڑے پہنتا ہوں — anziehen separable!',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'ziehe', en: 'get', ur: 'کپڑے'),
          SentenceWord(de: 'mich', en: 'myself', ur: 'پہنتا'),
          SentenceWord(de: 'an.', en: 'dressed.', ur: 'ہوں۔'),
        ],
      ),
      GermanSentence(
        emoji: '🍳',
        grammarNote: '"frühstücke" = have breakfast = ناشتہ کرتا ہوں',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'frühstücke', en: 'have breakfast', ur: 'ناشتہ کرتا ہوں'),
          SentenceWord(de: 'um', en: 'at', ur: ''),
          SentenceWord(de: 'acht', en: 'eight', ur: 'آٹھ'),
          SentenceWord(de: 'Uhr.', en: "o'clock.", ur: 'بجے۔'),
        ],
      ),
      GermanSentence(
        emoji: '🕌',
        grammarNote: '"bete" = pray = نماز پڑھتا ہوں — beten regular verb',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'bete', en: 'pray', ur: 'نماز پڑھتا ہوں'),
          SentenceWord(de: 'fünfmal', en: 'five times', ur: 'پانچ بار'),
          SentenceWord(de: 'am', en: 'per', ur: ''),
          SentenceWord(de: 'Tag.', en: 'day.', ur: 'دن میں۔'),
        ],
      ),
      GermanSentence(
        emoji: '🚌',
        grammarNote: '"fahre mit dem Bus" = go by bus = بس سے جاتا ہوں — mit + Dativ',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'fahre', en: 'go', ur: 'جاتا ہوں'),
          SentenceWord(de: 'mit', en: 'by', ur: 'سے'),
          SentenceWord(de: 'dem', en: 'the', ur: ''),
          SentenceWord(de: 'Bus', en: 'bus', ur: 'بس'),
          SentenceWord(de: 'zur', en: 'to the', ur: ''),
          SentenceWord(de: 'Uni.', en: 'university.', ur: 'یونیورسٹی۔'),
        ],
      ),
      GermanSentence(
        emoji: '🚶',
        grammarNote: '"gehe zu Fuß" = go on foot = پیدل جاتا ہوں',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'gehe', en: 'go', ur: 'جاتا ہوں'),
          SentenceWord(de: 'zu', en: 'on', ur: ''),
          SentenceWord(de: 'Fuß', en: 'foot', ur: 'پیدل'),
          SentenceWord(de: 'zur', en: 'to the', ur: ''),
          SentenceWord(de: 'Arbeit.', en: 'work.', ur: 'کام پر۔'),
        ],
      ),
      GermanSentence(
        emoji: '🎓',
        grammarNote: '"habe eine Vorlesung" = have a lecture = لیکچر ہے',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میری'),
          SentenceWord(de: 'habe', en: 'have', ur: 'ہے'),
          SentenceWord(de: 'eine', en: 'a', ur: 'ایک'),
          SentenceWord(de: 'Vorlesung', en: 'lecture', ur: 'لیکچر'),
          SentenceWord(de: 'um', en: 'at', ur: ''),
          SentenceWord(de: 'neun', en: 'nine', ur: 'نو'),
          SentenceWord(de: 'Uhr.', en: "o'clock.", ur: 'بجے۔'),
        ],
      ),
      GermanSentence(
        emoji: '☕',
        grammarNote: '"mache eine Pause" = take a break = وقفہ لیتا ہوں',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'mache', en: 'take', ur: 'لیتا ہوں'),
          SentenceWord(de: 'um', en: 'at', ur: ''),
          SentenceWord(de: 'zehn', en: 'ten', ur: 'دس'),
          SentenceWord(de: 'Uhr', en: "o'clock", ur: 'بجے'),
          SentenceWord(de: 'eine', en: 'a', ur: 'ایک'),
          SentenceWord(de: 'Pause.', en: 'break.', ur: 'وقفہ۔'),
        ],
      ),
      GermanSentence(
        emoji: '🍽️',
        grammarNote: '"esse zu Mittag" = eat lunch = دوپہر کا کھانا کھاتا ہوں',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'esse', en: 'eat', ur: 'کھاتا ہوں'),
          SentenceWord(de: 'um', en: 'at', ur: ''),
          SentenceWord(de: 'zwölf', en: 'twelve', ur: 'بارہ'),
          SentenceWord(de: 'Uhr', en: "o'clock", ur: 'بجے'),
          SentenceWord(de: 'zu', en: '', ur: ''),
          SentenceWord(de: 'Mittag.', en: 'lunch.', ur: 'دوپہر کا کھانا۔'),
        ],
      ),
      GermanSentence(
        emoji: '📚',
        grammarNote: '"lerne" = study/learn = پڑھتا ہوں — lernen regular verb',
        words: [
          SentenceWord(de: 'Nachmittags', en: 'In the afternoon', ur: 'سہ پہر کو'),
          SentenceWord(de: 'lerne', en: 'study', ur: 'پڑھتا ہوں'),
          SentenceWord(de: 'ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'Deutsch.', en: 'German.', ur: 'جرمن۔'),
        ],
      ),
      GermanSentence(
        emoji: '🛒',
        grammarNote: '"kaufe ein" = shop = خریداری کرتا ہوں — einkaufen separable!',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'kaufe', en: 'shop', ur: 'خریداری کرتا ہوں'),
          SentenceWord(de: 'jeden', en: 'every', ur: 'ہر'),
          SentenceWord(de: 'Samstag', en: 'Saturday', ur: 'ہفتے'),
          SentenceWord(de: 'ein.', en: '.', ur: '۔'),
        ],
      ),
      GermanSentence(
        emoji: '👨‍🍳',
        grammarNote: '"koche" = cook = کھانا پکاتا ہوں — kochen regular verb',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'koche', en: 'cook', ur: 'کھانا پکاتا ہوں'),
          SentenceWord(de: 'abends', en: 'in the evening', ur: 'شام کو'),
          SentenceWord(de: 'für', en: 'for', ur: 'کے لیے'),
          SentenceWord(de: 'meine', en: 'my', ur: 'اپنے'),
          SentenceWord(de: 'Familie.', en: 'family.', ur: 'خاندان۔'),
        ],
      ),
      GermanSentence(
        emoji: '📺',
        grammarNote: '"sehe fern" = watch TV = ٹی وی دیکھتا ہوں — fernsehen separable!',
        words: [
          SentenceWord(de: 'Abends', en: 'In the evening', ur: 'شام کو'),
          SentenceWord(de: 'sehe', en: 'watch', ur: 'دیکھتا ہوں'),
          SentenceWord(de: 'ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'manchmal', en: 'sometimes', ur: 'کبھی کبھی'),
          SentenceWord(de: 'fern.', en: 'TV.', ur: 'ٹی وی۔'),
        ],
      ),
      GermanSentence(
        emoji: '📖',
        grammarNote: '"lese" = read = پڑھتا ہوں — lesen irregular verb',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'lese', en: 'read', ur: 'پڑھتا ہوں'),
          SentenceWord(de: 'oft', en: 'often', ur: 'اکثر'),
          SentenceWord(de: 'vor', en: 'before', ur: 'سونے سے'),
          SentenceWord(de: 'dem', en: 'the', ur: ''),
          SentenceWord(de: 'Schlafen.', en: 'sleeping.', ur: 'پہلے۔'),
        ],
      ),
      GermanSentence(
        emoji: '🧹',
        grammarNote: '"räume auf" = tidy up = صفائی کرتا ہوں — aufräumen separable!',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'räume', en: 'tidy', ur: 'صفائی کرتا ہوں'),
          SentenceWord(de: 'am', en: 'on', ur: ''),
          SentenceWord(de: 'Wochenende', en: 'weekend', ur: 'ویک اینڈ'),
          SentenceWord(de: 'auf.', en: 'up.', ur: '۔'),
        ],
      ),
      GermanSentence(
        emoji: '😴',
        grammarNote: '"gehe schlafen" = go to sleep = سونے جاتا ہوں — um = at (time)',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'gehe', en: 'go', ur: 'جاتا ہوں'),
          SentenceWord(de: 'um', en: 'at', ur: ''),
          SentenceWord(de: 'elf', en: 'eleven', ur: 'گیارہ'),
          SentenceWord(de: 'Uhr', en: "o'clock", ur: 'بجے'),
          SentenceWord(de: 'schlafen.', en: 'to sleep.', ur: 'سونے۔'),
        ],
      ),
      GermanSentence(
        emoji: '♾️',
        grammarNote: '"immer" = always = ہمیشہ — frequency word verb ke baad',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'trinke', en: 'drink', ur: 'پیتا ہوں'),
          SentenceWord(de: 'immer', en: 'always', ur: 'ہمیشہ'),
          SentenceWord(de: 'morgens', en: 'in the morning', ur: 'صبح'),
          SentenceWord(de: 'Tee.', en: 'tea.', ur: 'چائے۔'),
        ],
      ),
      GermanSentence(
        emoji: '❌',
        grammarNote: '"nie" = never = کبھی نہیں — frequency word',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'frühstücke', en: 'have breakfast', ur: 'ناشتہ'),
          SentenceWord(de: 'nie', en: 'never', ur: 'کبھی نہیں'),
          SentenceWord(de: 'spät.', en: 'late.', ur: 'دیر سے کرتا۔'),
        ],
      ),
      GermanSentence(
        emoji: '🔁',
        grammarNote: '"oft" = often = اکثر — frequency words position',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'gehe', en: 'go', ur: 'جاتا ہوں'),
          SentenceWord(de: 'oft', en: 'often', ur: 'اکثر'),
          SentenceWord(de: 'spazieren.', en: 'for a walk.', ur: 'سیر کو۔'),
        ],
      ),
      GermanSentence(
        emoji: '1️⃣',
        grammarNote: '"Zuerst ... dann ... danach" = First ... then ... after that',
        words: [
          SentenceWord(de: 'Zuerst', en: 'First', ur: 'سب سے پہلے'),
          SentenceWord(de: 'dusche', en: 'shower', ur: 'نہاتا'),
          SentenceWord(de: 'ich,', en: 'I,', ur: 'ہوں،'),
          SentenceWord(de: 'dann', en: 'then', ur: 'پھر'),
          SentenceWord(de: 'frühstücke', en: 'have breakfast', ur: 'ناشتہ'),
          SentenceWord(de: 'ich.', en: 'I.', ur: 'کرتا ہوں۔'),
        ],
      ),
      GermanSentence(
        emoji: '✅',
        grammarNote: '"pünktlich" = on time = وقت پر — adjective',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'komme', en: 'come', ur: 'آتا ہوں'),
          SentenceWord(de: 'immer', en: 'always', ur: 'ہمیشہ'),
          SentenceWord(de: 'pünktlich', en: 'on time', ur: 'وقت پر'),
          SentenceWord(de: 'zur', en: 'to the', ur: ''),
          SentenceWord(de: 'Arbeit.', en: 'work.', ur: 'کام پر۔'),
        ],
      ),
      GermanSentence(
        emoji: '❓',
        grammarNote: '"Was machst du morgens?" = What do you do in the morning?',
        words: [
          SentenceWord(de: 'Was', en: 'What', ur: 'کیا'),
          SentenceWord(de: 'machst', en: 'do', ur: 'کرتے ہو'),
          SentenceWord(de: 'du', en: 'you', ur: 'تم'),
          SentenceWord(de: 'morgens?', en: 'in the morning?', ur: 'صبح کو؟'),
        ],
      ),
      GermanSentence(
        emoji: '❓',
        grammarNote: '"Wann stehst du auf?" = When do you get up? = تم کب اٹھتے ہو؟',
        words: [
          SentenceWord(de: 'Wann', en: 'When', ur: 'کب'),
          SentenceWord(de: 'stehst', en: 'do get', ur: 'اٹھتے ہو'),
          SentenceWord(de: 'du', en: 'you', ur: 'تم'),
          SentenceWord(de: 'auf?', en: 'up?', ur: '؟'),
        ],
      ),
      GermanSentence(
        emoji: '❓',
        grammarNote: '"Wie kommst du zur Arbeit?" = How do you get to work?',
        words: [
          SentenceWord(de: 'Wie', en: 'How', ur: 'کیسے'),
          SentenceWord(de: 'kommst', en: 'do get', ur: 'جاتے ہو'),
          SentenceWord(de: 'du', en: 'you', ur: 'تم'),
          SentenceWord(de: 'zur', en: 'to the', ur: ''),
          SentenceWord(de: 'Arbeit?', en: 'work?', ur: 'کام پر؟'),
        ],
      ),
      GermanSentence(
        emoji: '🌅',
        grammarNote: '"morgens" = in the morning = صبح کو — time adverb',
        words: [
          SentenceWord(de: 'Morgens', en: 'In the morning', ur: 'صبح کو'),
          SentenceWord(de: 'bin', en: 'am', ur: 'ہوں'),
          SentenceWord(de: 'ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'immer', en: 'always', ur: 'ہمیشہ'),
          SentenceWord(de: 'müde.', en: 'tired.', ur: 'تھکا ہوا۔'),
        ],
      ),
      GermanSentence(
        emoji: '🌆',
        grammarNote: '"abends" = in the evening = شام کو — time adverb',
        words: [
          SentenceWord(de: 'Abends', en: 'In the evening', ur: 'شام کو'),
          SentenceWord(de: 'esse', en: 'eat', ur: 'کھاتا ہوں'),
          SentenceWord(de: 'ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'mit', en: 'with', ur: 'اپنے'),
          SentenceWord(de: 'meiner', en: 'my', ur: ''),
          SentenceWord(de: 'Familie.', en: 'family.', ur: 'خاندان کے ساتھ۔'),
        ],
      ),
      GermanSentence(
        emoji: '🎉',
        grammarNote: '"Am Wochenende" = On the weekend = ویک اینڈ پر',
        words: [
          SentenceWord(de: 'Am', en: 'On the', ur: ''),
          SentenceWord(de: 'Wochenende', en: 'weekend', ur: 'ویک اینڈ'),
          SentenceWord(de: 'schlafe', en: 'sleep', ur: 'سوتا ہوں'),
          SentenceWord(de: 'ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'lange.', en: 'long.', ur: 'دیر تک۔'),
        ],
      ),
      GermanSentence(
        emoji: '📊',
        grammarNote: '"meistens" = mostly = زیادہ تر — frequency word',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'gehe', en: 'go', ur: 'جاتا ہوں'),
          SentenceWord(de: 'meistens', en: 'mostly', ur: 'زیادہ تر'),
          SentenceWord(de: 'zu', en: 'on', ur: ''),
          SentenceWord(de: 'Fuß.', en: 'foot.', ur: 'پیدل۔'),
        ],
      ),
      GermanSentence(
        emoji: '🔸',
        grammarNote: '"selten" = rarely = شاذ و نادر — frequency word',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'esse', en: 'eat', ur: 'کھاتا ہوں'),
          SentenceWord(de: 'selten', en: 'rarely', ur: 'شاذ و نادر'),
          SentenceWord(de: 'Fast', en: 'fast', ur: 'فاسٹ'),
          SentenceWord(de: 'Food.', en: 'food.', ur: 'فوڈ۔'),
        ],
      ),
      GermanSentence(
        emoji: '🔄',
        grammarNote: '"manchmal" = sometimes = کبھی کبھی',
        words: [
          SentenceWord(de: 'Manchmal', en: 'Sometimes', ur: 'کبھی کبھی'),
          SentenceWord(de: 'fahre', en: 'go', ur: 'جاتا ہوں'),
          SentenceWord(de: 'ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'mit', en: 'by', ur: 'سے'),
          SentenceWord(de: 'dem', en: 'the', ur: ''),
          SentenceWord(de: 'Fahrrad.', en: 'bicycle.', ur: 'سائیکل۔'),
        ],
      ),
      GermanSentence(
        emoji: '📅',
        grammarNote: '"jeden Tag" = every day = ہر روز',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'lerne', en: 'study', ur: 'پڑھتا ہوں'),
          SentenceWord(de: 'jeden', en: 'every', ur: 'ہر'),
          SentenceWord(de: 'Tag', en: 'day', ur: 'روز'),
          SentenceWord(de: 'Deutsch.', en: 'German.', ur: 'جرمن۔'),
        ],
      ),
      GermanSentence(
        emoji: '🚶',
        grammarNote: '"gehe spazieren" = go for a walk = سیر کو جاتا ہوں',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'gehe', en: 'go', ur: 'جاتا ہوں'),
          SentenceWord(de: 'täglich', en: 'daily', ur: 'روزانہ'),
          SentenceWord(de: 'spazieren.', en: 'for a walk.', ur: 'سیر کو۔'),
        ],
      ),
      GermanSentence(
        emoji: '🚲',
        grammarNote: '"fahre mit dem Fahrrad" = go by bicycle = سائیکل سے جاتا ہوں',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'fahre', en: 'go', ur: 'جاتا ہوں'),
          SentenceWord(de: 'mit', en: 'by', ur: 'سے'),
          SentenceWord(de: 'dem', en: 'the', ur: ''),
          SentenceWord(de: 'Fahrrad', en: 'bicycle', ur: 'سائیکل'),
          SentenceWord(de: 'zur', en: 'to the', ur: ''),
          SentenceWord(de: 'Universität.', en: 'university.', ur: 'یونیورسٹی۔'),
        ],
      ),
      GermanSentence(
        emoji: '🌙',
        grammarNote: '"nachts" = at night = رات کو — time adverb',
        words: [
          SentenceWord(de: 'Nachts', en: 'At night', ur: 'رات کو'),
          SentenceWord(de: 'lese', en: 'read', ur: 'پڑھتا ہوں'),
          SentenceWord(de: 'ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'gerne', en: 'gladly', ur: 'خوشی سے'),
          SentenceWord(de: 'Bücher.', en: 'books.', ur: 'کتابیں۔'),
        ],
      ),
      GermanSentence(
        emoji: '🌅',
        grammarNote: '"früh aufstehen" = get up early = جلدی اٹھنا',
        words: [
          SentenceWord(de: 'Ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'stehe', en: 'get', ur: 'جلدی'),
          SentenceWord(de: 'früh', en: 'early', ur: 'اٹھتا'),
          SentenceWord(de: 'auf.', en: 'up.', ur: 'ہوں۔'),
        ],
      ),
      GermanSentence(
        emoji: '⏭️',
        grammarNote: '"danach" = after that = اس کے بعد — sequence word',
        words: [
          SentenceWord(de: 'Danach', en: 'After that', ur: 'اس کے بعد'),
          SentenceWord(de: 'gehe', en: 'go', ur: 'جاتا ہوں'),
          SentenceWord(de: 'ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'zur', en: 'to the', ur: ''),
          SentenceWord(de: 'Arbeit.', en: 'work.', ur: 'کام پر۔'),
        ],
      ),
      GermanSentence(
        emoji: '🏁',
        grammarNote: '"zuletzt" = finally = آخر میں — sequence word',
        words: [
          SentenceWord(de: 'Zuletzt', en: 'Finally', ur: 'آخر میں'),
          SentenceWord(de: 'gehe', en: 'go', ur: 'جاتا ہوں'),
          SentenceWord(de: 'ich', en: 'I', ur: 'میں'),
          SentenceWord(de: 'schlafen.', en: 'to sleep.', ur: 'سونے۔'),
        ],
      ),
    ],
  ),
];