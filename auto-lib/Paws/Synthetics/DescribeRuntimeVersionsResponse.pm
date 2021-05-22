
package Paws::Synthetics::DescribeRuntimeVersionsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RuntimeVersions => (is => 'ro', isa => 'ArrayRef[Paws::Synthetics::RuntimeVersion]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::DescribeRuntimeVersionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that indicates that there is more data available. You can use
this token in a subsequent C<DescribeRuntimeVersions> operation to
retrieve the next set of results.


=head2 RuntimeVersions => ArrayRef[L<Paws::Synthetics::RuntimeVersion>]

An array of objects that display the details about each Synthetics
canary runtime version.


=head2 _request_id => Str


=cut

