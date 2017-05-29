
package Paws::DMS::DeleteEventSubscriptionResponse;
  use Moose;
  has EventSubscription => (is => 'ro', isa => 'Paws::DMS::EventSubscription');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DeleteEventSubscriptionResponse

=head1 ATTRIBUTES


=head2 EventSubscription => L<Paws::DMS::EventSubscription>

The event subscription that was deleted.


=head2 _request_id => Str


=cut

1;