package Paws::Firehose::SplunkDestinationUpdate;
  use Moose;
  has CloudWatchLoggingOptions => (is => 'ro', isa => 'Paws::Firehose::CloudWatchLoggingOptions');
  has HECAcknowledgmentTimeoutInSeconds => (is => 'ro', isa => 'Int');
  has HECEndpoint => (is => 'ro', isa => 'Str');
  has HECEndpointType => (is => 'ro', isa => 'Str');
  has HECToken => (is => 'ro', isa => 'Str');
  has ProcessingConfiguration => (is => 'ro', isa => 'Paws::Firehose::ProcessingConfiguration');
  has RetryOptions => (is => 'ro', isa => 'Paws::Firehose::SplunkRetryOptions');
  has S3BackupMode => (is => 'ro', isa => 'Str');
  has S3Update => (is => 'ro', isa => 'Paws::Firehose::S3DestinationUpdate');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Firehose::SplunkDestinationUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Firehose::SplunkDestinationUpdate object:

  $service_obj->Method(Att1 => { CloudWatchLoggingOptions => $value, ..., S3Update => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Firehose::SplunkDestinationUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->CloudWatchLoggingOptions

=head1 DESCRIPTION

Describes an update for a destination in Splunk.

=head1 ATTRIBUTES


=head2 CloudWatchLoggingOptions => L<Paws::Firehose::CloudWatchLoggingOptions>

  The Amazon CloudWatch logging options for your delivery stream.


=head2 HECAcknowledgmentTimeoutInSeconds => Int

  The amount of time that Kinesis Data Firehose waits to receive an
acknowledgment from Splunk after it sends data. At the end of the
timeout period, Kinesis Data Firehose either tries to send the data
again or considers it an error, based on your retry settings.


=head2 HECEndpoint => Str

  The HTTP Event Collector (HEC) endpoint to which Kinesis Data Firehose
sends your data.


=head2 HECEndpointType => Str

  This type can be either "Raw" or "Event."


=head2 HECToken => Str

  A GUID that you obtain from your Splunk cluster when you create a new
HEC endpoint.


=head2 ProcessingConfiguration => L<Paws::Firehose::ProcessingConfiguration>

  The data processing configuration.


=head2 RetryOptions => L<Paws::Firehose::SplunkRetryOptions>

  The retry behavior in case Kinesis Data Firehose is unable to deliver
data to Splunk or if it doesn't receive an acknowledgment of receipt
from Splunk.


=head2 S3BackupMode => Str

  Defines how documents should be delivered to Amazon S3. When set to
C<FailedDocumentsOnly>, Kinesis Data Firehose writes any data that
could not be indexed to the configured Amazon S3 destination. When set
to C<AllDocuments>, Kinesis Data Firehose delivers all incoming records
to Amazon S3, and also writes failed documents to Amazon S3. Default
value is C<FailedDocumentsOnly>.


=head2 S3Update => L<Paws::Firehose::S3DestinationUpdate>

  Your update to the configuration of the backup Amazon S3 location.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Firehose>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

