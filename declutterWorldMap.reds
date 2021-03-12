// Defines mappin variant visibility
// To comment or uncomment any line just add/remove double slash at the start of the line
public static func ShouldHideThisOne(mappinVariant: gamedataMappinVariant) -> Bool {
  return 
    // -- CONFIG SECTION STARTS HERE --
    // -- COMMENTED = VISIBLE, UNCOMMENTED = HIDDEN
    /* --- Gigs --- */
    //Equals(mappinVariant, gamedataMappinVariant.BountyHuntVariant) ||  // Bounty Hunt
    //Equals(mappinVariant, gamedataMappinVariant.ClientInDistressVariant) ||  // Client in distress
    //Equals(mappinVariant, gamedataMappinVariant.SabotageVariant) ||  // Sabotage
    //Equals(mappinVariant, gamedataMappinVariant.RetrievingVariant) ||  // Search and recover
    //Equals(mappinVariant, gamedataMappinVariant.ThieveryVariant) ||  // Thievery
    /* --- Crime activities --- */
    Equals(mappinVariant, gamedataMappinVariant.GangWatchVariant) ||  // Assault in progress
    // Equals(mappinVariant, gamedataMappinVariant.HiddenStashVariant) ||  // Reported crime (aka NCPD scanner hustle quest)
    //Equals(mappinVariant, gamedataMappinVariant.OutpostVariant) ||  // Suspected organized crime activity (aka boss skull)
    /* --- Misc --- */
    //Equals(mappinVariant, gamedataMappinVariant.ApartmentVariant) ||  // Appartment
    // Equals(mappinVariant, gamedataMappinVariant.FastTravelVariant) ||  // Fast travel
    //Equals(mappinVariant, gamedataMappinVariant.TarotVariant) ||  // Tarot card
    //Equals(mappinVariant, gamedataMappinVariant.VehicleVariant) ||  // Your vehicle
    Equals(mappinVariant, gamedataMappinVariant.FixerVariant) ||  // Fixer
    /* --- Services --- */
    //Equals(mappinVariant, gamedataMappinVariant.ServicePointClothesVariant) ||  // Clothes
    //Equals(mappinVariant, gamedataMappinVariant.ServicePointProstituteVariant) ||  // JoyToy
    //Equals(mappinVariant, gamedataMappinVariant.ServicePointMeleeTrainerVariant) ||  // Melee weapon vendor
    //Equals(mappinVariant, gamedataMappinVariant.ServicePointNetTrainerVariant) ||  // Netrunner
    //Equals(mappinVariant, gamedataMappinVariant.ServicePointRipperdocVariant) ||  // Ripperdoc
    //Equals(mappinVariant, gamedataMappinVariant.ServicePointGunsVariant) ||  // Weapon shop
    Equals(mappinVariant, gamedataMappinVariant.ServicePointDropPointVariant) ||  // Drop point
    Equals(mappinVariant, gamedataMappinVariant.ServicePointJunkVariant) ||  // Junk shop
    Equals(mappinVariant, gamedataMappinVariant.ServicePointMedsVariant) ||  // Medpoint
    Equals(mappinVariant, gamedataMappinVariant.ServicePointBarVariant) ||  // Bar
    Equals(mappinVariant, gamedataMappinVariant.ServicePointFoodVariant) ||  // Food
    // -- CONFIG SECTION ENDS HERE --
    false;
}

public static func ShouldHideVehicleQuests() -> Bool = true

// -- Utils
public static func HasTheSameId(point: ref<FastTravelPointData>, tdbID: TweakDBID) -> Bool {
  return Equals(point.pointRecord, tdbID);
}

// Enable fast travel points in the world even if hidden from world map.
public static func LeaveWorldFTPointsEnabled() -> Bool = true

