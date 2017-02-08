
package Paws::Batch::DescribeComputeEnvironmentsResponse;
  use Moose;
  has ComputeEnvironments => (is => 'ro', isa => 'ArrayRef[Paws::Batch::ComputeEnvironmentDetail]', traits => ['NameInRequest'], request_name => 'computeEnvironments');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::DescribeComputeEnvironmentsResponse

=head1 ATTRIBUTES


=head2 ComputeEnvironments => ArrayRef[L<Paws::Batch::ComputeEnvironmentDetail>]

The list of compute environments.


=head2 NextToken => Str

The C<nextToken> value to include in a future
C<DescribeComputeEnvironments> request. When the results of a
C<DescribeJobDefinitions> request exceed C<maxResults>, this value can
be used to retrieve the next page of results. This value is C<null>
when there are no more results to return.


=head2 _request_id => Str


=cut

