
package Paws::Chime::ListPhoneNumbersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PhoneNumbers => (is => 'ro', isa => 'ArrayRef[Paws::Chime::PhoneNumber]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListPhoneNumbersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results.


=head2 PhoneNumbers => ArrayRef[L<Paws::Chime::PhoneNumber>]

The phone number details.


=head2 _request_id => Str


=cut

