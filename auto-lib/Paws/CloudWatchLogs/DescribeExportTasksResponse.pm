# Generated from json/callresult_class.tt

package Paws::CloudWatchLogs::DescribeExportTasksResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudWatchLogs::Types qw/CloudWatchLogs_ExportTask/;
  has ExportTasks => (is => 'ro', isa => ArrayRef[CloudWatchLogs_ExportTask]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ExportTasks' => {
                                  'class' => 'Paws::CloudWatchLogs::ExportTask',
                                  'type' => 'ArrayRef[CloudWatchLogs_ExportTask]'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ExportTasks' => 'exportTasks'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeExportTasksResponse

=head1 ATTRIBUTES


=head2 ExportTasks => ArrayRef[CloudWatchLogs_ExportTask]

The export tasks.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;