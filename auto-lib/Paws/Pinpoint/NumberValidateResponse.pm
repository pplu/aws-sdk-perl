
package Paws::Pinpoint::NumberValidateResponse;
  use Moose;
  has Carrier => (is => 'ro', isa => 'Str');
  has City => (is => 'ro', isa => 'Str');
  has CleansedPhoneNumberE164 => (is => 'ro', isa => 'Str');
  has CleansedPhoneNumberNational => (is => 'ro', isa => 'Str');
  has Country => (is => 'ro', isa => 'Str');
  has CountryCodeIso2 => (is => 'ro', isa => 'Str');
  has CountryCodeNumeric => (is => 'ro', isa => 'Str');
  has County => (is => 'ro', isa => 'Str');
  has OriginalCountryCodeIso2 => (is => 'ro', isa => 'Str');
  has OriginalPhoneNumber => (is => 'ro', isa => 'Str');
  has PhoneType => (is => 'ro', isa => 'Str');
  has PhoneTypeCode => (is => 'ro', isa => 'Int');
  has Timezone => (is => 'ro', isa => 'Str');
  has ZipCode => (is => 'ro', isa => 'Str');

<<<<<<< HEAD
  has _request_id => (is => 'ro', isa => 'Str');
=======
>>>>>>> 186ed52fd2853f25b0e1410d04060db03e2f042c
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::NumberValidateResponse

=head1 ATTRIBUTES


=head2 Carrier => Str

The carrier or service provider that the phone number is currently
registered with.


=head2 City => Str

The name of the city where the phone number was originally registered.


=head2 CleansedPhoneNumberE164 => Str

The cleansed phone number, in E.164 format, for the location where the
phone number was originally registered.


=head2 CleansedPhoneNumberNational => Str

The cleansed phone number, in the format for the location where the
phone number was originally registered.


=head2 Country => Str

The name of the country or region where the phone number was originally
registered.


=head2 CountryCodeIso2 => Str

The two-character code, in ISO 3166-1 alpha-2 format, for the country
or region where the phone number was originally registered.


=head2 CountryCodeNumeric => Str

The numeric code for the country or region where the phone number was
originally registered.


=head2 County => Str

The name of the county where the phone number was originally
registered.


=head2 OriginalCountryCodeIso2 => Str

The two-character code, in ISO 3166-1 alpha-2 format, that was sent in
the request body.


=head2 OriginalPhoneNumber => Str

The phone number that was sent in the request body.


=head2 PhoneType => Str

The description of the phone type. Valid values are: MOBILE, LANDLINE,
VOIP, INVALID, PREPAID, and OTHER.


=head2 PhoneTypeCode => Int

The phone type, represented by an integer. Valid values are: 0
(mobile), 1 (landline), 2 (VoIP), 3 (invalid), 4 (other), and 5
(prepaid).


=head2 Timezone => Str

The time zone for the location where the phone number was originally
registered.


=head2 ZipCode => Str

The postal or ZIP code for the location where the phone number was
originally registered.


=head2 _request_id => Str


=cut

