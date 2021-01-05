using Cxx = import "./include/c++.capnp";
$Cxx.namespace("cereal");

using Java = import "./include/java.capnp";
$Java.package("ai.comma.openpilot.cereal");
$Java.outerClassname("Body");

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
  frontLeftWindow @8 :Window;
  frontRightWindow @9 :Window;
  backLeftWindow @10 :Window;
  backRightWindow @11 :Window;
  sunroof @12 :Window;

  enum Window {
    unknown @0;
    open @1;
    closed @2;
    moving @3;
  }

  # security
  security @13 :Security;

  enum Security {
    unknown @0;
    disarmed @1;
    arming @2;
    armed @3;
    warning @4;
  }

  # meter
  rangeRemaining @14 :Float32;
  fuelRemaining @15 :Float32;
  odometer @16 :Float32;

  # hvac
  hvac @17 :HVAC;

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
      defrostfloor @5;
    }
  }

  # seats
  frontLeftSeat @18 :Seat;
  frontCenterSeat @19 :Seat;
  frontRightSeat @20 :Seat;
  middleLeftSeat @21 :Seat;
  middleCenterSeat @22 :Seat;
  middleRightSeat @23 :Seat;
  rearLeftSeat @24 :Seat;
  rearCenterSeat @25 :Seat;
  rearRightSeat @26 :Seat;

  struct Seat {
    heater @0 :Int8;
    seatbelt @1 :Bool;
    occupancy @2 :Bool;
  }
}
