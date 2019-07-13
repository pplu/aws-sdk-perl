
package Paws::KinesisAnalyticsV2::AddApplicationInputProcessingConfigurationResponse;
  use Moose;
  has ApplicationARN => (is => 'ro', isa => 'Str');
  has ApplicationVersionId => (is => 'ro', isa => 'Int');
  has InputId => (is => 'ro', isa => 'Str');
  has InputProcessingConfigurationDescription => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::InputProcessingConfigurationDescription');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::AddApplicationInputProcessingConfigurationResponse

=head1 ATTRIBUTES


=head2 ApplicationARN => Str

The Amazon Resource Name (ARN) of the application.


=head2 ApplicationVersionId => Int

Provides the current application version.


=head2 InputId => Str

The input ID that is associated with the application input. This is the
ID that Amazon Kinesis Data Analytics assigns to each input
configuration that you add to your application.


=head2 InputProcessingConfigurationDescription => L<Paws::KinesisAnalyticsV2::InputProcessingConfigurationDescription>

The description of the preprocessor that executes on records in this
input before the application's code is run.


=head2 _request_id => Str


=cut

1;