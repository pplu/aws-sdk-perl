
package Paws::DocDB::ModifyEventSubscriptionResult;
  use Moose;
  has EventSubscription => (is => 'ro', isa => 'Paws::DocDB::EventSubscription');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::ModifyEventSubscriptionResult

=head1 ATTRIBUTES


=head2 EventSubscription => L<Paws::DocDB::EventSubscription>




=head2 _request_id => Str


=cut

