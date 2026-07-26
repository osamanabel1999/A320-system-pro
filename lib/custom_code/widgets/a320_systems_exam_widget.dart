// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';

// --- Data Models ---
class A320Q {
  final String q;
  final List<String> o;
  final int a;
  A320Q(this.q, this.o, this.a);
}

// --- Main Widget ---
class A320SystemsExamWidget extends StatefulWidget {
  const A320SystemsExamWidget({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  State<A320SystemsExamWidget> createState() => _A320SystemsExamWidgetState();
}

enum ExamState { start, playing, result }

class _A320SystemsExamWidgetState extends State<A320SystemsExamWidget> {
  ExamState _currentState = ExamState.start;
  bool _useTimer = false;
  Timer? _timer;
  int _timeLeft = 5400; // 1.5 hours

  int _currentQuestionIndex = 0;
  Set<int> _completedQuestions = {};
  Set<int> _wrongQuestions = {}; // لحساب الأسئلة التي تم الخطأ فيها من أول مرة

  int? _selectedAnswerIndex;
  bool _showError = false;

  List<A320Q> _shuffledQuestions = [];

  // --- Questions Database (Exactly from your provided A320 document) ---
  final List<A320Q> _allQuestions = [
    A320Q(
        "What component unrelated to the CVR must be selected ON for a successful CVR test?",
        ["RMP # 1", "Cockpit speaker", "Parking brake"],
        2),
    A320Q(
        "If the CAPT and PURS/CAPT switch on the EVAC panel is set to CAPT, the complete Evacuation Alert System is activated by selecting what pushbutton(s) to on?",
        [
          "Cockpit COMMAND pb",
          "Cockpit COMMAND pb or cabin CMD pb",
          "Cabin CMD pb"
        ],
        0),
    A320Q(
        "If RMP # 2 is set to tune a navaid, which FMGC(s) lose auto tuning capability?",
        ["FMGC # 2", "FMGC # 1", "Both FMGCs"],
        2),
    A320Q(
        "Which position of the INT/RAD switch must be used with care since it creates a 'hot mike' for interphone communications?",
        ["INT", "RAD", "Neutral"],
        2),
    A320Q(
        "If a mechanic is stationed at engine 1 and communicating on the service interphone, which ACP selection knob must be released to hear the mechanic?",
        ["CAB", "INT", "VHF 3"],
        2),
    A320Q(
        "In the event of a failed ACP, how can the pilot continue to make ACP selections?",
        [
          "No pilot action is required",
          "The failed ACP must be reset OFF then ON",
          "The failed ACP can be replaced by ACP 3 using the AUDIO SWITCHING selector"
        ],
        2),
    A320Q(
        "An emergency call from the cabin results in the flashing of what ACP legend?",
        ["MECH CALL", "EMER CALL", "ATTND CALL"],
        0),
    A320Q(
        "The ADIRS ALIGN lights flash to indicate an alignment fault. Which of the following is an alignment fault that causes the ALIGN lights to flash?",
        [
          "Excessive movement during alignment",
          "First officer enters present position",
          "The nosewheel steering is disconnected during alignment"
        ],
        0),
    A320Q(
        "A fast alignment occurs by selecting the rotary MODE selector from NAV to OFF and back to NAV within how many seconds?",
        ["Ten", "Five", "Three"],
        1),
    A320Q(
        "ADIRU # 2 normally supplies ADR and IR information for which displays?",
        [
          "Captain's PFD and ND",
          "First officer's PFD and ND",
          "Captain's PFD and first officer's ND"
        ],
        1),
    A320Q(
        "At the gate, if the ADIRUs are powered by the aircraft batteries, all of the following occur except?",
        [
          "The ON BAT light on the ADIRS panel illuminates",
          "ECAM ADIRS ON BAT fault message is generated",
          "The external horn is activated"
        ],
        1),
    A320Q(
        "Assuming GPS is available, the ADIRUs calculate all of the following positions, except?",
        ["An IRS position", "A GPS/IRS hybrid position", "A MIX IRS position"],
        2),
    A320Q(
        "If selected ON, which exterior lights automatically extinguish with the landing gear retracted?",
        ["Nose lights (taxi and takeoff)", "Landing lights", "Wing lights"],
        0),
    A320Q(
        "Regardless of switch position, the SEAT BELT, NO SMOKING, and EXIT signs illuminate automatically if the cabin altitude exceeds what altitude?",
        [
          "10,000 (+/- 350 feet)",
          "10,800 (+/- 350 feet)",
          "11,300 (+/- 350 feet)"
        ],
        2),
    A320Q(
        "When illuminated, the overhead emergency lights and EXIT signs are powered by either the DC ESS SHED bus or what other power source?",
        ["AC BUS 1", "Internal batteries", "BAT BUS"],
        1),
    A320Q(
        "When illuminated, the emergency escape path marking system is powered ONLY by what power source?",
        ["BAT BUS", "DC ESS SHED bus", "Internal Batteries"],
        2),
    A320Q(
        "The 12 minute internal batteries are charged by what power source, provided the lights, signs and/or markers are NOT illuminated?",
        ["BAT BUS", "DC ESS SHED BUS", "AC BUS 1"],
        1),
    A320Q(
        "If Cabin Pressure Controller 1 fails, what occurs automatically provided no other abnormals are present?",
        [
          "The manual mode activates",
          "Cabin Pressure Controller 2 activates",
          "The outflow valve drives full open"
        ],
        1),
    A320Q(
        "The following are Cabin Pressure Controller modes of operation except?",
        ["Go-around", "Climb", "Abort"],
        0),
    A320Q(
        "In manual mode, who or what drives the outflow valve full open during landing?",
        [
          "The pilot using the MAN V/S CTL switch",
          "The active Cabin Pressure Controller",
          "The pilot using the DITCHING pb"
        ],
        0),
    A320Q(
        "If the LDG ELEV selector is in the AUTO position, the active Cabin Pressure Controller receives destination field elevation from what source?",
        ["FMGS", "ADIRS", "ACARS"],
        0),
    A320Q(
        "What is a reason to move the LDG ELEV selector out of the AUTO position and manually select destination field elevation?",
        [
          "Dual Cabin Pressure Controller failure",
          "Dual FMGC failure",
          "Dual FCU channel failure"
        ],
        1),
    A320Q(
        "A return to the departure airport is required immediately after takeoff. Which statement is true regarding automatic pressurization?",
        [
          "The pilot must select the manual mode",
          "The active pressure controller automatically returns the cabin altitude to departure field elevation",
          "The outflow valve remains in its last position"
        ],
        1),
    A320Q(
        "During descent, the cabin pressure rate is controlled so that:",
        [
          "The cabin is slightly pressurized at landing",
          "The cabin descends at 1000 feet per minute",
          "The aircraft is fully depressurized prior to landing"
        ],
        0),
    A320Q(
        "Which of the following statements best describes the function of the safety valves?",
        [
          "They prevent excessive positive differential pressure only",
          "They prevent excessive positive or negative differential pressure",
          "They prevent excessive negative differential pressure only"
        ],
        1),
    A320Q(
        "The zone temperature selectors on the AIR COND panel perform what function?",
        [
          "Modulate the trim air valves",
          "Signal temperature demands to the AC Controllers",
          "Modulate the pack bypass valves"
        ],
        1),
    A320Q(
        "The presence of FAULT lights on both PACK pbs during preflight without an ECAM fault message most likely indicates what?",
        [
          "No bleed air available",
          "Pack overheat",
          "The pack pbs are selected to OFF"
        ],
        0),
    A320Q(
        "The forward cargo ventilation system includes two isolation valves that:",
        [
          "cannot be controlled from the cockpit",
          "allow only cabin air to ventilate the cargo compartment if closed",
          "close automatically if smoke is detected"
        ],
        2),
    A320Q(
        "Which of the following statements best describe the use of engine bleed air?",
        [
          "The BMCs open the HP valve when IP air is insufficient... HP air replaces IP air",
          "The BMCs use HP air to augment IP air... HP and IP are used simultaneously",
          "The BMCs only open the HP valve during ground operations"
        ],
        0),
    A320Q(
        "In the AUTO position, the XBLEED (crossbleed) valve will:",
        [
          "Open when the APU bleed valve opens",
          "Normally be open",
          "Open if a leak is detected"
        ],
        0),
    A320Q(
        "If engine 1 bleed valve fails in the closed position, engine anti-ice is:",
        [
          "Provided through electric heating",
          "Unavailable to that engine",
          "Unaffected since engine anti-ice is provided by hot bleed air supply that is independent of the pneumatic system"
        ],
        2),
    A320Q(
        "If the engines and APU are running with the APU bleed valve open, the BMCs:",
        [
          "Close the engine bleed valves giving priority to APU bleed air",
          "Close the APU bleed valve giving priority to engine bleed air",
          "Open the engine bleed valves simultaneously"
        ],
        0),
    A320Q("The wings contain what type of bleed leak detection?",
        ["Single loop", "Dual loop", "Triple lindy"], 0),
    A320Q(
        "From highest to lowest, what is the priority order for normal electrical power?",
        [
          "GEN(engine), APU GEN, EXT PWR",
          "EXT PWR, APU GEN, GEN (engine)",
          "GEN (engine), EXT PWR, APU GEN"
        ],
        2),
    A320Q(
        "If an IDG pb is pushed in response to an abnormal condition:",
        [
          "The pilot may push it again to reconnect the IDG",
          "The pilot is merely backing up the auto disconnect feature",
          "The IDG can only be reconnected by maintenance"
        ],
        2),
    A320Q("In the normal configuration, what bus powers the AC ESS BUS?",
        ["AC BUS 2", "AC ESS SHED BUS", "AC BUS 1"], 2),
    A320Q(
        "During Preliminary Cockpit Preparation, the BAT pbs are selected OFF to conduct a voltage check. Minimum voltage for a successful check?",
        [
          "Greater than or equal to 25.5 volts",
          "Greater than 26.5 volts",
          "Greater than 24.5 volts"
        ],
        0),
    A320Q(
        "The crew is dispatched with the APU inoperative. During cruise GEN 2 fails. What electrical systems are unpowered?",
        [
          "AC BUS 1",
          "All aircraft systems are powered",
          "Galley is partially shed"
        ],
        2),
    A320Q(
        "Which statement is true regarding circuit breakers?",
        [
          "Black circuit breakers are monitored by the ECAM",
          "Green circuit breakers are monitored by the ECAM",
          "Red circuit breakers are monitored by the ECAM"
        ],
        1),
    A320Q(
        "Which of the following statements regarding the emergency electrical configuration is true?",
        [
          "The emergency generator provides only emergency DC power",
          "The RAT automatically extends and the emergency generator connects if AC BUS 1 and 2 are unpowered in-flight",
          "The RAT must be manually extended using the RAT MAN ON pb"
        ],
        1),
    A320Q(
        "What cockpit lighting is available during the emergency electrical configuration?",
        [
          "Dome light, captain's main panel flood lights, and the standby compass light",
          "Dome light and the standby compass light",
          "Dome lights only"
        ],
        0),
    A320Q(
        "Each aircraft generator (engine and APU) can supply up to 90 KVA while the emergency generator supplies how much power?",
        ["45 KVA", "15 KVA", "5 KVA"],
        2),
    A320Q(
        "During refueling, the AUTO FEED FAULT message is displayed... What action is required by the crew?",
        [
          "No maintenance action is required since refueling is in process",
          "Call maintenance to fix or defer the malfunction",
          "Reset the system with the MODE SEL pb"
        ],
        0),
    A320Q(
        "Which statement best describes the differences between wing tank pumps and center tank pumps on the A-319?",
        [
          "The center tank pumps only operate during takeoff",
          "The center tank pumps are fitted with pressure reducing valves establishing wing tank pump priority",
          "The wing tank pumps are fitted with pressure reducing valves establishing center tank pump priority"
        ],
        2),
    A320Q(
        "Which of the following is the approximate total weight of useable fuel the A-319 can carry?",
        ["41,200 lbs", "42,500 lbs", "42,100 lbs"],
        1),
    A320Q(
        "Which of the following is the approximate total weight of useable fuel the A-321 can carry with no Additional Center Tanks (ACTs)?",
        ["51,000 lbs", "46,000 lbs", "41,000 lbs"],
        1),
    A320Q(
        "At approximately what total Fuel On Board (FOB) will the outer tank fuel transfer valves open on the A319?",
        ["1650 lbs", "6,300 lbs", "No outer tanks are installed on the A-319"],
        2),
    A320Q(
        "At approximately what total Fuel On Board (FOB) will the outer tank fuel transfer valves open on the A-321?",
        ["1650 lbs", "6,300 lbs", "No outer tanks are installed on the A321"],
        2),
    A320Q(
        "If the outer tank fuel transfer valves open in-flight, they are commanded closed:",
        [
          "By pushing the TRANSFER pb",
          "Automatically during the refueling process",
          "Automatically in-flight when all outer tank fuel has transferred"
        ],
        1),
    A320Q(
        "On the A-319s, the center tank pumps shut off automatically with the MODE SEL pb in AUTO for all of the following criteria except:",
        ["Engine failure", "Slats extended", "Low level is sensed"],
        0),
    A320Q(
        "On the A-319, without selecting the FUEL SD page, the crew can confirm center tank feeding by observing:",
        [
          "The overhead FUEL panel and observe all fuel pump pbs are lights out",
          "The E/WD displays CTR TK FEEDG message",
          "The CRUISE page displays CTR TK FEEDG message"
        ],
        1),
    A320Q(
        "A major difference between the A-319 and A-321 fuel systems is:",
        [
          "The A321 only transfers fuel from the center tank to the wing tanks. There is no center tank fuel feed to the engines",
          "The wing tank pumps on the A-321 are only controlled manually",
          "The A-321 contains a fuel XFEED valve"
        ],
        0),
    A320Q(
        "When do the fuel used (F USED) indications on the FUEL page automatically reset to zero?",
        ["After landing", "Engine shutdown", "Engine start"],
        2),
    A320Q(
        "If the BLUE electric pump malfunctions and the BLUE ELEC PUMP pb is selected OFF:",
        [
          "The PTU pressurizes the BLUE system",
          "The RAT deploys automatically and powers the BLUE system",
          "The Blue system shuts down (unpressurized)"
        ],
        2),
    A320Q(
        "If a GREEN ENG 1 PUMP failure occurs:",
        [
          "The PTU transfers YELLOW system fluid to operate the GREEN system",
          "The PTU automatically pressurizes the GREEN system without transferring any fluid",
          "The PTU transfers BLUE system fluid to operate the GREEN system"
        ],
        1),
    A320Q(
        "Which of the following best describes the YELLOW hydraulic system after pushing the ENG 2 FIRE pb?",
        [
          "ENG 2 PUMP deactivated and ENG 2 FIRE valve closed. The PTU transfers GREEN system fluid",
          "ENG 2 PUMP deactivated and ENG 2 FIRE valve closed. The PTU operates the YELLOW system",
          "ENG 2 PUMP deactivated and ENG 2 FIRE valve closed. The PTU does not operate the YELLOW system"
        ],
        1),
    A320Q(
        "Which of the following criteria is true for inhibiting the PTU between engine starts?",
        [
          "On the ground with staggered ENG MASTER switches and nosewheel steering connected",
          "On the ground with staggered ENG MASTER switches, parking brake off and nosewheel steering connected",
          "On the ground with staggered ENG MASTER switches, parking brake on or noewheel steering disconnected"
        ],
        2),
    A320Q(
        "In addition to inhibiting the PTU between engine starts; it is also inhibited during what?",
        [
          "Engine failure",
          "Cargo door operation",
          "YELLOW ELEC PUMP pb selected to ON"
        ],
        1),
    A320Q(
        "Which hydraulic system provides pressure for braking under normal conditions?",
        ["YELLOW", "BLUE", "GREEN"],
        2),
    A320Q(
        "When is the BLUE hydraulic system pressurized with the BLUE ELEC PUMP in AUTO?",
        [
          "After selecting the BLUE ELEC PUMP to ON after engine start",
          "Automatically, after the first engine start",
          "Automatically, after both engines are started"
        ],
        1),
    A320Q(
        "In the event of an engine fire, the respective ENG FIRE pb and ENG panel FIRE light illuminate red until:",
        [
          "The respective ENG FIRE pb is pushed and released",
          "The fire is out",
          "The respective ENG MASTER switch is selected OFF"
        ],
        1),
    A320Q(
        "If an engine fire detection loop fails (ECAM displays ENG 1 FIRE LOOP A FAULT):",
        [
          "Fire detection for that engine is unavailable",
          "The other loop can provide fire detection",
          "The pilot must select the other loop (loop B)"
        ],
        1),
    A320Q(
        "If an ENG FIRE pb is pushed:",
        [
          "AGENT 1 and AGENT 2 are armed",
          "AGENT 1 only is armed",
          "AGENT 1 discharges automatically and AGENT 2 is armed"
        ],
        0),
    A320Q(
        "Can the APU fire test be accomplished on battery power only?",
        [
          "No, external power is required",
          "Yes, no lights are illuminated for the test",
          "Yes, the SQUIB, DISC, and APU FIRE pb lights illuminate providing a valid test"
        ],
        2),
    A320Q(
        "The APU fire protection system is different from the engine fire protection system in that:",
        [
          "The APU uses a carbon dioxide fire bottle",
          "The APU is protected by only one fire bottle",
          "The APU fire can only be manually discharged"
        ],
        1),
    A320Q(
        "During exterior preflight, the pilot observes the APU FIRE light on the external power panel. Outside the cockpit, the pilot must do what to discharge the APU fire bottle?",
        [
          "Push the FIRE light on the external power panel",
          "Push the APU SHUT OFF pb on the external power panel",
          "Nothing. On the ground only, the APU shuts down and automatically discharges the APU fire bottle"
        ],
        2),
    A320Q(
        "The red disk on the outside of the fuselage adjacent to the APU compartment indicates:",
        [
          "The APU fire bottle has discharged due to over pressure",
          "The APU fire bottle has not been discharged due to over pressure",
          "The APU fire bottle requires servicing"
        ],
        1),
    A320Q("Smoke detectors are provided for all of the following except:",
        ["Each lavatory", "Wheel well", "Cargo compartment"], 1),
    A320Q(
        "With reference to the cargo compartment fire extinguishing, which statement is true?",
        [
          "There is one fire bottle that discharges into both cargo compartments",
          "There is one fire bottle for each cargo compartment",
          "There is one fire bottle that can be discharged into one compartment only and both DISC lights illuminate"
        ],
        2),
    A320Q(
        "The crew should expect the red SMOKE light on the CARGO SMOKE panel:",
        [
          "To extinguish after discharging the fire bottle",
          "To remain illuminated even if the source of the smoke is extinguished after discharging the fire bottle",
          "To flash indicating the source of the smoke is still present after discharging the fire bottle"
        ],
        1),
    A320Q(
        "Which of the following is true concerning FADEC?",
        [
          "Protects the engine from exceeding EGT limits during automatic starts on the ground only",
          "Protects the engine from exceeding EGT limits during all automatic starts",
          "Protects the engine from exceeding EGT limits during all automatic and manual engine starts"
        ],
        1),
    A320Q(
        "During an automatic start in-flight, FADEC provides all of the following except:",
        [
          "Abnormal start indications",
          "Abort authority",
          "N1 and N2 limits protection"
        ],
        1),
    A320Q(
        "If performing a manual engine start (overhead ENG MAN START pb ON):",
        [
          "FADEC opens the start valve and provides ignition 30 seconds later",
          "Ignition and fuel flow occur when the respective ENG MASTER switch is selected ON",
          "FADEC only opens and closes the start valve"
        ],
        1),
    A320Q(
        "In the event of an engine flame-out:",
        [
          "Continuous ignition is only activated by selecting the ENG MODE selector",
          "FADEC automatically provides continuous ignition on both engines",
          "Continuous ignition is unavailable"
        ],
        1),
    A320Q(
        "If the ENG MODE selector is moved to the CRANK position:",
        [
          "The engine will motor when the overhead ENG MAN START pb is selected ON with Fuel and ignition inhibited",
          "The engine will begin to motor immediately with fuel and ignition inhibited",
          "FADEC only opens the start valve"
        ],
        0),
    A320Q(
        "During an automatic start of engine 1, the crew notices only igniter B is powered. Is this normal?",
        [
          "No. Contact maintenance",
          "Yes. FADEC alternates igniters for automatic engine starts",
          "Yes. FADEC only uses igniter B to start engine 1"
        ],
        1),
    A320Q(
        "Which of the following is true?",
        [
          "FADEC will only prevent the engine from exceeding RPM limits in reverse thrust",
          "FADEC will always prevent the engine from exceeding RPM limits and EGT limits",
          "FADEC will prevent the engine from exceeding RPM limits in both forward and reverse thrust"
        ],
        2),
    A320Q(
        "On the ground with an engine shut down, can the pilot deploy that engine's thrust reverser blocker doors and translating sleeve from the cockpit?",
        [
          "Yes, as long as the YELLOW hydraulic system is pressurized",
          "Yes, as long as GREEN hydraulic system is pressurized",
          "No, the blocker doors cannot be deployed on an inoperative engine from the cockpit"
        ],
        2),
    A320Q(
        "Which of the following is true about IDG oil?",
        [
          "Each engine shares oil with its respective IDG",
          "Each IDG has its own oil supply which is cooled by fuel",
          "Each IDG has its own oil supply which is cooled by ambient air"
        ],
        1),
    A320Q(
        "All of the following are required to start the APU except:",
        [
          "BAT pbs selected to AUTO",
          "APU MASTER and START switches to ON",
          "EXT PWR pb selected to ON"
        ],
        2),
    A320Q("APU bleed air may be used for all of the following except:",
        ["Engine starting", "Pack operation", "Wing ant-ice"], 2),
    A320Q(
        "Prior to engine start, the EXT PWR pb indicates AVAIL and the APU START pb indicates AVAIL, what source is powering the aircraft?",
        [
          "The APU",
          "External power",
          "The aircraft electrical systems are not powered"
        ],
        1),
    A320Q(
        "Which of the following emergency lights are controlled by the EMER LT switch on the overhead SIGNS panel?",
        [
          "Escape slide lights",
          "Photo-luminescent floor path markings",
          "Cabin emergency lights"
        ],
        2),
    A320Q(
        "What are the power sources for the emergency lighting systems?",
        [
          "AC BUS 1 and AC BUS 2",
          "DC ESS SHED BUS and AC ESS SHED BUS",
          "DC ESS SHED BUS and Internal batteries"
        ],
        2),
    A320Q(
        "The emergency lights can be activated from the flight attendant station:",
        [
          "Only if the EMER LT switch is in the ARM position",
          "Only if the EMER LT switch is in the OFF position",
          "Regardless of which position the EMER LT switch is in"
        ],
        2),
    A320Q(
        "The cabin oxygen masks automatically deploy (drop) when the cabin altitude exceeds:",
        ["10,000 feet", "12,500 feet", "14,000 feet"],
        2),
    A320Q(
        "In normal law, if one sidestick is rapidly pulled back, can the aircraft exceed the maximum G Load?",
        [
          "No. The load factor limitation overrides sidestick commands to avoid excessive G loads",
          "No. The sidestick commands are deactivated for five seconds",
          "Yes. The pilot should avoid rapid sidestick commands"
        ],
        0),
    A320Q(
        "In normal law, what is the maximum bank angle obtainable with the sidestick fully deflected?",
        [
          "33 degrees",
          "67 degrees",
          "There is no bank limitation in normal law"
        ],
        1),
    A320Q(
        "If flaps FULL is selected with the speedbrakes extended:",
        [
          "The flaps will not extend until the speedbrakes are fully retracted",
          "The speedbrakes will automatically retract",
          "The flaps will extend and the speedbrakes remain extended"
        ],
        1),
    A320Q(
        "When does the alternate braking system become operational/active?",
        [
          "The failure of the Alternate Brake Control Unit (ABCU)",
          "The failure of the autobrakes",
          "The failure of the green hydraulic system"
        ],
        2)
  ];

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startExam() {
    setState(() {
      _shuffledQuestions = List.from(_allQuestions)..shuffle();
      _currentState = ExamState.playing;
      _currentQuestionIndex = 0;
      _completedQuestions.clear();
      _wrongQuestions.clear();
      _selectedAnswerIndex = null;
      _showError = false;
    });

    if (_useTimer) {
      _timeLeft = 5400; // 90 mins
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        if (_timeLeft > 0) {
          setState(() => _timeLeft--);
        } else {
          _finishExam();
        }
      });
    }
  }