public static func IsFastTravelPointEnabled(point: ref<FastTravelPointData>) -> Bool {
  // -- CONFIG SECTION STARTS HERE
  /*
    Defines the list of available fast travel points.
    To hide any fast travel point just put double slash at the start of the line.
    For example, if you want to hide Nomad Camp point which defined by this line:
      HasTheSameId(point, t"FastTravelPoints.bls_nth_dataterm_06") ||   // Northern Badlands, Nomad Camp
    then add // to make it look like this:
      // HasTheSameId(point, t"FastTravelPoints.bls_nth_dataterm_06") ||   // Northern Badlands, Nomad Camp
  */
  return
    // --- Hideouts
    HasTheSameId(point, t"FastTravelPoints.wat_lch_dataterm_10") ||   // Little China, Megabuilding H10: Atrium (V's appartment)
    HasTheSameId(point, t"FastTravelPoints.wat_kab_dataterm_06") ||   // Kabuki, Charter St (near Judy's appartment)
    HasTheSameId(point, t"FastTravelPoints.bls_nth_dataterm_06") ||   // Northern Badlands, Nomad Camp
    // --- No logic here, just FT points for the rest of the districts ---
    HasTheSameId(point, t"FastTravelPoints.std_arr_dataterm_02") ||   // Arroyo, Megabuilding H6
    HasTheSameId(point, t"FastTravelPoints.wbr_hil_dataterm_02") ||   // Charter Hill, Lele Park
    HasTheSameId(point, t"FastTravelPoints.pac_cvi_dataterm_05") ||   // Coastview, Batty's Hotel
    HasTheSameId(point, t"FastTravelPoints.cct_dtn_dataterm_03") ||   // Downtown, Skyline & Republic
    HasTheSameId(point, t"FastTravelPoints.wat_nid_dataterm_01") ||   // Watson, Martin St
    HasTheSameId(point, t"FastTravelPoints.hey_spr_dataterm_04") ||     // Wellsprings, Megabuilding H2, 
    // --- FT points with metro station ---
    HasTheSameId(point, t"FastTravelPoints.wbr_jpn_metro_ftp_02") ||  // Japantown, Metro: Japantown South
    HasTheSameId(point, t"FastTravelPoints.wbr_jpn_metro_ftp_01") ||  // Japantown, Metro: Monroe St
    HasTheSameId(point, t"FastTravelPoints.wat_lch_metro_ftp_01") ||  // Little China, Metro: Farrier St
    HasTheSameId(point, t"FastTravelPoints.wat_lch_metro_ftp_02") ||  // Little China, Metro: Med Center
    HasTheSameId(point, t"FastTravelPoints.wat_nid_metro_ftp_01") ||  // Northside, Metro: Eisenhower St
    HasTheSameId(point, t"FastTravelPoints.hey_gle_metro_ftp_01") ||  // The Glen, Metro: Glen North
    HasTheSameId(point, t"FastTravelPoints.hey_gle_metro_ftp_02") ||  // The Glen, Metro: Glen South
    HasTheSameId(point, t"FastTravelPoints.hey_rey_metro_ftp_01") ||  // Vista Del Rey, Metro: Congress & MLK
    // --- FT points with bus stop ---
    HasTheSameId(point, t"FastTravelPoints.wbr_nok_dataterm_03") ||   // North Oak, Columbarium
    HasTheSameId(point, t"FastTravelPoints.bls_nth_dataterm_01") ||   // Northern Badlands, Sunset Motel
    HasTheSameId(point, t"FastTravelPoints.bls_nth_dataterm_11") ||   // Northern Badlands, Sunshine Motel
    HasTheSameId(point, t"FastTravelPoints.std_rcr_dataterm_09") ||   // Rancho Coronado, Mallagra & Manzanita
    HasTheSameId(point, t"FastTravelPoints.std_rcr_dataterm_08") ||   // Rancho Coronado, Tama Viewpoint
    HasTheSameId(point, t"FastTravelPoints.bls_sth_dataterm_10") ||   // Southern Badlands, Las Palapas Motel
    HasTheSameId(point, t"FastTravelPoints.bls_sth_dataterm_06");     // Southern Badlands, Tango Tors Motel
    // WARNING: if you disabled the last FT point in the list (Tango Tors Motel) then you must replace || with ; 
    // for you current last active point in the list otherwise the script won't compile
    // -- CONFIG SECTION ENDS HERE
}

public static func ShouldExcludeFastTravelMappin(mappin: wref<IMappin>, IsFastTravelEnabled: Bool) -> Bool {
  let ftMappin: ref<FastTravelMappin>;
  if IsFastTravelEnabled || NotEquals(mappin.GetVariant(), gamedataMappinVariant.FastTravelVariant) {
    return false;
  }
  ftMappin = (mappin as FastTravelMappin);
  return !IsFastTravelPointEnabled(ftMappin.GetPointData());
}



