
package Paws::DevOpsGuru::DescribeAnomalyResponse;
  use Moose;
  has ProactiveAnomaly => (is => 'ro', isa => 'Paws::DevOpsGuru::ProactiveAnomaly');
  has ReactiveAnomaly => (is => 'ro', isa => 'Paws::DevOpsGuru::ReactiveAnomaly');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::DescribeAnomalyResponse

=head1 ATTRIBUTES


=head2 ProactiveAnomaly => L<Paws::DevOpsGuru::ProactiveAnomaly>

A C<ReactiveAnomaly> object that represents the requested anomaly.


=head2 ReactiveAnomaly => L<Paws::DevOpsGuru::ReactiveAnomaly>

A C<ProactiveAnomaly> object that represents the requested anomaly.


=head2 _request_id => Str


=cut

