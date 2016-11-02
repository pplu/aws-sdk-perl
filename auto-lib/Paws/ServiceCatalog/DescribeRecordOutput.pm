
package Paws::ServiceCatalog::DescribeRecordOutput;
  use Moose;
  has NextPageToken => (is => 'ro', isa => 'Str');
  has RecordDetail => (is => 'ro', isa => 'Paws::ServiceCatalog::RecordDetail');
  has RecordOutputs => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::RecordOutput]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribeRecordOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next page of results for this
operation. If there are no more pages, this value is null.


=head2 RecordDetail => L<Paws::ServiceCatalog::RecordDetail>

Detailed record information for the specified product.


=head2 RecordOutputs => ArrayRef[L<Paws::ServiceCatalog::RecordOutput>]

A list of outputs for the specified Product object created as the
result of a request. For example, a CloudFormation-backed product that
creates an S3 bucket would have an output for the S3 bucket URL.


=head2 _request_id => Str


=cut

1;