
package Paws::Neptune::RemoveSourceIdentifierFromSubscriptionResult;
  use Moose;
  has EventSubscription => (is => 'ro', isa => 'Paws::Neptune::EventSubscription');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::RemoveSourceIdentifierFromSubscriptionResult

=head1 ATTRIBUTES


=head2 EventSubscription => L<Paws::Neptune::EventSubscription>




=head2 _request_id => Str


=cut

