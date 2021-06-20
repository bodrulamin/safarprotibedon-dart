class Safar {
  // branch info
  String? branchName;
  DateTime safarDate;
  String? location,
      branchPresidentName,
      safarType,

      // org info
      totalpresent,
      sodossoKormiMuballigProttashi,
      thanaDayittoshil,
      jillaDayittoshil,
      diniShongothon,
      islamiAndolan,
      otherPeople,
      activeJila,
      activeThana,
      inactiveCause,
      monthlyReportToCenter,
      monthlyMeeting,
      monthlyMeetingAvgPresent,
      visitToLowerBranch,

      // manpower info
      newSodosso,
      newKormi,
      newMuballigProttashi,
      sodossoTeam,
      kormiTeam,
      mubaligProttashiTeam,
      sodossoLokkhoMatra,
      kormiLokkhoMatra,
      sodossoShikkhaBoithok,
      kormiShikkhaBoithok,
      muballigProttashiShikkhaBoithok,
      jilaShobgujari,
      thanaShobgujari,

      // prokashona info
      prokashonaKroy,
      prokashonaBikroy,
      noboChintaKroy,
      nokibKroy,

      //economic info
      dayittoShilEyanot,
      shudiEyanot,
      odhostonEyanot,
      centralMonthlyEyanot,

      // official info
      hasBranchOffice,
      branchOfficailCondition,
      // external relation
      withAndolan,
      withBMC,
      withOthers,
      branchProblem,
      branchPossiblity;

//<editor-fold desc="Data Methods" defaultstate="collapsed">

  Safar({
    this.branchName,
    required this.safarDate,
    this.location,
    this.branchPresidentName,
    this.safarType,
    this.totalpresent,
    this.sodossoKormiMuballigProttashi,
    this.thanaDayittoshil,
    this.jillaDayittoshil,
    this.diniShongothon,
    this.islamiAndolan,
    this.otherPeople,
    this.activeJila,
    this.activeThana,
    this.inactiveCause,
    this.monthlyReportToCenter,
    this.monthlyMeeting,
    this.monthlyMeetingAvgPresent,
    this.visitToLowerBranch,
    this.newSodosso,
    this.newKormi,
    this.newMuballigProttashi,
    this.sodossoTeam,
    this.kormiTeam,
    this.mubaligProttashiTeam,
    this.sodossoLokkhoMatra,
    this.kormiLokkhoMatra,
    this.sodossoShikkhaBoithok,
    this.kormiShikkhaBoithok,
    this.muballigProttashiShikkhaBoithok,
    this.jilaShobgujari,
    this.thanaShobgujari,
    this.prokashonaKroy,
    this.prokashonaBikroy,
    this.noboChintaKroy,
    this.nokibKroy,
    this.dayittoShilEyanot,
    this.shudiEyanot,
    this.odhostonEyanot,
    this.centralMonthlyEyanot,
    this.hasBranchOffice,
    this.branchOfficailCondition,
    this.withAndolan,
    this.withBMC,
    this.withOthers,
    this.branchProblem,
    this.branchPossiblity,
  });

  Safar copyWith({
    String? branchName,
    required DateTime safarDate,
    String? location,
    String? branchPresidentName,
    String? safarType,
    String? totalpresent,
    String? sodossoKormiMuballigProttashi,
    String? thanaDayittoshil,
    String? jillaDayittoshil,
    String? diniShongothon,
    String? islamiAndolan,
    String? otherPeople,
    String? activeJila,
    String? activeThana,
    String? inactiveCause,
    String? monthlyReportToCenter,
    String? monthlyMeeting,
    String? monthlyMeetingAvgPresent,
    String? visitToLowerBranch,
    String? newSodosso,
    String? newKormi,
    String? newMuballigProttashi,
    String? sodossoTeam,
    String? kormiTeam,
    String? mubaligProttashiTeam,
    String? sodossoLokkhoMatra,
    String? kormiLokkhoMatra,
    String? sodossoShikkhaBoithok,
    String? kormiShikkhaBoithok,
    String? muballigProttashiShikkhaBoithok,
    String? jilaShobgujari,
    String? thanaShobgujari,
    String? prokashonaKroy,
    String? prokashonaBikroy,
    String? noboChintaKroy,
    String? nokibKroy,
    String? dayittoShilEyanot,
    String? shudiEyanot,
    String? odhostonEyanot,
    String? centralMonthlyEyanot,
    String? hasBranchOffice,
    String? branchOfficailCondition,
    String? withAndolan,
    String? withBMC,
    String? withOthers,
    String? branchProblem,
    String? branchPossiblity,
  }) {
    return new Safar(
      branchName: branchName ?? this.branchName,
      safarDate: this.safarDate,
      location: location ?? this.location,
      branchPresidentName: branchPresidentName ?? this.branchPresidentName,
      safarType: safarType ?? this.safarType,
      totalpresent: totalpresent ?? this.totalpresent,
      sodossoKormiMuballigProttashi: sodossoKormiMuballigProttashi ?? this.sodossoKormiMuballigProttashi,
      thanaDayittoshil: thanaDayittoshil ?? this.thanaDayittoshil,
      jillaDayittoshil: jillaDayittoshil ?? this.jillaDayittoshil,
      diniShongothon: diniShongothon ?? this.diniShongothon,
      islamiAndolan: islamiAndolan ?? this.islamiAndolan,
      otherPeople: otherPeople ?? this.otherPeople,
      activeJila: activeJila ?? this.activeJila,
      activeThana: activeThana ?? this.activeThana,
      inactiveCause: inactiveCause ?? this.inactiveCause,
      monthlyReportToCenter: monthlyReportToCenter ?? this.monthlyReportToCenter,
      monthlyMeeting: monthlyMeeting ?? this.monthlyMeeting,
      monthlyMeetingAvgPresent: monthlyMeetingAvgPresent ?? this.monthlyMeetingAvgPresent,
      visitToLowerBranch: visitToLowerBranch ?? this.visitToLowerBranch,
      newSodosso: newSodosso ?? this.newSodosso,
      newKormi: newKormi ?? this.newKormi,
      newMuballigProttashi: newMuballigProttashi ?? this.newMuballigProttashi,
      sodossoTeam: sodossoTeam ?? this.sodossoTeam,
      kormiTeam: kormiTeam ?? this.kormiTeam,
      mubaligProttashiTeam: mubaligProttashiTeam ?? this.mubaligProttashiTeam,
      sodossoLokkhoMatra: sodossoLokkhoMatra ?? this.sodossoLokkhoMatra,
      kormiLokkhoMatra: kormiLokkhoMatra ?? this.kormiLokkhoMatra,
      sodossoShikkhaBoithok: sodossoShikkhaBoithok ?? this.sodossoShikkhaBoithok,
      kormiShikkhaBoithok: kormiShikkhaBoithok ?? this.kormiShikkhaBoithok,
      muballigProttashiShikkhaBoithok: muballigProttashiShikkhaBoithok ?? this.muballigProttashiShikkhaBoithok,
      jilaShobgujari: jilaShobgujari ?? this.jilaShobgujari,
      thanaShobgujari: thanaShobgujari ?? this.thanaShobgujari,
      prokashonaKroy: prokashonaKroy ?? this.prokashonaKroy,
      prokashonaBikroy: prokashonaBikroy ?? this.prokashonaBikroy,
      noboChintaKroy: noboChintaKroy ?? this.noboChintaKroy,
      nokibKroy: nokibKroy ?? this.nokibKroy,
      dayittoShilEyanot: dayittoShilEyanot ?? this.dayittoShilEyanot,
      shudiEyanot: shudiEyanot ?? this.shudiEyanot,
      odhostonEyanot: odhostonEyanot ?? this.odhostonEyanot,
      centralMonthlyEyanot: centralMonthlyEyanot ?? this.centralMonthlyEyanot,
      hasBranchOffice: hasBranchOffice ?? this.hasBranchOffice,
      branchOfficailCondition: branchOfficailCondition ?? this.branchOfficailCondition,
      withAndolan: withAndolan ?? this.withAndolan,
      withBMC: withBMC ?? this.withBMC,
      withOthers: withOthers ?? this.withOthers,
      branchProblem: branchProblem ?? this.branchProblem,
      branchPossiblity: branchPossiblity ?? this.branchPossiblity,
    );
  }

  @override
  String toString() {
    return 'Safar{branchName: $branchName, safarDate: $safarDate, location: $location, branchPresidentName: $branchPresidentName, safarType: $safarType, totalpresent: $totalpresent, sodossoKormiMuballigProttashi: $sodossoKormiMuballigProttashi, thanaDayittoshil: $thanaDayittoshil, jillaDayittoshil: $jillaDayittoshil, diniShongothon: $diniShongothon, islamiAndolan: $islamiAndolan, otherPeople: $otherPeople, activeJila: $activeJila, activeThana: $activeThana, inactiveCause: $inactiveCause, monthlyReportToCenter: $monthlyReportToCenter, monthlyMeeting: $monthlyMeeting, monthlyMeetingAvgPresent: $monthlyMeetingAvgPresent, visitToLowerBranch: $visitToLowerBranch, newSodosso: $newSodosso, newKormi: $newKormi, newMuballigProttashi: $newMuballigProttashi, sodossoTeam: $sodossoTeam, kormiTeam: $kormiTeam, mubaligProttashiTeam: $mubaligProttashiTeam, sodossoLokkhoMatra: $sodossoLokkhoMatra, kormiLokkhoMatra: $kormiLokkhoMatra, sodossoShikkhaBoithok: $sodossoShikkhaBoithok, kormiShikkhaBoithok: $kormiShikkhaBoithok, muballigProttashiShikkhaBoithok: $muballigProttashiShikkhaBoithok, jilaShobgujari: $jilaShobgujari, thanaShobgujari: $thanaShobgujari, prokashonaKroy: $prokashonaKroy, prokashonaBikroy: $prokashonaBikroy, noboChintaKroy: $noboChintaKroy, nokibKroy: $nokibKroy, dayittoShilEyanot: $dayittoShilEyanot, shudiEyanot: $shudiEyanot, odhostonEyanot: $odhostonEyanot, centralMonthlyEyanot: $centralMonthlyEyanot, hasBranchOffice: $hasBranchOffice, branchOfficailCondition: $branchOfficailCondition, withAndolan: $withAndolan, withBMC: $withBMC, withOthers: $withOthers, branchProblem: $branchProblem, branchPossiblity: $branchPossiblity}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Safar &&
          runtimeType == other.runtimeType &&
          branchName == other.branchName &&
          safarDate == other.safarDate &&
          location == other.location &&
          branchPresidentName == other.branchPresidentName &&
          safarType == other.safarType &&
          totalpresent == other.totalpresent &&
          sodossoKormiMuballigProttashi == other.sodossoKormiMuballigProttashi &&
          thanaDayittoshil == other.thanaDayittoshil &&
          jillaDayittoshil == other.jillaDayittoshil &&
          diniShongothon == other.diniShongothon &&
          islamiAndolan == other.islamiAndolan &&
          otherPeople == other.otherPeople &&
          activeJila == other.activeJila &&
          activeThana == other.activeThana &&
          inactiveCause == other.inactiveCause &&
          monthlyReportToCenter == other.monthlyReportToCenter &&
          monthlyMeeting == other.monthlyMeeting &&
          monthlyMeetingAvgPresent == other.monthlyMeetingAvgPresent &&
          visitToLowerBranch == other.visitToLowerBranch &&
          newSodosso == other.newSodosso &&
          newKormi == other.newKormi &&
          newMuballigProttashi == other.newMuballigProttashi &&
          sodossoTeam == other.sodossoTeam &&
          kormiTeam == other.kormiTeam &&
          mubaligProttashiTeam == other.mubaligProttashiTeam &&
          sodossoLokkhoMatra == other.sodossoLokkhoMatra &&
          kormiLokkhoMatra == other.kormiLokkhoMatra &&
          sodossoShikkhaBoithok == other.sodossoShikkhaBoithok &&
          kormiShikkhaBoithok == other.kormiShikkhaBoithok &&
          muballigProttashiShikkhaBoithok == other.muballigProttashiShikkhaBoithok &&
          jilaShobgujari == other.jilaShobgujari &&
          thanaShobgujari == other.thanaShobgujari &&
          prokashonaKroy == other.prokashonaKroy &&
          prokashonaBikroy == other.prokashonaBikroy &&
          noboChintaKroy == other.noboChintaKroy &&
          nokibKroy == other.nokibKroy &&
          dayittoShilEyanot == other.dayittoShilEyanot &&
          shudiEyanot == other.shudiEyanot &&
          odhostonEyanot == other.odhostonEyanot &&
          centralMonthlyEyanot == other.centralMonthlyEyanot &&
          hasBranchOffice == other.hasBranchOffice &&
          branchOfficailCondition == other.branchOfficailCondition &&
          withAndolan == other.withAndolan &&
          withBMC == other.withBMC &&
          withOthers == other.withOthers &&
          branchProblem == other.branchProblem &&
          branchPossiblity == other.branchPossiblity);

  @override
  int get hashCode =>
      branchName.hashCode ^
      safarDate.hashCode ^
      location.hashCode ^
      branchPresidentName.hashCode ^
      safarType.hashCode ^
      totalpresent.hashCode ^
      sodossoKormiMuballigProttashi.hashCode ^
      thanaDayittoshil.hashCode ^
      jillaDayittoshil.hashCode ^
      diniShongothon.hashCode ^
      islamiAndolan.hashCode ^
      otherPeople.hashCode ^
      activeJila.hashCode ^
      activeThana.hashCode ^
      inactiveCause.hashCode ^
      monthlyReportToCenter.hashCode ^
      monthlyMeeting.hashCode ^
      monthlyMeetingAvgPresent.hashCode ^
      visitToLowerBranch.hashCode ^
      newSodosso.hashCode ^
      newKormi.hashCode ^
      newMuballigProttashi.hashCode ^
      sodossoTeam.hashCode ^
      kormiTeam.hashCode ^
      mubaligProttashiTeam.hashCode ^
      sodossoLokkhoMatra.hashCode ^
      kormiLokkhoMatra.hashCode ^
      sodossoShikkhaBoithok.hashCode ^
      kormiShikkhaBoithok.hashCode ^
      muballigProttashiShikkhaBoithok.hashCode ^
      jilaShobgujari.hashCode ^
      thanaShobgujari.hashCode ^
      prokashonaKroy.hashCode ^
      prokashonaBikroy.hashCode ^
      noboChintaKroy.hashCode ^
      nokibKroy.hashCode ^
      dayittoShilEyanot.hashCode ^
      shudiEyanot.hashCode ^
      odhostonEyanot.hashCode ^
      centralMonthlyEyanot.hashCode ^
      hasBranchOffice.hashCode ^
      branchOfficailCondition.hashCode ^
      withAndolan.hashCode ^
      withBMC.hashCode ^
      withOthers.hashCode ^
      branchProblem.hashCode ^
      branchPossiblity.hashCode;

  factory Safar.fromMap(Map<String, dynamic> map) {
    return new Safar(
      branchName: map['branchName'] as String?,
      safarDate: map['safarDate'].toDate() as DateTime,
      location: map['location'] as String?,
      branchPresidentName: map['branchPresidentName'] as String?,
      safarType: map['safarType'] as String?,
      totalpresent: map['totalpresent'] as String?,
      sodossoKormiMuballigProttashi: map['sodossoKormiMuballigProttashi'] as String?,
      thanaDayittoshil: map['thanaDayittoshil'] as String?,
      jillaDayittoshil: map['jillaDayittoshil'] as String?,
      diniShongothon: map['diniShongothon'] as String?,
      islamiAndolan: map['islamiAndolan'] as String?,
      otherPeople: map['otherPeople'] as String?,
      activeJila: map['activeJila'] as String?,
      activeThana: map['activeThana'] as String?,
      inactiveCause: map['inactiveCause'] as String?,
      monthlyReportToCenter: map['monthlyReportToCenter'] as String?,
      monthlyMeeting: map['monthlyMeeting'] as String?,
      monthlyMeetingAvgPresent: map['monthlyMeetingAvgPresent'] as String?,
      visitToLowerBranch: map['visitToLowerBranch'] as String?,
      newSodosso: map['newSodosso'] as String?,
      newKormi: map['newKormi'] as String?,
      newMuballigProttashi: map['newMuballigProttashi'] as String?,
      sodossoTeam: map['sodossoTeam'] as String?,
      kormiTeam: map['kormiTeam'] as String?,
      mubaligProttashiTeam: map['mubaligProttashiTeam'] as String?,
      sodossoLokkhoMatra: map['sodossoLokkhoMatra'] as String?,
      kormiLokkhoMatra: map['kormiLokkhoMatra'] as String?,
      sodossoShikkhaBoithok: map['sodossoShikkhaBoithok'] as String?,
      kormiShikkhaBoithok: map['kormiShikkhaBoithok'] as String?,
      muballigProttashiShikkhaBoithok: map['muballigProttashiShikkhaBoithok'] as String?,
      jilaShobgujari: map['jilaShobgujari'] as String?,
      thanaShobgujari: map['thanaShobgujari'] as String?,
      prokashonaKroy: map['prokashonaKroy'] as String?,
      prokashonaBikroy: map['prokashonaBikroy'] as String?,
      noboChintaKroy: map['noboChintaKroy'] as String?,
      nokibKroy: map['nokibKroy'] as String?,
      dayittoShilEyanot: map['dayittoShilEyanot'] as String?,
      shudiEyanot: map['shudiEyanot'] as String?,
      odhostonEyanot: map['odhostonEyanot'] as String?,
      centralMonthlyEyanot: map['centralMonthlyEyanot'] as String?,
      hasBranchOffice: map['hasBranchOffice'] as String?,
      branchOfficailCondition: map['branchOfficailCondition'] as String?,
      withAndolan: map['withAndolan'] as String?,
      withBMC: map['withBMC'] as String?,
      withOthers: map['withOthers'] as String?,
      branchProblem: map['branchProblem'] as String?,
      branchPossiblity: map['branchPossiblity'] as String?,
    );
  }

  Map<String, dynamic> toMap() {
    // ignore: unnecessary_cast
    return {
      'branchName': this.branchName,
      'safarDate': this.safarDate,
      'location': this.location,
      'branchPresidentName': this.branchPresidentName,
      'safarType': this.safarType,
      'totalpresent': this.totalpresent,
      'sodossoKormiMuballigProttashi': this.sodossoKormiMuballigProttashi,
      'thanaDayittoshil': this.thanaDayittoshil,
      'jillaDayittoshil': this.jillaDayittoshil,
      'diniShongothon': this.diniShongothon,
      'islamiAndolan': this.islamiAndolan,
      'otherPeople': this.otherPeople,
      'activeJila': this.activeJila,
      'activeThana': this.activeThana,
      'inactiveCause': this.inactiveCause,
      'monthlyReportToCenter': this.monthlyReportToCenter,
      'monthlyMeeting': this.monthlyMeeting,
      'monthlyMeetingAvgPresent': this.monthlyMeetingAvgPresent,
      'visitToLowerBranch': this.visitToLowerBranch,
      'newSodosso': this.newSodosso,
      'newKormi': this.newKormi,
      'newMuballigProttashi': this.newMuballigProttashi,
      'sodossoTeam': this.sodossoTeam,
      'kormiTeam': this.kormiTeam,
      'mubaligProttashiTeam': this.mubaligProttashiTeam,
      'sodossoLokkhoMatra': this.sodossoLokkhoMatra,
      'kormiLokkhoMatra': this.kormiLokkhoMatra,
      'sodossoShikkhaBoithok': this.sodossoShikkhaBoithok,
      'kormiShikkhaBoithok': this.kormiShikkhaBoithok,
      'muballigProttashiShikkhaBoithok': this.muballigProttashiShikkhaBoithok,
      'jilaShobgujari': this.jilaShobgujari,
      'thanaShobgujari': this.thanaShobgujari,
      'prokashonaKroy': this.prokashonaKroy,
      'prokashonaBikroy': this.prokashonaBikroy,
      'noboChintaKroy': this.noboChintaKroy,
      'nokibKroy': this.nokibKroy,
      'dayittoShilEyanot': this.dayittoShilEyanot,
      'shudiEyanot': this.shudiEyanot,
      'odhostonEyanot': this.odhostonEyanot,
      'centralMonthlyEyanot': this.centralMonthlyEyanot,
      'hasBranchOffice': this.hasBranchOffice,
      'branchOfficailCondition': this.branchOfficailCondition,
      'withAndolan': this.withAndolan,
      'withBMC': this.withBMC,
      'withOthers': this.withOthers,
      'branchProblem': this.branchProblem,
      'branchPossiblity': this.branchPossiblity,
    } as Map<String, dynamic>;
  }

//</editor-fold>

}
