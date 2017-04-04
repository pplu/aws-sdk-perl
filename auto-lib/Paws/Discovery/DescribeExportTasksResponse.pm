
package Paws::Discovery::DescribeExportTasksResponse;
  use Moose;
  has ExportsInfo => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::ExportInfo]', traits => ['NameInRequest'], request_name => 'exportsInfo' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::DescribeExportTasksResponse

=head1 ATTRIBUTES


=head2 ExportsInfo => ArrayRef[L<Paws::Discovery::ExportInfo>]

Contains one or more sets of export request details. When the status of
a request is C<SUCCEEDED>, the response includes a URL for an Amazon S3
bucket where you can view the data in a CSV file.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<DescribeExportTasks>
request. When the results of a C<DescribeExportTasks> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is null when there are no more results to return.


=head2 _request_id => Str


=cut

1;