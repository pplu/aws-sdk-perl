
package Paws::CostExplorer::UpdateAnomalySubscriptionResponse;
  use Moose;
  has SubscriptionArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::UpdateAnomalySubscriptionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SubscriptionArn => Str

A cost anomaly subscription ARN.


=head2 _request_id => Str


=cut

1;