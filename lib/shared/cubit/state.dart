abstract class FinalNewsAppState {}


class InitialNewsAppState extends FinalNewsAppState {}

class CheckBoxState extends FinalNewsAppState{}

class ChagesState extends FinalNewsAppState{}



class TopHeadLineSuccessState extends FinalNewsAppState{}
class TopHeadLineLoadingState extends FinalNewsAppState{}
class TopHeadLineErrorState extends FinalNewsAppState{
  final String errorMessage ;
  TopHeadLineErrorState(this.errorMessage) ;
}


class BusinessSuccessState extends FinalNewsAppState{}
class BusinessLoadingState extends FinalNewsAppState{}
class BusinessErrorState extends FinalNewsAppState{
  final String errorMessage ;
  BusinessErrorState(this.errorMessage) ;
}



class ScienceSuccessState extends FinalNewsAppState{}
class ScienceLoadingState extends FinalNewsAppState{}
class ScienceErrorState extends FinalNewsAppState{
  final String errorMessage ;
  ScienceErrorState(this.errorMessage) ;
}


class SportSuccessState extends FinalNewsAppState{}
class SportLoadingState extends FinalNewsAppState{}
class SportErrorState extends FinalNewsAppState{
  final String errorMessage ;
  SportErrorState(this.errorMessage) ;
}

class HealthSuccessState extends FinalNewsAppState{}
class HealthLoadingState extends FinalNewsAppState{}
class HealthErrorState extends FinalNewsAppState{
  final String errorMessage ;
  HealthErrorState(this.errorMessage) ;
}

class TechologySuccessState extends FinalNewsAppState{}
class TechologyLoadingState extends FinalNewsAppState{}
class TechologyErrorState extends FinalNewsAppState{
  final String errorMessage ;
  TechologyErrorState(this.errorMessage) ;
}

class EntertainmentSuccessState extends FinalNewsAppState{}
class EntertainmentLoadingState extends FinalNewsAppState{}
class EntertainmentErrorState extends FinalNewsAppState{
  final String errorMessage ;
  EntertainmentErrorState(this.errorMessage) ;
}

class GeneralSuccessState extends FinalNewsAppState{}
class GeneralLoadingState extends FinalNewsAppState{}
class GeneralErrorState extends FinalNewsAppState{
  final String errorMessage ;
  GeneralErrorState(this.errorMessage) ;
}


class EveryThingSuccessState extends FinalNewsAppState{}
class EveryThingLoadingState extends FinalNewsAppState{}
class EveryThingErrorState extends FinalNewsAppState{
  final String errorMessage ;
  EveryThingErrorState(this.errorMessage) ;
}
