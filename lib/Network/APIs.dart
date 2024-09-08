class ServerConfig {

  // static const domainserver = 'http://127.0.0.1:8000/api/';
   static const domainserver = 'http://192.168.245.1:8000/api/';
  static const register = 'register';
  static const login='login';
  static const internal_offers = 'TypeTravel/Internal/get_Offires';
  static const prefer_internal='TypeTravel/Internal/show_offices_favorite';
  static const prefer_external='TypeTravel/External/show_offices_favorite';
  static const external_offers = 'TypeTravel/External/get_Offires';
  static const external_trips = 'External_travels/show_available_Travels';

  static const confirmavailableseats = 'External_travels/';
   static const confirmavailableseats22='/AreSeatsAvailable';
  static const reservationexternal = 'External_travels/';
  static const reservationexternal22='/externalReservation';
  static const payexternal = 'ExternalReservation/3/paymentMethod';
  static const addwallet='addWalletUser';
  static const payinternal='payInternal';
  static const detailstrip = 'api/showOneTrip/';

  static const editprefer='ProfileUser/updateFavoriteUser';
  static const alldriver= 'showAllDriversAccept';
  static const getonedriver='showonedriver/';
  static const officedetails='showdetailsOffice/';
  static const allofice= 'ShowAllofficefatma';
  static const detailscar='getIdCar/';
  // static const detailstrip='/showOneTrip/';
  static const complaintinternal= 'complaintInternals';
  static const deleteresv=
      'UserInformation/ExternalReservations/';
  static const deleteresv1='cancelUserReservation';
  static const  internaltripuser='showMyTripInternal';
  static const  extedrnaltripuser= 'UserInformation/ExternalReservations/showAllUserReservations';
  static const detailsexternaltripsuser='UserInformation/ExternalReservations/';
      static const detailsexternaltripsuser1=' /showDetailsReservation';
  static const bookinternal='addReservation';
  static const complainexternal ='complaintExternal';
  static const externaldetailstripnew='getIdExternalTravel/';
  static const availableseat=
      'External_travels/';
   static const availableseat22='/show_available_seating_oneTravel';
  static const confirmreservation=

      'External_travels/ExternalReservation/';
   static const confirmreservation22='/PaymentFatora/';
   static const confirmreservation33='/reservation_sure';
  static const rating ='addRating';
  static const profileuser='profileuser';
  static const favouriteuserget=
      'ProfileUser/showFavoriteUser';
  static const updatefavourite='ProfileUser/updateFavoriteUser';

   static const notiuser= 'AllNotiUser';

   static const notidriver= 'AllNotiDriver';
   static const detailsexternaltripnew='getIdExternalTravel/';
   static const externaltripoffice='getexternaltravelTooffice/';
}