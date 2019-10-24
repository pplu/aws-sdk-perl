# Generated from default/object.tt
package Paws::CloudWatchLogs::LogStream;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::CloudWatchLogs::Types qw//;
  has Arn => (is => 'ro', isa => Str);
  has CreationTime => (is => 'ro', isa => Int);
  has FirstEventTimestamp => (is => 'ro', isa => Int);
  has LastEventTimestamp => (is => 'ro', isa => Int);
  has LastIngestionTime => (is => 'ro', isa => Int);
  has LogStreamName => (is => 'ro', isa => Str);
  has StoredBytes => (is => 'ro', isa => Int);
  has UploadSequenceToken => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreationTime' => {
                                   'type' => 'Int'
                                 },
               'LastEventTimestamp' => {
                                         'type' => 'Int'
                                       },
               'LogStreamName' => {
                                    'type' => 'Str'
                                  },
               'StoredBytes' => {
                                  'type' => 'Int'
                                },
               'UploadSequenceToken' => {
                                          'type' => 'Str'
                                        },
               'LastIngestionTime' => {
                                        'type' => 'Int'
                                      },
               'Arn' => {
                          'type' => 'Str'
                        },
               'FirstEventTimestamp' => {
                                          'type' => 'Int'
                                        }
             },
  'NameInRequest' => {
                       'CreationTime' => 'creationTime',
                       'LastEventTimestamp' => 'lastEventTimestamp',
                       'LogStreamName' => 'logStreamName',
                       'StoredBytes' => 'storedBytes',
                       'UploadSequenceToken' => 'uploadSequenceToken',
                       'LastIngestionTime' => 'lastIngestionTime',
                       'Arn' => 'arn',
                       'FirstEventTimestamp' => 'firstEventTimestamp'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::LogStream

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::LogStream object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UploadSequenceToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::LogStream object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Represents a log stream, which is a sequence of log events from a
single emitter of logs.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the log stream.


=head2 CreationTime => Int

  The creation time of the stream, expressed as the number of
milliseconds after Jan 1, 1970 00:00:00 UTC.


=head2 FirstEventTimestamp => Int

  The time of the first event, expressed as the number of milliseconds
after Jan 1, 1970 00:00:00 UTC.


=head2 LastEventTimestamp => Int

  The time of the most recent log event in the log stream in CloudWatch
Logs. This number is expressed as the number of milliseconds after Jan
1, 1970 00:00:00 UTC. The C<lastEventTime> value updates on an eventual
consistency basis. It typically updates in less than an hour from
ingestion, but may take longer in some rare situations.


=head2 LastIngestionTime => Int

  The ingestion time, expressed as the number of milliseconds after Jan
1, 1970 00:00:00 UTC.


=head2 LogStreamName => Str

  The name of the log stream.


=head2 StoredBytes => Int

  The number of bytes stored.

B<IMPORTANT:> Starting on June 17, 2019, this parameter will be
deprecated for log streams, and will be reported as zero. This change
applies only to log streams. The C<storedBytes> parameter for log
groups is not affected.


=head2 UploadSequenceToken => Str

  The sequence token.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

