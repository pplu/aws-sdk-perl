
package Paws::OpsWorks::DescribeStackSummaryResult;
  use Moose;
  has StackSummary => (is => 'ro', isa => 'Paws::OpsWorks::StackSummary');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::DescribeStackSummaryResult

=head1 ATTRIBUTES


=head2 StackSummary => L<Paws::OpsWorks::StackSummary>

A C<StackSummary> object that contains the results.


=head2 _request_id => Str


=cut

1;