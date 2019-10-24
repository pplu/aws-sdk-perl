
package Paws::EC2::DescribeExportTasksResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_ExportTask/;
  has ExportTasks => (is => 'ro', isa => ArrayRef[EC2_ExportTask]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ExportTasks' => {
                                  'class' => 'Paws::EC2::ExportTask',
                                  'type' => 'ArrayRef[EC2_ExportTask]'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ExportTasks' => 'exportTaskSet'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeExportTasksResult

=head1 ATTRIBUTES


=head2 ExportTasks => ArrayRef[EC2_ExportTask]

Information about the export tasks.


=head2 _request_id => Str


=cut