// Check if quest related to vehicle
@addMethod(WorldMapMenuGameController)
public func IsRelatedToVehicleQuest(mappin: wref<IMappin>) -> Bool {
  let mappinQuest: ref<JournalQuest>;
  mappinQuest = questLogGameController.GetTopQuestEntry(this.m_journalManager, this.GetMappinJournalEntry(mappin));

  return NotEquals(mappinQuest, null) && Equals(mappinQuest.GetType(), gameJournalQuestType.VehicleQuest);
}

// Hide mappin
@replaceMethod(WorldMapMenuGameController)
public func CreateMappinUIProfile(mappin: wref<IMappin>, mappinVariant: gamedataMappinVariant, customData: ref<MappinControllerCustomData>) -> MappinUIProfile {
  let isExcludedFastTravelMappin: Bool;
  let isHidden: Bool;
  let isVehicleQuest: Bool;
  let isTracked: Bool;
  let widgetResource: ResRef;

  isExcludedFastTravelMappin = ShouldExcludeFastTravelMappin(mappin, this.IsFastTravelEnabled());
  isHidden = isExcludedFastTravelMappin || ShouldHideThisOne(mappin.GetVariant());
  isVehicleQuest = this.IsRelatedToVehicleQuest(mappin);
  isTracked = mappin.IsPlayerTracked();

  if (isHidden && !isTracked) || (ShouldHideVehicleQuests() && isVehicleQuest && !isTracked) {
    return MappinUIProfile.None();
  };

  widgetResource = r"base\gameplay\gui\fullscreen\world_map\mappins\default_mappin.inkwidget";
  if NotEquals(customData, null) {
    if customData.IsA(n"gameuiWorldMapPlayerInitData") {
      widgetResource = r"base\gameplay\gui\fullscreen\world_map\mappins\player_mappin.inkwidget";
    };
  };
  return MappinUIProfile.Create(widgetResource, t"MappinUISpawnProfile.Always", t"MapMappinUIProfile.Default");
}

@replaceMethod(DataTerm)
private final func RegisterMappin() -> Void {
  let mappinData: MappinData;
  if this.GetDevicePS().IsDisabled() {
    return ;
  };
  if !this.IsMappinRegistered() {
    mappinData.mappinType = t"Mappins.FastTravelDynamicMappin";
    mappinData.variant = gamedataMappinVariant.FastTravelVariant;
    mappinData.visibleThroughWalls = true;
    this.m_mappinID = this.GetMappinSystem().RegisterMappinWithObject(mappinData, this, n"poi_mappin");
  };
}

