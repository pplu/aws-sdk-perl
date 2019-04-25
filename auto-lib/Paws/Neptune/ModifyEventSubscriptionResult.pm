
package Paws::Neptune::ModifyEventSubscriptionResult;
  use Moose;
  has EventSubscription => (is => 'ro', isa => 'Paws::Neptune::EventSubscription');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::ModifyEventSubscriptionResult

=head1 ATTRIBUTES


=head2 EventSubscription => L<Paws::Neptune::EventSubscription>




=head2 _request_id => Str


=cut

