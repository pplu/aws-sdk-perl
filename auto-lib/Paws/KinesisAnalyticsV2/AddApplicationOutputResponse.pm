
package Paws::KinesisAnalyticsV2::AddApplicationOutputResponse;
  use Moose;
  has ApplicationARN => (is => 'ro', isa => 'Str');
  has ApplicationVersionId => (is => 'ro', isa => 'Int');
  has OutputDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalyticsV2::OutputDescription]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::AddApplicationOutputResponse

=head1 ATTRIBUTES


=head2 ApplicationARN => Str

The application Amazon Resource Name (ARN).


=head2 ApplicationVersionId => Int

The updated application version ID. Kinesis Data Analytics increments
this ID when the application is updated.


=head2 OutputDescriptions => ArrayRef[L<Paws::KinesisAnalyticsV2::OutputDescription>]

Describes the application output configuration. For more information,
see Configuring Application Output
(http://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html).


=head2 _request_id => Str


=cut

1;