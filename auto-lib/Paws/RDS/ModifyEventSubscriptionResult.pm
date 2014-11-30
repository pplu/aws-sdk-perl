
package Paws::RDS::ModifyEventSubscriptionResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has EventSubscription => (is => 'ro', isa => 'Paws::RDS::EventSubscription');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyEventSubscriptionResult

=head1 ATTRIBUTES

=head2 EventSubscription => Paws::RDS::EventSubscription

  


=cut

