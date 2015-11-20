package Paws::CloudWatchLogs::ExportTask;
  use Moose;
  has Destination => (is => 'ro', isa => 'Str', xmlname => 'destination', request_name => 'destination', traits => ['Unwrapped','NameInRequest']);
  has DestinationPrefix => (is => 'ro', isa => 'Str', xmlname => 'destinationPrefix', request_name => 'destinationPrefix', traits => ['Unwrapped','NameInRequest']);
  has ExecutionInfo => (is => 'ro', isa => 'Paws::CloudWatchLogs::ExportTaskExecutionInfo', xmlname => 'executionInfo', request_name => 'executionInfo', traits => ['Unwrapped','NameInRequest']);
  has From => (is => 'ro', isa => 'Int', xmlname => 'from', request_name => 'from', traits => ['Unwrapped','NameInRequest']);
  has LogGroupName => (is => 'ro', isa => 'Str', xmlname => 'logGroupName', request_name => 'logGroupName', traits => ['Unwrapped','NameInRequest']);
  has Status => (is => 'ro', isa => 'Paws::CloudWatchLogs::ExportTaskStatus', xmlname => 'status', request_name => 'status', traits => ['Unwrapped','NameInRequest']);
  has TaskId => (is => 'ro', isa => 'Str', xmlname => 'taskId', request_name => 'taskId', traits => ['Unwrapped','NameInRequest']);
  has TaskName => (is => 'ro', isa => 'Str', xmlname => 'taskName', request_name => 'taskName', traits => ['Unwrapped','NameInRequest']);
  has To => (is => 'ro', isa => 'Int', xmlname => 'to', request_name => 'to', traits => ['Unwrapped','NameInRequest']);
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

  Name of Amazon S3 bucket to which the log data was exported.


=head2 DestinationPrefix => Str

  Prefix that was used as the start of Amazon S3 key for every object
exported.


=head2 ExecutionInfo => L<Paws::CloudWatchLogs::ExportTaskExecutionInfo>

  Execution info about the export task.


=head2 From => Int

  A unix timestamp indicating the start time of the range for the
request. Events with a timestamp prior to this time were not exported.


=head2 LogGroupName => Str

  The name of the log group from which logs data was exported.


=head2 Status => L<Paws::CloudWatchLogs::ExportTaskStatus>

  Status of the export task.


=head2 TaskId => Str

  Id of the export task.


=head2 TaskName => Str

  The name of the export task.


=head2 To => Int

  A unix timestamp indicating the end time of the range for the request.
Events with a timestamp later than this time were not exported.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

