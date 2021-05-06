
package Paws::KinesisAnalyticsV2::AddApplicationCloudWatchLoggingOptionResponse;
  use Moose;
  has ApplicationARN => (is => 'ro', isa => 'Str');
  has ApplicationVersionId => (is => 'ro', isa => 'Int');
  has CloudWatchLoggingOptionDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalyticsV2::CloudWatchLoggingOptionDescription]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::AddApplicationCloudWatchLoggingOptionResponse

=head1 ATTRIBUTES


=head2 ApplicationARN => Str

The application's ARN.


=head2 ApplicationVersionId => Int

The new version ID of the Kinesis Data Analytics application. Kinesis
Data Analytics updates the C<ApplicationVersionId> each time you change
the CloudWatch logging options.


=head2 CloudWatchLoggingOptionDescriptions => ArrayRef[L<Paws::KinesisAnalyticsV2::CloudWatchLoggingOptionDescription>]

The descriptions of the current CloudWatch logging options for the
Kinesis Data Analytics application.


=head2 _request_id => Str


=cut

1;