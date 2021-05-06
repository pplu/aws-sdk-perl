
package Paws::RDS::AddSourceIdentifierToSubscriptionResult;
  use Moose;
  has EventSubscription => (is => 'ro', isa => 'Paws::RDS::EventSubscription');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::AddSourceIdentifierToSubscriptionResult

=head1 ATTRIBUTES


=head2 EventSubscription => L<Paws::RDS::EventSubscription>




=head2 _request_id => Str


=cut

