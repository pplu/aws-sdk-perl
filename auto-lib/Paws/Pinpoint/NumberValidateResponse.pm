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
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::NumberValidateResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::NumberValidateResponse object:

  $service_obj->Method(Att1 => { Carrier => $value, ..., ZipCode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::NumberValidateResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->Carrier

=head1 DESCRIPTION

Phone Number Validate response.

=head1 ATTRIBUTES


=head2 Carrier => Str

  The carrier or servive provider that the phone number is currently
registered with.


=head2 City => Str

  The city where the phone number was originally registered.


=head2 CleansedPhoneNumberE164 => Str

  The cleansed phone number, shown in E.164 format.


=head2 CleansedPhoneNumberNational => Str

  The cleansed phone number, shown in the local phone number format.


=head2 Country => Str

  The country or region where the phone number was originally registered.


=head2 CountryCodeIso2 => Str

  The two-character ISO code for the country or region where the phone
number was originally registered.


=head2 CountryCodeNumeric => Str

  The numeric code for the country or region where the phone number was
originally registered.


=head2 County => Str

  The county where the phone number was originally registered.


=head2 OriginalCountryCodeIso2 => Str

  The two-character code (in ISO 3166-1 alpha-2 format) for the country
or region in the request body.


=head2 OriginalPhoneNumber => Str

  The phone number that you included in the request body.


=head2 PhoneType => Str

  A description of the phone type. Possible values are MOBILE, LANDLINE,
VOIP, INVALID, PREPAID, and OTHER.


=head2 PhoneTypeCode => Int

  The phone type, represented by an integer. Possible values include 0
(MOBILE), 1 (LANDLINE), 2 (VOIP), 3 (INVALID), 4 (OTHER), and 5
(PREPAID).


=head2 Timezone => Str

  The time zone for the location where the phone number was originally
registered.


=head2 ZipCode => Str

  The postal code for the location where the phone number was originally
registered.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

