
package Paws::Chime::ListPhoneNumberOrdersResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has PhoneNumberOrders => (is => 'ro', isa => 'ArrayRef[Paws::Chime::PhoneNumberOrder]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListPhoneNumberOrdersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results.


=head2 PhoneNumberOrders => ArrayRef[L<Paws::Chime::PhoneNumberOrder>]

The phone number order details.


=head2 _request_id => Str


=cut

