
package Paws::EC2::CreateInstanceExportTaskResult;
  use Moose;
  has ExportTask => (is => 'ro', isa => 'Paws::EC2::ExportTask', request_name => 'exportTask', traits => ['NameInRequest',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateInstanceExportTaskResult

=head1 ATTRIBUTES


=head2 ExportTask => L<Paws::EC2::ExportTask>

Information about the instance export task.




=cut

