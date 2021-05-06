
package Paws::Rekognition::DescribeStreamProcessorResponse;
  use Moose;
  has CreationTimestamp => (is => 'ro', isa => 'Str');
  has Input => (is => 'ro', isa => 'Paws::Rekognition::StreamProcessorInput');
  has LastUpdateTimestamp => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Output => (is => 'ro', isa => 'Paws::Rekognition::StreamProcessorOutput');
  has RoleArn => (is => 'ro', isa => 'Str');
  has Settings => (is => 'ro', isa => 'Paws::Rekognition::StreamProcessorSettings');
  has Status => (is => 'ro', isa => 'Str');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has StreamProcessorArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DescribeStreamProcessorResponse

=head1 ATTRIBUTES


=head2 CreationTimestamp => Str

Date and time the stream processor was created


=head2 Input => L<Paws::Rekognition::StreamProcessorInput>

Kinesis video stream that provides the source streaming video.


=head2 LastUpdateTimestamp => Str

The time, in Unix format, the stream processor was last updated. For
example, when the stream processor moves from a running state to a
failed state, or when the user starts or stops the stream processor.


=head2 Name => Str

Name of the stream processor.


=head2 Output => L<Paws::Rekognition::StreamProcessorOutput>

Kinesis data stream to which Amazon Rekognition Video puts the analysis
results.


=head2 RoleArn => Str

ARN of the IAM role that allows access to the stream processor.


=head2 Settings => L<Paws::Rekognition::StreamProcessorSettings>

Face recognition input parameters that are being used by the stream
processor. Includes the collection to use for face recognition and the
face attributes to detect.


=head2 Status => Str

Current status of the stream processor.

Valid values are: C<"STOPPED">, C<"STARTING">, C<"RUNNING">, C<"FAILED">, C<"STOPPING">
=head2 StatusMessage => Str

Detailed status message about the stream processor.


=head2 StreamProcessorArn => Str

ARN of the stream processor.


=head2 _request_id => Str


=cut

1;