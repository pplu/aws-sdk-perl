
package Paws::Pinpoint::EventStream;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', required => 1);
  has DestinationStreamArn => (is => 'ro', isa => 'Str', required => 1);
  has ExternalId => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has LastUpdatedBy => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::EventStream

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application to publish event data for.


=head2 B<REQUIRED> DestinationStreamArn => Str

The Amazon Resource Name (ARN) of the Amazon Kinesis data stream or
Amazon Kinesis Data Firehose delivery stream to publish event data to.

For a Kinesis data stream, the ARN format is:
arn:aws:kinesis:region:account-id:stream/stream_name

For a Kinesis Data Firehose delivery stream, the ARN format is:
arn:aws:firehose:region:account-id:deliverystream/stream_name


=head2 ExternalId => Str

(Deprecated) Your AWS account ID, which you assigned to an external ID
key in an IAM trust policy. Amazon Pinpoint previously used this value
to assume an IAM role when publishing event data, but we removed this
requirement. We don't recommend use of external IDs for IAM roles that
are assumed by Amazon Pinpoint.


=head2 LastModifiedDate => Str

The date, in ISO 8601 format, when the event stream was last modified.


=head2 LastUpdatedBy => Str

The IAM user who last modified the event stream.


=head2 B<REQUIRED> RoleArn => Str

The AWS Identity and Access Management (IAM) role that authorizes
Amazon Pinpoint to publish event data to the stream in your AWS
account.


=head2 _request_id => Str


=cut

