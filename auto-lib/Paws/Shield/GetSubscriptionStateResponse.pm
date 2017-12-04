
package Paws::Shield::GetSubscriptionStateResponse;
  use Moose;
  has SubscriptionState => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Shield::GetSubscriptionStateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SubscriptionState => Str

The status of the subscription.

Valid values are: C<"ACTIVE">, C<"INACTIVE">
=head2 _request_id => Str


=cut

1;