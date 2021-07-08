
package Paws::KinesisAnalyticsV2::UpdateApplicationMaintenanceConfiguration;
  use Moose;
  has ApplicationMaintenanceConfigurationUpdate => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::ApplicationMaintenanceConfigurationUpdate', required => 1);
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateApplicationMaintenanceConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalyticsV2::UpdateApplicationMaintenanceConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::UpdateApplicationMaintenanceConfiguration - Arguments for method UpdateApplicationMaintenanceConfiguration on L<Paws::KinesisAnalyticsV2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateApplicationMaintenanceConfiguration on the
L<Amazon Kinesis Analytics|Paws::KinesisAnalyticsV2> service. Use the attributes of this class
as arguments to method UpdateApplicationMaintenanceConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateApplicationMaintenanceConfiguration.

=head1 SYNOPSIS

    my $kinesisanalytics = Paws->service('KinesisAnalyticsV2');
    my $UpdateApplicationMaintenanceConfigurationResponse =
      $kinesisanalytics->UpdateApplicationMaintenanceConfiguration(
      ApplicationMaintenanceConfigurationUpdate => {
        ApplicationMaintenanceWindowStartTimeUpdate =>
          'MyApplicationMaintenanceWindowStartTime',    # min: 5, max: 5

      },
      ApplicationName => 'MyApplicationName',

      );

    # Results:
    my $ApplicationARN =
      $UpdateApplicationMaintenanceConfigurationResponse->ApplicationARN;
    my $ApplicationMaintenanceConfigurationDescription =
      $UpdateApplicationMaintenanceConfigurationResponse
      ->ApplicationMaintenanceConfigurationDescription;

# Returns a L<Paws::KinesisAnalyticsV2::UpdateApplicationMaintenanceConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kinesisanalytics/UpdateApplicationMaintenanceConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationMaintenanceConfigurationUpdate => L<Paws::KinesisAnalyticsV2::ApplicationMaintenanceConfigurationUpdate>

Describes the application maintenance configuration update.



=head2 B<REQUIRED> ApplicationName => Str

The name of the application for which you want to update the
maintenance configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateApplicationMaintenanceConfiguration in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

