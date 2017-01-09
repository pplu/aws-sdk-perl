
package Paws::RedShift::CreateEventSubscriptionResult;
  use Moose;
  has EventSubscription => (is => 'ro', isa => 'Paws::RedShift::EventSubscription');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CreateEventSubscriptionResult

=head1 ATTRIBUTES


=head2 EventSubscription => L<Paws::RedShift::EventSubscription>




=head2 _request_id => Str


=cut