// ShortRange spawnProfile for Fast Travel mappin replaced with LongRange
@replaceMethod(WorldMappinsContainerController)
public func CreateMappinUIProfile(mappin: wref<IMappin>, mappinVariant: gamedataMappinVariant, customData: ref<MappinControllerCustomData>) -> MappinUIProfile {
  let defaultWidgetResource: ResRef;
  let defaultRuntimeProfile: TweakDBID;
  let questMappin: wref<QuestMappin>;
  let questAnimationRecord: ref<UIAnimation_Record>;
  let stealthMappin: wref<StealthMappin>;
  let gameplayRoleData: ref<GameplayRoleMappinData>;
  gameplayRoleData = (mappin.GetScriptData() as GameplayRoleMappinData);
  defaultRuntimeProfile = t"WorldMappinUIProfile.Default";
  defaultWidgetResource = r"base\gameplay\gui\widgets\mappins\quest\default_mappin.inkwidget";
  if mappin.IsExactlyA(n"gamemappinsStealthMappin") {
    stealthMappin = (mappin as StealthMappin);
    if stealthMappin.IsCrowdNPC() {
      return MappinUIProfile.None();
    };
    return MappinUIProfile.Create(r"base\gameplay\gui\widgets\mappins\stealth\stealth_default_mappin.inkwidget", t"MappinUISpawnProfile.Stealth", t"WorldMappinUIProfile.Stealth");
  };
  if mappin.IsExactlyA(n"gamemappinsRemotePlayerMappin") {
    return MappinUIProfile.Create(r"multi\gameplay\gui\widgets\world_mappins\remote_player_mappin.inkwidget", t"MappinUISpawnProfile.Always", defaultRuntimeProfile);
  };
  if mappin.IsExactlyA(n"gamemappinsPingSystemMappin") {
    return MappinUIProfile.Create(r"multi\gameplay\gui\widgets\world_mappins\pingsystem_mappin.inkwidget", t"MappinUISpawnProfile.Always", defaultRuntimeProfile);
  };
  if mappin.IsExactlyA(n"gamemappinsInteractionMappin") {
    return MappinUIProfile.Create(defaultWidgetResource, t"MappinUISpawnProfile.ShortRange", t"WorldMappinUIProfile.Interaction");
  };
  if mappin.IsExactlyA(n"gamemappinsPointOfInterestMappin") {
    if MappinUIUtils.IsMappinServicePoint(mappinVariant) {
      return MappinUIProfile.Create(defaultWidgetResource, t"MappinUISpawnProfile.ShortRange", t"WorldMappinUIProfile.ServicePoint");
    };
    if Equals(mappinVariant, gamedataMappinVariant.FixerVariant) {
      return MappinUIProfile.Create(defaultWidgetResource, t"MappinUISpawnProfile.ShortRange", t"WorldMappinUIProfile.Fixer");
    };
    return MappinUIProfile.Create(defaultWidgetResource, t"MappinUISpawnProfile.ShortRange", defaultRuntimeProfile);
  };
  if Equals(mappinVariant, gamedataMappinVariant.QuickHackVariant) {
    return MappinUIProfile.Create(r"base\gameplay\gui\widgets\mappins\interaction\quick_hack_mappin.inkwidget", t"MappinUISpawnProfile.ShortRange", t"WorldMappinUIProfile.QuickHack");
  };
  if Equals(mappinVariant, gamedataMappinVariant.PhoneCallVariant) {
    return MappinUIProfile.Create(r"base\gameplay\gui\widgets\mappins\interaction\quick_hack_mappin.inkwidget", t"MappinUISpawnProfile.Always", defaultRuntimeProfile);
  };
  if Equals(mappinVariant, gamedataMappinVariant.VehicleVariant) {
    return MappinUIProfile.Create(defaultWidgetResource, t"MappinUISpawnProfile.LongRange", t"WorldMappinUIProfile.Vehicle");
  };
  if gameplayRoleData != null {
    if Equals(mappinVariant, gamedataMappinVariant.FocusClueVariant) {
      return MappinUIProfile.Create(r"base\gameplay\gui\widgets\mappins\gameplay\gameplay_mappin.inkwidget", t"MappinUISpawnProfile.Always", t"WorldMappinUIProfile.FocusClue");
    };
    return MappinUIProfile.Create(r"base\gameplay\gui\widgets\mappins\gameplay\gameplay_mappin.inkwidget", t"MappinUISpawnProfile.Always", t"WorldMappinUIProfile.GameplayRole");
  };
  if Equals(mappinVariant, gamedataMappinVariant.FastTravelVariant) {
    return MappinUIProfile.Create(defaultWidgetResource, t"MappinUISpawnProfile.LongRange", t"WorldMappinUIProfile.FastTravel"); // changed here
  };
  if Equals(mappinVariant, gamedataMappinVariant.ServicePointDropPointVariant) {
    return MappinUIProfile.Create(defaultWidgetResource, t"MappinUISpawnProfile.ShortRange", t"WorldMappinUIProfile.DropPoint");
  };
  if mappin.IsQuestMappin() {
    questMappin = (mappin as QuestMappin);
    if NotEquals(questMappin, null) {
      if questMappin.IsUIAnimation() {
        questAnimationRecord = TweakDBInterface.GetUIAnimationRecord(questMappin.GetUIAnimationRecordID());
        if ResRef.IsValid(questAnimationRecord.WidgetResource()) && NotEquals(questAnimationRecord.AnimationName(), n"") {
          return MappinUIProfile.Create(questAnimationRecord.WidgetResource(), t"MappinUISpawnProfile.Always", defaultRuntimeProfile);
        };
      } else {
        return MappinUIProfile.Create(defaultWidgetResource, t"MappinUISpawnProfile.Always", t"WorldMappinUIProfile.Quest");
      };
    };
  };
  if customData != null && (customData as TrackedMappinControllerCustomData) != null {
    return MappinUIProfile.Create(defaultWidgetResource, t"MappinUISpawnProfile.Always", defaultRuntimeProfile);
  };
  return MappinUIProfile.Create(defaultWidgetResource, t"MappinUISpawnProfile.MediumRange", defaultRuntimeProfile);
}