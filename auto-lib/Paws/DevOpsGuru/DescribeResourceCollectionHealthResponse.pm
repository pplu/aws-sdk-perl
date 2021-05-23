
package Paws::DevOpsGuru::DescribeResourceCollectionHealthResponse;
  use Moose;
  has CloudFormation => (is => 'ro', isa => 'ArrayRef[Paws::DevOpsGuru::CloudFormationHealth]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has Service => (is => 'ro', isa => 'ArrayRef[Paws::DevOpsGuru::ServiceHealth]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DevOpsGuru::DescribeResourceCollectionHealthResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CloudFormation => ArrayRef[L<Paws::DevOpsGuru::CloudFormationHealth>]

The returned C<CloudFormationHealthOverview> object that contains an
C<InsightHealthOverview> object with the requested system health
information.


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 Service => ArrayRef[L<Paws::DevOpsGuru::ServiceHealth>]

An array of C<ServiceHealth> objects that describes the health of the
AWS services associated with the resources in the collection.


=head2 _request_id => Str


=cut

