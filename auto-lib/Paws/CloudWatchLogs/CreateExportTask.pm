# Generated from json/callargs_class.tt

package Paws::CloudWatchLogs::CreateExportTask;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::CloudWatchLogs::Types qw//;
  has Destination => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has DestinationPrefix => (is => 'ro', isa => Str, predicate => 1);
  has From => (is => 'ro', isa => Int, required => 1, predicate => 1);
  has LogGroupName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has LogStreamNamePrefix => (is => 'ro', isa => Str, predicate => 1);
  has TaskName => (is => 'ro', isa => Str, predicate => 1);
  has To => (is => 'ro', isa => Int, required => 1, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateExportTask');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::CloudWatchLogs::CreateExportTaskResponse');
  class_has _result_key => (isa => Str, is => 'ro');

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'LogGroupName' => {
                                   'type' => 'Str'
                                 },
               'DestinationPrefix' => {
                                        'type' => 'Str'
                                      },
               'To' => {
                         'type' => 'Int'
                       },
               'TaskName' => {
                               'type' => 'Str'
                             },
               'Destination' => {
                                  'type' => 'Str'
                                },
               'LogStreamNamePrefix' => {
                                          'type' => 'Str'
                                        },
               'From' => {
                           'type' => 'Int'
                         }
             },
  'NameInRequest' => {
                       'LogGroupName' => 'logGroupName',
                       'DestinationPrefix' => 'destinationPrefix',
                       'To' => 'to',
                       'TaskName' => 'taskName',
                       'Destination' => 'destination',
                       'LogStreamNamePrefix' => 'logStreamNamePrefix',
                       'From' => 'from'
                     },
  'IsRequired' => {
                    'LogGroupName' => 1,
                    'To' => 1,
                    'Destination' => 1,
                    'From' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::CreateExportTask - Arguments for method CreateExportTask on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateExportTask on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method CreateExportTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateExportTask.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    my $CreateExportTaskResponse = $logs->CreateExportTask(
      Destination         => 'MyExportDestinationBucket',
      From                => 1,
      LogGroupName        => 'MyLogGroupName',
      To                  => 1,
      DestinationPrefix   => 'MyExportDestinationPrefix',    # OPTIONAL
      LogStreamNamePrefix => 'MyLogStreamName',              # OPTIONAL
      TaskName            => 'MyExportTaskName',             # OPTIONAL
    );

    # Results:
    my $TaskId = $CreateExportTaskResponse->TaskId;

    # Returns a L<Paws::CloudWatchLogs::CreateExportTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/CreateExportTask>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Destination => Str

The name of S3 bucket for the exported log data. The bucket must be in
the same AWS region.



=head2 DestinationPrefix => Str

The prefix used as the start of the key for every object exported. If
you don't specify a value, the default is C<exportedlogs>.



=head2 B<REQUIRED> From => Int

The start time of the range for the request, expressed as the number of
milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a timestamp
earlier than this time are not exported.



=head2 B<REQUIRED> LogGroupName => Str

The name of the log group.



=head2 LogStreamNamePrefix => Str

Export only log streams that match the provided prefix. If you don't
specify a value, no prefix filter is applied.



=head2 TaskName => Str

The name of the export task.



=head2 B<REQUIRED> To => Int

The end time of the range for the request, expressed as the number of
milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a timestamp
later than this time are not exported.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateExportTask in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

