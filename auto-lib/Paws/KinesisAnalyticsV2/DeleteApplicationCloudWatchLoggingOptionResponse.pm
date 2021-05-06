
package Paws::KinesisAnalyticsV2::DeleteApplicationCloudWatchLoggingOptionResponse;
  use Moose;
  has ApplicationARN => (is => 'ro', isa => 'Str');
  has ApplicationVersionId => (is => 'ro', isa => 'Int');
  has CloudWatchLoggingOptionDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalyticsV2::CloudWatchLoggingOptionDescription]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::DeleteApplicationCloudWatchLoggingOptionResponse

=head1 ATTRIBUTES


=head2 ApplicationARN => Str

The application's Amazon Resource Name (ARN).


=head2 ApplicationVersionId => Int

The version ID of the application. Kinesis Data Analytics updates the
C<ApplicationVersionId> each time you change the CloudWatch logging
options.


=head2 CloudWatchLoggingOptionDescriptions => ArrayRef[L<Paws::KinesisAnalyticsV2::CloudWatchLoggingOptionDescription>]

The descriptions of the remaining CloudWatch logging options for the
application.


=head2 _request_id => Str


=cut

1;