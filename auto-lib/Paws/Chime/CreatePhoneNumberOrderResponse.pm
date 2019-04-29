
package Paws::Chime::CreatePhoneNumberOrderResponse;
  use Moose;
  has PhoneNumberOrder => (is => 'ro', isa => 'Paws::Chime::PhoneNumberOrder');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::CreatePhoneNumberOrderResponse

=head1 ATTRIBUTES


=head2 PhoneNumberOrder => L<Paws::Chime::PhoneNumberOrder>

The phone number order details.


=head2 _request_id => Str


=cut

