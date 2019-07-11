
package Paws::Chime::SearchAvailablePhoneNumbersResponse;
  use Moose;
  has E164PhoneNumbers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::SearchAvailablePhoneNumbersResponse

=head1 ATTRIBUTES


=head2 E164PhoneNumbers => ArrayRef[Str|Undef]

List of phone numbers, in E.164 format.


=head2 _request_id => Str


=cut

