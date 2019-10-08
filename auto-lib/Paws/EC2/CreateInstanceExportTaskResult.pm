
package Paws::EC2::CreateInstanceExportTaskResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_ExportTask/;
  has ExportTask => (is => 'ro', isa => EC2_ExportTask);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ExportTask' => {
                                 'class' => 'Paws::EC2::ExportTask',
                                 'type' => 'EC2_ExportTask'
                               }
             },
  'NameInRequest' => {
                       'ExportTask' => 'exportTask'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateInstanceExportTaskResult

=head1 ATTRIBUTES


=head2 ExportTask => EC2_ExportTask

Information about the instance export task.


=head2 _request_id => Str


=cut

