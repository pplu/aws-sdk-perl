package Paws::CloudWatchLogs::ExportTask;
  use Moose;
  has destination => (is => 'ro', isa => 'Str');
  has destinationPrefix => (is => 'ro', isa => 'Str');
  has executionInfo => (is => 'ro', isa => 'Paws::CloudWatchLogs::ExportTaskExecutionInfo');
  has from => (is => 'ro', isa => 'Int');
  has logGroupName => (is => 'ro', isa => 'Str');
  has status => (is => 'ro', isa => 'Paws::CloudWatchLogs::ExportTaskStatus');
  has taskId => (is => 'ro', isa => 'Str');
  has taskName => (is => 'ro', isa => 'Str');
  has to => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::ExportTask

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::ExportTask object:

  $service_obj->Method(Att1 => { destination => $value, ..., to => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::ExportTask object:

  $result = $service_obj->Method(...);
  $result->Att1->destination

=head1 ATTRIBUTES

=head2 destination => Str

  Name of Amazon S3 bucket to which the log data was exported.

=head2 destinationPrefix => Str

  Prefix that was used as the start of Amazon S3 key for every object
exported.

=head2 executionInfo => Paws::CloudWatchLogs::ExportTaskExecutionInfo

  Execution info about the export task.

=head2 from => Int

  A unix timestamp indicating the start time of the range for the
request. Events with a timestamp prior to this time were not exported.

=head2 logGroupName => Str

  The name of the log group from which logs data was exported.

=head2 status => Paws::CloudWatchLogs::ExportTaskStatus

  Status of the export task.

=head2 taskId => Str

  Id of the export task.

=head2 taskName => Str

  The name of the export task.

=head2 to => Int

  A unix timestamp indicating the end time of the range for the request.
Events with a timestamp later than this time were not exported.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

