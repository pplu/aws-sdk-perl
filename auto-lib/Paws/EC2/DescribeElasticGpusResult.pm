
package Paws::EC2::DescribeElasticGpusResult;
  use Moose;
  has ElasticGpuSet => (is => 'ro', isa => 'ArrayRef[Paws::EC2::ElasticGpus]', request_name => 'elasticGpuSet', traits => ['NameInRequest',]);
  has MaxResults => (is => 'ro', isa => 'Int', request_name => 'maxResults', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeElasticGpusResult

=head1 ATTRIBUTES


=head2 ElasticGpuSet => ArrayRef[L<Paws::EC2::ElasticGpus>]

Information about the Elastic Graphics accelerators.


=head2 MaxResults => Int

The total number of items to return. If the total number of items
available is more than the value specified in max-items then a
Next-Token will be provided in the output that you can use to resume
pagination.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