  void _finishExam() {
    _timer?.cancel();
    setState(() {
      _currentState = ExamState.result;
    });
  }

  void _handleAnswer(int index) {
    // لو السؤال متجاوب صح قبل كده، منعطلوش
    if (_completedQuestions.contains(_currentQuestionIndex)) return;

    final question = _shuffledQuestions[_currentQuestionIndex];

    setState(() {
      _selectedAnswerIndex = index;
    });

    if (index == question.a) {
      // إجابة صحيحة
      _showError = false;
      _completedQuestions.add(_currentQuestionIndex);

      // حفظ الـ Index الحالي عشان لو اليوزر داس Previous بسرعة قبل ما الوقت يخلص
      int answeredIndex = _currentQuestionIndex;

      Future.delayed(const Duration(milliseconds: 800), () {
        if (!mounted) return;

        // التحقق إن اليوزر لسه في نفس السؤال ومخرجش منه بـ Previous
        if (_currentQuestionIndex == answeredIndex) {
          if (_currentQuestionIndex < _shuffledQuestions.length - 1) {
            setState(() {
              _currentQuestionIndex++;
              _selectedAnswerIndex = null;
            });
          } else {
            _finishExam(); // لو آخر سؤال ينهي الامتحان
          }
        }
      });
    } else {
      // إجابة خاطئة
      _wrongQuestions.add(_currentQuestionIndex);
      _showError = true;
    }
  }

