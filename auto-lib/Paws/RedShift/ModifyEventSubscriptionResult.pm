
package Paws::RedShift::ModifyEventSubscriptionResult;
  use Moose;
  has EventSubscription => (is => 'ro', isa => 'Paws::RedShift::EventSubscription');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ModifyEventSubscriptionResult

=head1 ATTRIBUTES


=head2 EventSubscription => L<Paws::RedShift::EventSubscription>






=cut

