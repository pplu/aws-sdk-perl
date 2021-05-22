
package Paws::CostExplorer::CreateAnomalySubscriptionResponse;
  use Moose;
  has SubscriptionArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::CreateAnomalySubscriptionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SubscriptionArn => Str

The unique identifier of your newly created cost anomaly subscription.


=head2 _request_id => Str


=cut

1;