
package Paws::KinesisAnalyticsV2::UpdateApplicationMaintenanceConfigurationResponse;
  use Moose;
  has ApplicationARN => (is => 'ro', isa => 'Str');
  has ApplicationMaintenanceConfigurationDescription => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::ApplicationMaintenanceConfigurationDescription');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::UpdateApplicationMaintenanceConfigurationResponse

=head1 ATTRIBUTES


=head2 ApplicationARN => Str

The Amazon Resource Name (ARN) of the application.


=head2 ApplicationMaintenanceConfigurationDescription => L<Paws::KinesisAnalyticsV2::ApplicationMaintenanceConfigurationDescription>

The application maintenance configuration description after the update.


=head2 _request_id => Str


=cut

1;