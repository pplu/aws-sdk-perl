
package Paws::DMS::ModifyEventSubscriptionResponse;
  use Moose;
  has EventSubscription => (is => 'ro', isa => 'Paws::DMS::EventSubscription');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::ModifyEventSubscriptionResponse

=head1 ATTRIBUTES


=head2 EventSubscription => L<Paws::DMS::EventSubscription>

The modified event subscription.


=head2 _request_id => Str


=cut

1;