
package Paws::Synthetics::GetCanaryRunsResponse;
  use Moose;
  has CanaryRuns => (is => 'ro', isa => 'ArrayRef[Paws::Synthetics::CanaryRun]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::GetCanaryRunsResponse

=head1 ATTRIBUTES


=head2 CanaryRuns => ArrayRef[L<Paws::Synthetics::CanaryRun>]

An array of structures. Each structure contains the details of one of
the retrieved canary runs.


=head2 NextToken => Str

A token that indicates that there is more data available. You can use
this token in a subsequent C<GetCanaryRuns> operation to retrieve the
next set of results.


=head2 _request_id => Str


=cut

