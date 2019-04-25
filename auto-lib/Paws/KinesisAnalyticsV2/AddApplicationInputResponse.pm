
package Paws::KinesisAnalyticsV2::AddApplicationInputResponse;
  use Moose;
  has ApplicationARN => (is => 'ro', isa => 'Str');
  has ApplicationVersionId => (is => 'ro', isa => 'Int');
  has InputDescriptions => (is => 'ro', isa => 'ArrayRef[Paws::KinesisAnalyticsV2::InputDescription]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::AddApplicationInputResponse

=head1 ATTRIBUTES


=head2 ApplicationARN => Str

The Amazon Resource Name (ARN) of the application.


=head2 ApplicationVersionId => Int

Provides the current application version.


=head2 InputDescriptions => ArrayRef[L<Paws::KinesisAnalyticsV2::InputDescription>]

Describes the application input configuration.


=head2 _request_id => Str


=cut

1;