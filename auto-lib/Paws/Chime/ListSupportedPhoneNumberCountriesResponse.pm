
package Paws::Chime::ListSupportedPhoneNumberCountriesResponse;
  use Moose;
  has PhoneNumberCountries => (is => 'ro', isa => 'ArrayRef[Paws::Chime::PhoneNumberCountry]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListSupportedPhoneNumberCountriesResponse

=head1 ATTRIBUTES


=head2 PhoneNumberCountries => ArrayRef[L<Paws::Chime::PhoneNumberCountry>]

The supported phone number countries.


=head2 _request_id => Str


=cut

