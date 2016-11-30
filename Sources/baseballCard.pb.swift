/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: baseballCard.proto
 *
 */

import Foundation
import SwiftProtobuf


public struct BaseballCard: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "BaseballCard"}
  public var protoMessageName: String {return "BaseballCard"}
  public var protoPackageName: String {return ""}
  public var jsonFieldNames: [String: Int] {return [
    "playerName": 1,
    "teams": 2,
    "positions": 3,
    "year": 4,
    "cardNumber": 5,
    "cardCompany": 6,
    "fullImageURL": 7,
    "thumbnailImage": 8,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "playerName": 1,
    "teams": 2,
    "positions": 3,
    "year": 4,
    "cardNumber": 5,
    "cardCompany": 6,
    "fullImageURL": 7,
    "thumbnailImage": 8,
  ]}

  public enum Team: ProtobufEnum {
    public typealias RawValue = Int
    case baltimoreOrioles // = 0
    case bostonRedSox // = 1
    case newYorkYankees // = 2
    case tampaBayRays // = 3
    case torontoBlueJays // = 4
    case chicagoWhiteSox // = 5
    case clevelandIndians // = 6
    case detroitTigers // = 7
    case kansasCityRoyals // = 8
    case minnesotaTwins // = 9
    case houstonAstros // = 10
    case losAngelesAngelsOfAnaheim // = 11
    case oaklandAthletics // = 12
    case seattleMariners // = 13
    case texasRangers // = 14
    case atlantaBraves // = 15
    case miamiMarlins // = 16
    case newYorkMets // = 17
    case philadelphiaPhillies // = 18
    case washingtonNationals // = 19
    case chicagoCubs // = 20
    case cincinnatiReds // = 21
    case milwaukeeBrewers // = 22
    case pittsburghPirates // = 23
    case stLouisCardinals // = 24
    case arizonaDiamondbacks // = 25
    case coloradoRockies // = 26
    case losAngelesDodgers // = 27
    case sanDiegoPadres // = 28
    case sanFranciscoGiants // = 29
    case UNRECOGNIZED(Int)

    public init() {
      self = .baltimoreOrioles
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .baltimoreOrioles
      case 1: self = .bostonRedSox
      case 2: self = .newYorkYankees
      case 3: self = .tampaBayRays
      case 4: self = .torontoBlueJays
      case 5: self = .chicagoWhiteSox
      case 6: self = .clevelandIndians
      case 7: self = .detroitTigers
      case 8: self = .kansasCityRoyals
      case 9: self = .minnesotaTwins
      case 10: self = .houstonAstros
      case 11: self = .losAngelesAngelsOfAnaheim
      case 12: self = .oaklandAthletics
      case 13: self = .seattleMariners
      case 14: self = .texasRangers
      case 15: self = .atlantaBraves
      case 16: self = .miamiMarlins
      case 17: self = .newYorkMets
      case 18: self = .philadelphiaPhillies
      case 19: self = .washingtonNationals
      case 20: self = .chicagoCubs
      case 21: self = .cincinnatiReds
      case 22: self = .milwaukeeBrewers
      case 23: self = .pittsburghPirates
      case 24: self = .stLouisCardinals
      case 25: self = .arizonaDiamondbacks
      case 26: self = .coloradoRockies
      case 27: self = .losAngelesDodgers
      case 28: self = .sanDiegoPadres
      case 29: self = .sanFranciscoGiants
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public init?(name: String) {
      switch name {
      case "baltimoreOrioles": self = .baltimoreOrioles
      case "bostonRedSox": self = .bostonRedSox
      case "newYorkYankees": self = .newYorkYankees
      case "tampaBayRays": self = .tampaBayRays
      case "torontoBlueJays": self = .torontoBlueJays
      case "chicagoWhiteSox": self = .chicagoWhiteSox
      case "clevelandIndians": self = .clevelandIndians
      case "detroitTigers": self = .detroitTigers
      case "kansasCityRoyals": self = .kansasCityRoyals
      case "minnesotaTwins": self = .minnesotaTwins
      case "houstonAstros": self = .houstonAstros
      case "losAngelesAngelsOfAnaheim": self = .losAngelesAngelsOfAnaheim
      case "oaklandAthletics": self = .oaklandAthletics
      case "seattleMariners": self = .seattleMariners
      case "texasRangers": self = .texasRangers
      case "atlantaBraves": self = .atlantaBraves
      case "miamiMarlins": self = .miamiMarlins
      case "newYorkMets": self = .newYorkMets
      case "philadelphiaPhillies": self = .philadelphiaPhillies
      case "washingtonNationals": self = .washingtonNationals
      case "chicagoCubs": self = .chicagoCubs
      case "cincinnatiReds": self = .cincinnatiReds
      case "milwaukeeBrewers": self = .milwaukeeBrewers
      case "pittsburghPirates": self = .pittsburghPirates
      case "stLouisCardinals": self = .stLouisCardinals
      case "arizonaDiamondbacks": self = .arizonaDiamondbacks
      case "coloradoRockies": self = .coloradoRockies
      case "losAngelesDodgers": self = .losAngelesDodgers
      case "sanDiegoPadres": self = .sanDiegoPadres
      case "sanFranciscoGiants": self = .sanFranciscoGiants
      default: return nil
      }
    }

    public init?(jsonName: String) {
      switch jsonName {
      case "BALTIMORE_ORIOLES": self = .baltimoreOrioles
      case "BOSTON_RED_SOX": self = .bostonRedSox
      case "NEW_YORK_YANKEES": self = .newYorkYankees
      case "TAMPA_BAY_RAYS": self = .tampaBayRays
      case "TORONTO_BLUE_JAYS": self = .torontoBlueJays
      case "CHICAGO_WHITE_SOX": self = .chicagoWhiteSox
      case "CLEVELAND_INDIANS": self = .clevelandIndians
      case "DETROIT_TIGERS": self = .detroitTigers
      case "KANSAS_CITY_ROYALS": self = .kansasCityRoyals
      case "MINNESOTA_TWINS": self = .minnesotaTwins
      case "HOUSTON_ASTROS": self = .houstonAstros
      case "LOS_ANGELES_ANGELS_OF_ANAHEIM": self = .losAngelesAngelsOfAnaheim
      case "OAKLAND_ATHLETICS": self = .oaklandAthletics
      case "SEATTLE_MARINERS": self = .seattleMariners
      case "TEXAS_RANGERS": self = .texasRangers
      case "ATLANTA_BRAVES": self = .atlantaBraves
      case "MIAMI_MARLINS": self = .miamiMarlins
      case "NEW_YORK_METS": self = .newYorkMets
      case "PHILADELPHIA_PHILLIES": self = .philadelphiaPhillies
      case "WASHINGTON_NATIONALS": self = .washingtonNationals
      case "CHICAGO_CUBS": self = .chicagoCubs
      case "CINCINNATI_REDS": self = .cincinnatiReds
      case "MILWAUKEE_BREWERS": self = .milwaukeeBrewers
      case "PITTSBURGH_PIRATES": self = .pittsburghPirates
      case "ST_LOUIS_CARDINALS": self = .stLouisCardinals
      case "ARIZONA_DIAMONDBACKS": self = .arizonaDiamondbacks
      case "COLORADO_ROCKIES": self = .coloradoRockies
      case "LOS_ANGELES_DODGERS": self = .losAngelesDodgers
      case "SAN_DIEGO_PADRES": self = .sanDiegoPadres
      case "SAN_FRANCISCO_GIANTS": self = .sanFranciscoGiants
      default: return nil
      }
    }

    public init?(protoName: String) {
      switch protoName {
      case "BALTIMORE_ORIOLES": self = .baltimoreOrioles
      case "BOSTON_RED_SOX": self = .bostonRedSox
      case "NEW_YORK_YANKEES": self = .newYorkYankees
      case "TAMPA_BAY_RAYS": self = .tampaBayRays
      case "TORONTO_BLUE_JAYS": self = .torontoBlueJays
      case "CHICAGO_WHITE_SOX": self = .chicagoWhiteSox
      case "CLEVELAND_INDIANS": self = .clevelandIndians
      case "DETROIT_TIGERS": self = .detroitTigers
      case "KANSAS_CITY_ROYALS": self = .kansasCityRoyals
      case "MINNESOTA_TWINS": self = .minnesotaTwins
      case "HOUSTON_ASTROS": self = .houstonAstros
      case "LOS_ANGELES_ANGELS_OF_ANAHEIM": self = .losAngelesAngelsOfAnaheim
      case "OAKLAND_ATHLETICS": self = .oaklandAthletics
      case "SEATTLE_MARINERS": self = .seattleMariners
      case "TEXAS_RANGERS": self = .texasRangers
      case "ATLANTA_BRAVES": self = .atlantaBraves
      case "MIAMI_MARLINS": self = .miamiMarlins
      case "NEW_YORK_METS": self = .newYorkMets
      case "PHILADELPHIA_PHILLIES": self = .philadelphiaPhillies
      case "WASHINGTON_NATIONALS": self = .washingtonNationals
      case "CHICAGO_CUBS": self = .chicagoCubs
      case "CINCINNATI_REDS": self = .cincinnatiReds
      case "MILWAUKEE_BREWERS": self = .milwaukeeBrewers
      case "PITTSBURGH_PIRATES": self = .pittsburghPirates
      case "ST_LOUIS_CARDINALS": self = .stLouisCardinals
      case "ARIZONA_DIAMONDBACKS": self = .arizonaDiamondbacks
      case "COLORADO_ROCKIES": self = .coloradoRockies
      case "LOS_ANGELES_DODGERS": self = .losAngelesDodgers
      case "SAN_DIEGO_PADRES": self = .sanDiegoPadres
      case "SAN_FRANCISCO_GIANTS": self = .sanFranciscoGiants
      default: return nil
      }
    }

    public var rawValue: Int {
      get {
        switch self {
        case .baltimoreOrioles: return 0
        case .bostonRedSox: return 1
        case .newYorkYankees: return 2
        case .tampaBayRays: return 3
        case .torontoBlueJays: return 4
        case .chicagoWhiteSox: return 5
        case .clevelandIndians: return 6
        case .detroitTigers: return 7
        case .kansasCityRoyals: return 8
        case .minnesotaTwins: return 9
        case .houstonAstros: return 10
        case .losAngelesAngelsOfAnaheim: return 11
        case .oaklandAthletics: return 12
        case .seattleMariners: return 13
        case .texasRangers: return 14
        case .atlantaBraves: return 15
        case .miamiMarlins: return 16
        case .newYorkMets: return 17
        case .philadelphiaPhillies: return 18
        case .washingtonNationals: return 19
        case .chicagoCubs: return 20
        case .cincinnatiReds: return 21
        case .milwaukeeBrewers: return 22
        case .pittsburghPirates: return 23
        case .stLouisCardinals: return 24
        case .arizonaDiamondbacks: return 25
        case .coloradoRockies: return 26
        case .losAngelesDodgers: return 27
        case .sanDiegoPadres: return 28
        case .sanFranciscoGiants: return 29
        case .UNRECOGNIZED(let i): return i
        }
      }
    }

    public var json: String {
      get {
        switch self {
        case .baltimoreOrioles: return "\"BALTIMORE_ORIOLES\""
        case .bostonRedSox: return "\"BOSTON_RED_SOX\""
        case .newYorkYankees: return "\"NEW_YORK_YANKEES\""
        case .tampaBayRays: return "\"TAMPA_BAY_RAYS\""
        case .torontoBlueJays: return "\"TORONTO_BLUE_JAYS\""
        case .chicagoWhiteSox: return "\"CHICAGO_WHITE_SOX\""
        case .clevelandIndians: return "\"CLEVELAND_INDIANS\""
        case .detroitTigers: return "\"DETROIT_TIGERS\""
        case .kansasCityRoyals: return "\"KANSAS_CITY_ROYALS\""
        case .minnesotaTwins: return "\"MINNESOTA_TWINS\""
        case .houstonAstros: return "\"HOUSTON_ASTROS\""
        case .losAngelesAngelsOfAnaheim: return "\"LOS_ANGELES_ANGELS_OF_ANAHEIM\""
        case .oaklandAthletics: return "\"OAKLAND_ATHLETICS\""
        case .seattleMariners: return "\"SEATTLE_MARINERS\""
        case .texasRangers: return "\"TEXAS_RANGERS\""
        case .atlantaBraves: return "\"ATLANTA_BRAVES\""
        case .miamiMarlins: return "\"MIAMI_MARLINS\""
        case .newYorkMets: return "\"NEW_YORK_METS\""
        case .philadelphiaPhillies: return "\"PHILADELPHIA_PHILLIES\""
        case .washingtonNationals: return "\"WASHINGTON_NATIONALS\""
        case .chicagoCubs: return "\"CHICAGO_CUBS\""
        case .cincinnatiReds: return "\"CINCINNATI_REDS\""
        case .milwaukeeBrewers: return "\"MILWAUKEE_BREWERS\""
        case .pittsburghPirates: return "\"PITTSBURGH_PIRATES\""
        case .stLouisCardinals: return "\"ST_LOUIS_CARDINALS\""
        case .arizonaDiamondbacks: return "\"ARIZONA_DIAMONDBACKS\""
        case .coloradoRockies: return "\"COLORADO_ROCKIES\""
        case .losAngelesDodgers: return "\"LOS_ANGELES_DODGERS\""
        case .sanDiegoPadres: return "\"SAN_DIEGO_PADRES\""
        case .sanFranciscoGiants: return "\"SAN_FRANCISCO_GIANTS\""
        case .UNRECOGNIZED(let i): return String(i)
        }
      }
    }

    public var hashValue: Int { return rawValue }

    public var debugDescription: String {
      get {
        switch self {
        case .baltimoreOrioles: return ".baltimoreOrioles"
        case .bostonRedSox: return ".bostonRedSox"
        case .newYorkYankees: return ".newYorkYankees"
        case .tampaBayRays: return ".tampaBayRays"
        case .torontoBlueJays: return ".torontoBlueJays"
        case .chicagoWhiteSox: return ".chicagoWhiteSox"
        case .clevelandIndians: return ".clevelandIndians"
        case .detroitTigers: return ".detroitTigers"
        case .kansasCityRoyals: return ".kansasCityRoyals"
        case .minnesotaTwins: return ".minnesotaTwins"
        case .houstonAstros: return ".houstonAstros"
        case .losAngelesAngelsOfAnaheim: return ".losAngelesAngelsOfAnaheim"
        case .oaklandAthletics: return ".oaklandAthletics"
        case .seattleMariners: return ".seattleMariners"
        case .texasRangers: return ".texasRangers"
        case .atlantaBraves: return ".atlantaBraves"
        case .miamiMarlins: return ".miamiMarlins"
        case .newYorkMets: return ".newYorkMets"
        case .philadelphiaPhillies: return ".philadelphiaPhillies"
        case .washingtonNationals: return ".washingtonNationals"
        case .chicagoCubs: return ".chicagoCubs"
        case .cincinnatiReds: return ".cincinnatiReds"
        case .milwaukeeBrewers: return ".milwaukeeBrewers"
        case .pittsburghPirates: return ".pittsburghPirates"
        case .stLouisCardinals: return ".stLouisCardinals"
        case .arizonaDiamondbacks: return ".arizonaDiamondbacks"
        case .coloradoRockies: return ".coloradoRockies"
        case .losAngelesDodgers: return ".losAngelesDodgers"
        case .sanDiegoPadres: return ".sanDiegoPadres"
        case .sanFranciscoGiants: return ".sanFranciscoGiants"
        case .UNRECOGNIZED(let v): return ".UNRECOGNIZED(\(v))"
        }
      }
    }

  }

  public enum Position: ProtobufEnum {
    public typealias RawValue = Int
    case designatedHitter // = 0
    case pitcher // = 1
    case catcher // = 2
    case firstBase // = 3
    case secondBase // = 4
    case thirdBase // = 5
    case shortStop // = 6
    case leftField // = 7
    case centerField // = 8
    case rightField // = 9
    case UNRECOGNIZED(Int)

    public init() {
      self = .designatedHitter
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .designatedHitter
      case 1: self = .pitcher
      case 2: self = .catcher
      case 3: self = .firstBase
      case 4: self = .secondBase
      case 5: self = .thirdBase
      case 6: self = .shortStop
      case 7: self = .leftField
      case 8: self = .centerField
      case 9: self = .rightField
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public init?(name: String) {
      switch name {
      case "designatedHitter": self = .designatedHitter
      case "pitcher": self = .pitcher
      case "catcher": self = .catcher
      case "firstBase": self = .firstBase
      case "secondBase": self = .secondBase
      case "thirdBase": self = .thirdBase
      case "shortStop": self = .shortStop
      case "leftField": self = .leftField
      case "centerField": self = .centerField
      case "rightField": self = .rightField
      default: return nil
      }
    }

    public init?(jsonName: String) {
      switch jsonName {
      case "DESIGNATED_HITTER": self = .designatedHitter
      case "PITCHER": self = .pitcher
      case "CATCHER": self = .catcher
      case "FIRST_BASE": self = .firstBase
      case "SECOND_BASE": self = .secondBase
      case "THIRD_BASE": self = .thirdBase
      case "SHORT_STOP": self = .shortStop
      case "LEFT_FIELD": self = .leftField
      case "CENTER_FIELD": self = .centerField
      case "RIGHT_FIELD": self = .rightField
      default: return nil
      }
    }

    public init?(protoName: String) {
      switch protoName {
      case "DESIGNATED_HITTER": self = .designatedHitter
      case "PITCHER": self = .pitcher
      case "CATCHER": self = .catcher
      case "FIRST_BASE": self = .firstBase
      case "SECOND_BASE": self = .secondBase
      case "THIRD_BASE": self = .thirdBase
      case "SHORT_STOP": self = .shortStop
      case "LEFT_FIELD": self = .leftField
      case "CENTER_FIELD": self = .centerField
      case "RIGHT_FIELD": self = .rightField
      default: return nil
      }
    }

    public var rawValue: Int {
      get {
        switch self {
        case .designatedHitter: return 0
        case .pitcher: return 1
        case .catcher: return 2
        case .firstBase: return 3
        case .secondBase: return 4
        case .thirdBase: return 5
        case .shortStop: return 6
        case .leftField: return 7
        case .centerField: return 8
        case .rightField: return 9
        case .UNRECOGNIZED(let i): return i
        }
      }
    }

    public var json: String {
      get {
        switch self {
        case .designatedHitter: return "\"DESIGNATED_HITTER\""
        case .pitcher: return "\"PITCHER\""
        case .catcher: return "\"CATCHER\""
        case .firstBase: return "\"FIRST_BASE\""
        case .secondBase: return "\"SECOND_BASE\""
        case .thirdBase: return "\"THIRD_BASE\""
        case .shortStop: return "\"SHORT_STOP\""
        case .leftField: return "\"LEFT_FIELD\""
        case .centerField: return "\"CENTER_FIELD\""
        case .rightField: return "\"RIGHT_FIELD\""
        case .UNRECOGNIZED(let i): return String(i)
        }
      }
    }

    public var hashValue: Int { return rawValue }

    public var debugDescription: String {
      get {
        switch self {
        case .designatedHitter: return ".designatedHitter"
        case .pitcher: return ".pitcher"
        case .catcher: return ".catcher"
        case .firstBase: return ".firstBase"
        case .secondBase: return ".secondBase"
        case .thirdBase: return ".thirdBase"
        case .shortStop: return ".shortStop"
        case .leftField: return ".leftField"
        case .centerField: return ".centerField"
        case .rightField: return ".rightField"
        case .UNRECOGNIZED(let v): return ".UNRECOGNIZED(\(v))"
        }
      }
    }

  }

  public var playerName: String = ""

  public var teams: [BaseballCard.Team] = []

  public var positions: [BaseballCard.Position] = []

  public var year: UInt32 = 0

  ///   Card numbers may have letters.
  public var cardNumber: String = ""

  public var cardCompany: String = ""

  public var fullImageURL: String = ""

  public var thumbnailImage: Data = Data()

  public init() {}

  public init(playerName: String? = nil,
    teams: [BaseballCard.Team] = [],
    positions: [BaseballCard.Position] = [],
    year: UInt32? = nil,
    cardNumber: String? = nil,
    cardCompany: String? = nil,
    fullImageURL: String? = nil,
    thumbnailImage: Data? = nil)
  {
    if let v = playerName {
      self.playerName = v
    }
    if !teams.isEmpty {
      self.teams = teams
    }
    if !positions.isEmpty {
      self.positions = positions
    }
    if let v = year {
      self.year = v
    }
    if let v = cardNumber {
      self.cardNumber = v
    }
    if let v = cardCompany {
      self.cardCompany = v
    }
    if let v = fullImageURL {
      self.fullImageURL = v
    }
    if let v = thumbnailImage {
      self.thumbnailImage = v
    }
  }

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    let handled: Bool
    switch protoFieldNumber {
    case 1: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &playerName)
    case 2: handled = try setter.decodePackedField(fieldType: BaseballCard.Team.self, value: &teams)
    case 3: handled = try setter.decodePackedField(fieldType: BaseballCard.Position.self, value: &positions)
    case 4: handled = try setter.decodeSingularField(fieldType: ProtobufUInt32.self, value: &year)
    case 5: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &cardNumber)
    case 6: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &cardCompany)
    case 7: handled = try setter.decodeSingularField(fieldType: ProtobufString.self, value: &fullImageURL)
    case 8: handled = try setter.decodeSingularField(fieldType: ProtobufBytes.self, value: &thumbnailImage)
    default:
      handled = false
    }
    return handled
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    if playerName != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: playerName, protoFieldNumber: 1, protoFieldName: "playerName", jsonFieldName: "playerName", swiftFieldName: "playerName")
    }
    if !teams.isEmpty {
      try visitor.visitPackedField(fieldType: BaseballCard.Team.self, value: teams, protoFieldNumber: 2, protoFieldName: "teams", jsonFieldName: "teams", swiftFieldName: "teams")
    }
    if !positions.isEmpty {
      try visitor.visitPackedField(fieldType: BaseballCard.Position.self, value: positions, protoFieldNumber: 3, protoFieldName: "positions", jsonFieldName: "positions", swiftFieldName: "positions")
    }
    if year != 0 {
      try visitor.visitSingularField(fieldType: ProtobufUInt32.self, value: year, protoFieldNumber: 4, protoFieldName: "year", jsonFieldName: "year", swiftFieldName: "year")
    }
    if cardNumber != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: cardNumber, protoFieldNumber: 5, protoFieldName: "cardNumber", jsonFieldName: "cardNumber", swiftFieldName: "cardNumber")
    }
    if cardCompany != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: cardCompany, protoFieldNumber: 6, protoFieldName: "cardCompany", jsonFieldName: "cardCompany", swiftFieldName: "cardCompany")
    }
    if fullImageURL != "" {
      try visitor.visitSingularField(fieldType: ProtobufString.self, value: fullImageURL, protoFieldNumber: 7, protoFieldName: "fullImageURL", jsonFieldName: "fullImageURL", swiftFieldName: "fullImageURL")
    }
    if thumbnailImage != Data() {
      try visitor.visitSingularField(fieldType: ProtobufBytes.self, value: thumbnailImage, protoFieldNumber: 8, protoFieldName: "thumbnailImage", jsonFieldName: "thumbnailImage", swiftFieldName: "thumbnailImage")
    }
  }

  public func _protoc_generated_isEqualTo(other: BaseballCard) -> Bool {
    if playerName != other.playerName {return false}
    if teams != other.teams {return false}
    if positions != other.positions {return false}
    if year != other.year {return false}
    if cardNumber != other.cardNumber {return false}
    if cardCompany != other.cardCompany {return false}
    if fullImageURL != other.fullImageURL {return false}
    if thumbnailImage != other.thumbnailImage {return false}
    return true
  }
}
