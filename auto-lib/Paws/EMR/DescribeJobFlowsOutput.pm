
package Paws::EMR::DescribeJobFlowsOutput;
  use Moose;
  has JobFlows => (is => 'ro', isa => 'ArrayRef[Paws::EMR::JobFlowDetail]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::EMR::DescribeJobFlowsOutput

=head1 ATTRIBUTES


=head2 JobFlows => ArrayRef[L<Paws::EMR::JobFlowDetail>]

A list of job flows matching the parameters supplied.


=head2 _request_id => Str


=cut

1;