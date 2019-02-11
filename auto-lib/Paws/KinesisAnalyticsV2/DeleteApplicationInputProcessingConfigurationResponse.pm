
package Paws::KinesisAnalyticsV2::DeleteApplicationInputProcessingConfigurationResponse;
  use Moose;
  has ApplicationARN => (is => 'ro', isa => 'Str');
  has ApplicationVersionId => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::DeleteApplicationInputProcessingConfigurationResponse

=head1 ATTRIBUTES


=head2 ApplicationARN => Str

The Amazon Resource Name (ARN) of the application.


=head2 ApplicationVersionId => Int

The current application version ID.


=head2 _request_id => Str


=cut

1;