
package Paws::Discovery::DescribeExportConfigurationsResponse;
  use Moose;
  has ExportsInfo => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::ExportInfo]', traits => ['Unwrapped'], xmlname => 'exportsInfo' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::DescribeExportConfigurationsResponse

=head1 ATTRIBUTES


=head2 ExportsInfo => ArrayRef[L<Paws::Discovery::ExportInfo>]

Returns export details. When the status is complete, the response
includes a URL for an Amazon S3 bucket where you can view the data in a
CSV file.


=head2 NextToken => Str

A token to get the next set of results. For example, if you specified
100 IDs for C<DescribeExportConfigurationsRequest$exportIds> but set
C<DescribeExportConfigurationsRequest$maxResults> to 10, you will get
results in a set of 10. Use the token in the query to get the next set
of 10.


=head2 _request_id => Str


=cut

1;