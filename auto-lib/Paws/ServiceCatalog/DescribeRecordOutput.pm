
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

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 RecordDetail => L<Paws::ServiceCatalog::RecordDetail>

Information about the product.


=head2 RecordOutputs => ArrayRef[L<Paws::ServiceCatalog::RecordOutput>]

Information about the product created as the result of a request. For
example, the output for a CloudFormation-backed product that creates an
S3 bucket would include the S3 bucket URL.


=head2 _request_id => Str


=cut

1;