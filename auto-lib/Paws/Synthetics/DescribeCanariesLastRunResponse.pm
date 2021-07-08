
package Paws::Synthetics::DescribeCanariesLastRunResponse;
  use Moose;
  has CanariesLastRun => (is => 'ro', isa => 'ArrayRef[Paws::Synthetics::CanaryLastRun]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::DescribeCanariesLastRunResponse

=head1 ATTRIBUTES


=head2 CanariesLastRun => ArrayRef[L<Paws::Synthetics::CanaryLastRun>]

An array that contains the information from the most recent run of each
canary.


=head2 NextToken => Str

A token that indicates that there is more data available. You can use
this token in a subsequent C<DescribeCanariesLastRun> operation to
retrieve the next set of results.


=head2 _request_id => Str


=cut

