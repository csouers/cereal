using Cxx = import "./include/c++.capnp";
$Cxx.namespace("cereal");

using Java = import "./include/java.capnp";
$Java.package("ai.comma.openpilot.cereal");
$Java.outerClassname("Chassis");

@0xb17f42ab6608e7e5;

struct BodyState {
  # doors
  frontLeftDoor @0 :Door;
  frontRightDoor @1 :Door;
  rearLeftDoor @2 :Door;
  rearRightDoor @3 :Door;
  hood @4 :Door;
  trunk @5 :Door;
  fuelDoor @6 :Door;
  chargePort @7 :Door;

  struct Door {
    state @0 :State;
    lock @1 :Lock;

    enum State {
      unknown @0;
      open @1;
      closed @2;
      moving @3;
    }
    enum Lock {
      unknown @0;
      unlocked @1;
      locked @2;
    }
  }



  # windows
  frontLeftWindow @7 :Window;
  frontRightWindow @8 :Window;
  backLeftWindow @9 :Window;
  backRightWindow @10 :Window;
  sunroof @11 :Window;

  enum Window {
    unknown @0;
    open @1;
    closed @2;
    moving @3;
  }

  # security
  security @11 :Security;

  enum Security {
    unknown @0;
    disarmed @1;
    arming @2;
    armed @3;
    warning @4;
  }

  # meter
  rangeRemaining @12 :Float32;
  fuelRemaining @13 :Float32;
  odometer @14 :Float32;

  # hvac
  hvac @15 :HVAC;

  struct HVAC {
    interiorTemperature @0 :Float32; #Celcius
    exteriorTemperature @1 :Float32; #Celcius
    setTemperature @2 :Int8; #Celcius
    fanSpeed @3 :Int8;
    mode @4 :Mode;
    recirculate @5 :Bool;
    acRequest @6 :Bool;

    enum Mode {
      unknown @0;
      floor @1;
      dashboard @2;
      mix @3;
      defrost @4;
      defrost_floor @5;
    }
  }

  # seats
  frontLeftSeat @16 :Seat;
  frontCenterSeat @17 :Seat;
  frontRightSeat @18 :Seat;
  middleLeftSeat @19 :Seat;
  middleCenterSeat @20 :Seat;
  middleRightSeat @21 :Seat;
  rearLeftSeat @22 :Seat;
  rearCenterSeat @23 :Seat;
  rearRightSeat @24 :Seat;

  struct Seat {
    heater @0 :Int8;
    seatbelt @1 :Bool;
    occupancy @2 :Bool;
  }
}
