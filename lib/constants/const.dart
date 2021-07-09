class Cons {
  // routes
  static final mainPage = "/";
  static final signInScreen = "/signIn";
  static final signUpScreen = "/signUp";
  static final addSafarScreen = "/addSafar";
  static final viewSafarList = "/viewSafarList";
  // static final viewSafarScreen = "/viewSafarScreen";
  static final homePage = '/homepage';

  // firebase variables
  static String col_safar  = "safar";

  // Strings

  static var addSafar = "Add Safar";
  static var viewSafars = "View Safars";
  static String? emptyMsg = "cannot be empty!";

  //branch info
  static var branchInfo = 'শাখার তথ্য';

  static var branchName = "শাখার নাম";
  static var branchPresidentName = "শাখা সভাপতির নাম";
  static var safarDateString = "সফরের তারিখ";
  static var location = "স্থান";
  static String safarType = "সফরের ধরণ";

  static var safarTypes = [
    'জেলা সম্মেলন',
    'অডিট',
    'থানা সম্মেলন',
    'সমাবেশ',
    'প্রতিনিধি সভা',
    'তদারকি',
    'দাওয়াতি সভা',
    'দায়িত্বশীল তারবিয়াত',
    'সদস্য তারবিয়াত',
    'কর্মী প্রত্যাশী তারবিয়াত',
    'কর্মী তারবিয়াত',
    'অন্যান্য',
  ];

  //Org info
  static var orgInfo = "সাংগঠনিক তথ্য";
  static var totalpresent = 'প্রোগ্রামে উপস্থিতি';
  static var sodossoKormiMuballigProttashi = "সদস্য/কর্মী/মুবাল্লিগ প্রত্যাশী";
  static var thanaDayittoshil = 'থানা দায়িত্বশীল';
  static var jillaDayittoshil = 'জেলা দায়িত্বশীল';
  static var diniShongothon = 'দ্বীনি সংগঠন';
  static var islamiAndolan = 'ইসলামী আন্দোলন';
  static var otherPeople = 'অন্যান্য';

  /////////Activity
  static var activeJila = 'সক্রিয় জেলা দায়িত্বশীল';
  static var activeThana = 'সক্রিয় থানা/উপজেলা দায়িত্বশীল';
  static var inactiveCause = 'নিষ্ক্রীয়তার কারণ';
  static var monthlyReportToCenter = 'কেন্দ্রে মাসিক প্রতিবেদন প্রেরণ : হ্যাঁ/না, না হলে কারণ';
  static var monthlyMeeting = 'মাসিক বৈঠক (নিয়মিত/অনিয়মিত)';
  static var monthlyMeetingAvgPresent = 'গড় উপস্থিতি';
  static var visitToLowerBranch = 'অধঃস্তন শাখায় সফর';

  // Man power info
  static var manpowerInfo = 'জনশক্তি সংক্রান্ত তথ্য';

  static String newIncrease = "নতুন বৃদ্ধি";
  static var newSodosso = 'নতুন সদস্য';
  static var newKormi = 'নতুন কর্মী';
  static var newMuballigProttashi = 'নতুন মুবাল্লিগ প্রত্যাশী';
  static var sodossoTeam = 'সদস্য টিম';
  static var kormiTeam = 'কর্মী টিম';
  static var mubaligProttashiTeam = "মুবাল্লিগ প্রত্যাশী";
  static var sodossoLokkhoMatra = "নতুন সদস্য লক্ষমাত্রা";
  static var kormiLokkhoMatra = 'নতুন কর্মী লক্ষমাত্রা';
  static var sodossoShikkhaBoithok = "সদস্য শিক্ষা বৈঠক";
  static var kormiShikkhaBoithok = "কর্মী শিক্ষা বৈঠক";
  static var muballigProttashiShikkhaBoithok = "মুবাল্লিগ প্রত্যাশী শিক্ষা বৈঠক";
  static var jilaShobgujari = "জেলায় শবগুজারী";
  static var thanaShobgujari = "থানায় শবগুজারী";

// prokashona info
  static var prokashonaInfo = "প্রকাশনা সংক্রান্ত তথ্য";

  static var prokashonaKroy = "প্রকাশনা ক্রয়";
  static var prokashonaBikroy = "প্রকাশনা বিক্রয়";
  static var noboChintaKroy = "নবচিন্তা ক্রয়";
  static var nokibKroy = "নকীব ক্রয়";

  //economic info
  static var economicInfo = "অর্থ সংক্রান্ত তথ্য";

  static var dayittoShilEyanot = "দায়িত্বশীল এয়ানত";
  static var shudiEyanot = "সূধী এয়ানত";
  static var odhostonEyanot = "অধঃস্তন শাখা এয়ানত";
  static var centralMonthlyEyanot = "কেন্দ্রে মাসিক এয়ানত প্রদান";

  // official info
  static var officialInfo = "দাপ্তরিক তথ্য";

  static var hasBranchOffice = "শাখা অফিস: আছে/নেই";
  static var branchOfficailCondition = "শাখার দাফতরিক অবস্থা: খুব ভালো/ভালো/মোটামুটি/ভালো না থাকলে কতদিনে হবে";

  // external relation
  static var externalConnectionInfo = "বহিঃসম্পর্ক";

  static var withAndolan = "আন্দোলনের সাথে";
  static var withBMC = "বামুকের সাথে";
  static var withOthers = "অন্যান্যদের সাথে";
  static var branchProblem = "শাখা সমস্যা";
  static var branchPossiblity = "শাখা সম্ভাবনা";

  static String protibedonSaved = "প্রতিবেদন সেভ করা হয়েছে";

  static var defaultFont = "Ekushe";

  static String safarProtibedon = "সফর প্রতিবেদন";


}
