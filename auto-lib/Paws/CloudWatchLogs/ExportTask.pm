package Paws::CloudWatchLogs::ExportTask;
  use Moose;
  has Destination => (is => 'ro', isa => 'Str', request_name => 'destination', traits => ['NameInRequest']);
  has DestinationPrefix => (is => 'ro', isa => 'Str', request_name => 'destinationPrefix', traits => ['NameInRequest']);
  has ExecutionInfo => (is => 'ro', isa => 'Paws::CloudWatchLogs::ExportTaskExecutionInfo', request_name => 'executionInfo', traits => ['NameInRequest']);
  has From => (is => 'ro', isa => 'Int', request_name => 'from', traits => ['NameInRequest']);
  has LogGroupName => (is => 'ro', isa => 'Str', request_name => 'logGroupName', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Paws::CloudWatchLogs::ExportTaskStatus', request_name => 'status', traits => ['NameInRequest']);
  has TaskId => (is => 'ro', isa => 'Str', request_name => 'taskId', traits => ['NameInRequest']);
  has TaskName => (is => 'ro', isa => 'Str', request_name => 'taskName', traits => ['NameInRequest']);
  has To => (is => 'ro', isa => 'Int', request_name => 'to', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::ExportTask

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::ExportTask object:

  $service_obj->Method(Att1 => { Destination => $value, ..., To => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::ExportTask object:

  $result = $service_obj->Method(...);
  $result->Att1->Destination

=head1 DESCRIPTION

Represents an export task.

=head1 ATTRIBUTES


=head2 Destination => Str

  The name of Amazon S3 bucket to which the log data was exported.


=head2 DestinationPrefix => Str

  The prefix that was used as the start of Amazon S3 key for every object
exported.


=head2 ExecutionInfo => L<Paws::CloudWatchLogs::ExportTaskExecutionInfo>

  Execution info about the export task.


=head2 From => Int

  The start time, expressed as the number of milliseconds after Jan 1,
1970 00:00:00 UTC. Events with a timestamp before this time are not
exported.


=head2 LogGroupName => Str

  The name of the log group from which logs data was exported.


=head2 Status => L<Paws::CloudWatchLogs::ExportTaskStatus>

  The status of the export task.


=head2 TaskId => Str

  The ID of the export task.


=head2 TaskName => Str

  The name of the export task.


=head2 To => Int

  The end time, expressed as the number of milliseconds after Jan 1, 1970
00:00:00 UTC. Events with a timestamp later than this time are not
exported.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

