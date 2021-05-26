
package Paws::RDS::ExportTasksMessage;
  use Moose;
  has ExportTasks => (is => 'ro', isa => 'ArrayRef[Paws::RDS::ExportTask]', request_name => 'ExportTask', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ExportTasksMessage

=head1 ATTRIBUTES


=head2 ExportTasks => ArrayRef[L<Paws::RDS::ExportTask>]

Information about an export of a snapshot to Amazon S3.


=head2 Marker => Str

A pagination token that can be used in a later C<DescribeExportTasks>
request. A marker is used for pagination to identify the location to
begin output for the next response of C<DescribeExportTasks>.


=head2 _request_id => Str


=cut