  void _goToPrevious() {
    if (_currentQuestionIndex > 0) {
      setState(() {
        _currentQuestionIndex--;
        _selectedAnswerIndex = null;
        _showError = false;
      });
    }
  }

  void _goToNext() {
    if (_completedQuestions.contains(_currentQuestionIndex)) {
      if (_currentQuestionIndex < _shuffledQuestions.length - 1) {
        setState(() {
          _currentQuestionIndex++;
          _selectedAnswerIndex = null;
          _showError = false;
        });
      } else {
        _finishExam();
      }
    }
  }

  String _formatTime(int seconds) {
    int m = seconds ~/ 60;
    int s = seconds % 60;
    return '${m.toString().padLeft(2, '0')}:${s.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      color: const Color(0xFF0F172A),
      child: SafeArea(
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    switch (_currentState) {
      case ExamState.start:
        return _buildStartScreen();
      case ExamState.playing:
        return _buildPlayingScreen();
      case ExamState.result:
        return _buildResultScreen();
    }
  }

  // --- 1. Start Screen ---
  Widget _buildStartScreen() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.flight_takeoff,
                size: 80, color: Color(0xFF38BDF8)),
            const SizedBox(height: 24),
            const Text(
              "A320 Systems Exam",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2),
            ),
            const SizedBox(height: 16),
            Text(
              "${_allQuestions.length} Questions",
              style: const TextStyle(color: Colors.white70, fontSize: 16),
            ),
            const SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF1E293B),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: const Color(0xFF334155)),
              ),
              child: SwitchListTile(
                title: const Text("Enable 1.5 Hour Timer",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500)),
                activeColor: const Color(0xFF38BDF8),
                value: _useTimer,
                onChanged: (val) => setState(() => _useTimer = val),
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF38BDF8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16)),
                  elevation: 0,
                ),
                onPressed: _startExam,
                child: const Text("BEGIN EXAM",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0F172A))),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // --- 2. Playing Screen ---
  Widget _buildPlayingScreen() {
    final question = _shuffledQuestions[_currentQuestionIndex];
    final progress = (_currentQuestionIndex + 1) / _shuffledQuestions.length;

    bool isCompleted = _completedQuestions.contains(_currentQuestionIndex);
    bool isLast = _currentQuestionIndex == _shuffledQuestions.length - 1;

    return Column(
      children: [
        // Top Header Title (As requested)
        Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 16, bottom: 8),
          child: const Text(
            "A320 SYSTEMS EXAM",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white54,
                fontSize: 14,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0),
          ),
        ),

        // Progress and Timer Bar
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          decoration: const BoxDecoration(
            color: Color(0xFF0F172A),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                  "Question ${_currentQuestionIndex + 1} / ${_shuffledQuestions.length}",
                  style: const TextStyle(
                      color: Color(0xFF38BDF8),
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              if (_useTimer)
                Row(
                  children: [
                    const Icon(Icons.timer_outlined,
                        color: Colors.white70, size: 18),
                    const SizedBox(width: 6),
                    Text(_formatTime(_timeLeft),
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'monospace')),
                  ],
                ),
            ],
          ),
        ),
        LinearProgressIndicator(
            value: progress,
            backgroundColor: const Color(0xFF1E293B),
            color: const Color(0xFF38BDF8),
            minHeight: 3),

        // Question and Options
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(question.q,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        height: 1.5,
                        fontWeight: FontWeight.w600)),
                const SizedBox(height: 32),
                ...List.generate(question.o.length, (index) {
                  bool isCorrectChoice = index == question.a;
                  bool isSelected = _selectedAnswerIndex == index;

                  Color borderColor = const Color(0xFF334155);
                  Color bgColor = const Color(0xFF1E293B);
                  IconData? icon;
                  Color? iconColor;

                  // Styling logic based on question completion state
                  if (isCompleted) {
                    if (isCorrectChoice) {
                      borderColor = Colors.greenAccent;
                      bgColor = Colors.greenAccent.withOpacity(0.1);
                      icon = Icons.check_circle;
                      iconColor = Colors.greenAccent;
                    }
                  } else {
                    if (isSelected) {
                      if (!isCorrectChoice) {
                        borderColor = Colors.redAccent;
                        bgColor = Colors.redAccent.withOpacity(0.1);
                        icon = Icons.cancel;
                        iconColor = Colors.redAccent;
                      } else {
                        borderColor = Colors.greenAccent;
                        bgColor = Colors.greenAccent.withOpacity(0.1);
                        icon = Icons.check_circle;
                        iconColor = Colors.greenAccent;
                      }
                    }
                  }

                  return GestureDetector(
                    onTap: () => _handleAnswer(index),
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      margin: const EdgeInsets.only(bottom: 16),
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: bgColor,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(color: borderColor, width: 2)),
                      child: Row(
                        children: [
                          Expanded(
                              child: Text(question.o[index],
                                  style: TextStyle(
                                      color: (isSelected ||
                                              (isCompleted && isCorrectChoice))
                                          ? Colors.white
                                          : Colors.white70,
                                      fontSize: 16,
                                      height: 1.3))),
                          if (icon != null) ...[
                            const SizedBox(width: 12),
                            Icon(icon, color: iconColor, size: 24)
                          ]
                        ],
                      ),
                    ),
                  );
                }),
                if (_showError)
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      children: const [
                        Icon(Icons.warning_amber_rounded,
                            color: Colors.redAccent),
                        SizedBox(width: 8),
                        Expanded(
                            child: Text(
                                "Incorrect! You must select the correct answer to proceed.",
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold))),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),

        // Bottom Navigation Bar
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          decoration: const BoxDecoration(
            color: Color(0xFF0F172A),
            border: Border(top: BorderSide(color: Color(0xFF1E293B))),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Previous Button
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.white,
                  side: BorderSide(
                      color: _currentQuestionIndex > 0
                          ? Colors.white30
                          : Colors.transparent),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                ),
                icon: const Icon(Icons.arrow_back_ios, size: 16),
                label: const Text("Previous", style: TextStyle(fontSize: 16)),
                onPressed: _currentQuestionIndex > 0 ? _goToPrevious : null,
              ),

              // Next / Finish Button
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF38BDF8),
                  disabledBackgroundColor: const Color(0xFF1E293B),
                  foregroundColor: const Color(0xFF0F172A),
                  disabledForegroundColor: Colors.white30,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  elevation: 0,
                ),
                onPressed: isCompleted ? _goToNext : null,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(isLast ? "Finish" : "Next",
                        style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    const SizedBox(width: 8),
                    Icon(isLast ? Icons.check_circle : Icons.arrow_forward_ios,
                        size: 18),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // --- 3. Result Screen ---
  Widget _buildResultScreen() {
    int score = _shuffledQuestions.length - _wrongQuestions.length;
    double percentage = (score / _shuffledQuestions.length) * 100;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("EXAM COMPLETED",
                style: TextStyle(
                    color: Colors.white54,
                    fontSize: 16,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 40),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  child: CircularProgressIndicator(
                      value: percentage / 100,
                      strokeWidth: 16,
                      backgroundColor: const Color(0xFF1E293B),
                      color: percentage >= 80
                          ? Colors.greenAccent
                          : (percentage >= 50
                              ? Colors.orangeAccent
                              : Colors.redAccent)),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("${percentage.toStringAsFixed(1)}%",
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold)),
                    const Text("First Try\nAccuracy",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white70, fontSize: 12)),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                  color: const Color(0xFF1E293B),
                  borderRadius: BorderRadius.circular(16)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildStatColumn(
                      "Correct", score.toString(), Colors.greenAccent),
                  Container(
                      width: 1, height: 40, color: const Color(0xFF334155)),
                  _buildStatColumn("Missed", _wrongQuestions.length.toString(),
                      Colors.redAccent),
                ],
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF38BDF8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    elevation: 0),
                icon: const Icon(Icons.refresh, color: Color(0xFF0F172A)),
                label: const Text("RETAKE EXAM",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0F172A))),
                onPressed: _startExam,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStatColumn(String label, String value, Color color) {
    return Column(
      children: [
        Text(value,
            style: TextStyle(
                color: color, fontSize: 24, fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        Text(label,
            style: const TextStyle(color: Colors.white70, fontSize: 14)),
      ],
    );
  }
}
