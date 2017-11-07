package Paws::OpsWorks::CloudWatchLogsLogStream;
  use Moose;
  has BatchCount => (is => 'ro', isa => 'Int');
  has BatchSize => (is => 'ro', isa => 'Int');
  has BufferDuration => (is => 'ro', isa => 'Int');
  has DatetimeFormat => (is => 'ro', isa => 'Str');
  has Encoding => (is => 'ro', isa => 'Str');
  has File => (is => 'ro', isa => 'Str');
  has FileFingerprintLines => (is => 'ro', isa => 'Str');
  has InitialPosition => (is => 'ro', isa => 'Str');
  has LogGroupName => (is => 'ro', isa => 'Str');
  has MultiLineStartPattern => (is => 'ro', isa => 'Str');
  has TimeZone => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::CloudWatchLogsLogStream

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::OpsWorks::CloudWatchLogsLogStream object:

  $service_obj->Method(Att1 => { BatchCount => $value, ..., TimeZone => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::OpsWorks::CloudWatchLogsLogStream object:

  $result = $service_obj->Method(...);
  $result->Att1->BatchCount

=head1 DESCRIPTION

Describes the Amazon CloudWatch logs configuration for a layer. For
detailed information about members of this data type, see the
CloudWatch Logs Agent Reference
(http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html).

=head1 ATTRIBUTES


=head2 BatchCount => Int

  Specifies the max number of log events in a batch, up to 10000. The
default value is 1000.


=head2 BatchSize => Int

  Specifies the maximum size of log events in a batch, in bytes, up to
1048576 bytes. The default value is 32768 bytes. This size is
calculated as the sum of all event messages in UTF-8, plus 26 bytes for
each log event.


=head2 BufferDuration => Int

  Specifies the time duration for the batching of log events. The minimum
value is 5000ms and default value is 5000ms.


=head2 DatetimeFormat => Str

  Specifies how the time stamp is extracted from logs. For more
information, see the CloudWatch Logs Agent Reference
(http://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/AgentReference.html).


=head2 Encoding => Str

  Specifies the encoding of the log file so that the file can be read
correctly. The default is C<utf_8>. Encodings supported by Python
C<codecs.decode()> can be used here.


=head2 File => Str

  Specifies log files that you want to push to CloudWatch Logs.

C<File> can point to a specific file or multiple files (by using wild
card characters such as C</var/log/system.log*>). Only the latest file
is pushed to CloudWatch Logs, based on file modification time. We
recommend that you use wild card characters to specify a series of
files of the same type, such as C<access_log.2014-06-01-01>,
C<access_log.2014-06-01-02>, and so on by using a pattern like
C<access_log.*>. Don't use a wildcard to match multiple file types,
such as C<access_log_80> and C<access_log_443>. To specify multiple,
different file types, add another log stream entry to the configuration
file, so that each log file type is stored in a different log group.

Zipped files are not supported.


=head2 FileFingerprintLines => Str

  Specifies the range of lines for identifying a file. The valid values
are one number, or two dash-delimited numbers, such as '1', '2-5'. The
default value is '1', meaning the first line is used to calculate the
fingerprint. Fingerprint lines are not sent to CloudWatch Logs unless
all specified lines are available.


=head2 InitialPosition => Str

  Specifies where to start to read data (start_of_file or end_of_file).
The default is start_of_file. This setting is only used if there is no
state persisted for that log stream.


=head2 LogGroupName => Str

  Specifies the destination log group. A log group is created
automatically if it doesn't already exist. Log group names can be
between 1 and 512 characters long. Allowed characters include a-z, A-Z,
0-9, '_' (underscore), '-' (hyphen), '/' (forward slash), and '.'
(period).


=head2 MultiLineStartPattern => Str

  Specifies the pattern for identifying the start of a log message.


=head2 TimeZone => Str

  Specifies the time zone of log event time stamps.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

