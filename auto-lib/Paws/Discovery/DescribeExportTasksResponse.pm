# Generated from json/callresult_class.tt

package Paws::Discovery::DescribeExportTasksResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Discovery::Types qw/Discovery_ExportInfo/;
  has ExportsInfo => (is => 'ro', isa => ArrayRef[Discovery_ExportInfo]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ExportsInfo' => 'exportsInfo'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ExportsInfo' => {
                                  'class' => 'Paws::Discovery::ExportInfo',
                                  'type' => 'ArrayRef[Discovery_ExportInfo]'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Discovery::DescribeExportTasksResponse

=head1 ATTRIBUTES


=head2 ExportsInfo => ArrayRef[Discovery_ExportInfo]

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