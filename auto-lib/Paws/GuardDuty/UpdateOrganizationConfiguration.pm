
package Paws::GuardDuty::UpdateOrganizationConfiguration;
  use Moose;
  has AutoEnable => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'autoEnable', required => 1);
  has DataSources => (is => 'ro', isa => 'Paws::GuardDuty::OrganizationDataSourceConfigurations', traits => ['NameInRequest'], request_name => 'dataSources');
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateOrganizationConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/admin');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::UpdateOrganizationConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::UpdateOrganizationConfiguration - Arguments for method UpdateOrganizationConfiguration on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateOrganizationConfiguration on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method UpdateOrganizationConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateOrganizationConfiguration.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $UpdateOrganizationConfigurationResponse =
      $guardduty->UpdateOrganizationConfiguration(
      AutoEnable  => 1,
      DetectorId  => 'MyDetectorId',
      DataSources => {
        S3Logs => {
          AutoEnable => 1,

        },    # OPTIONAL
      },    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/UpdateOrganizationConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoEnable => Bool

Indicates whether to automatically enable member accounts in the
organization.



=head2 DataSources => L<Paws::GuardDuty::OrganizationDataSourceConfigurations>

Describes which data sources will be updated.



=head2 B<REQUIRED> DetectorId => Str

The ID of the detector to update the delegated administrator for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateOrganizationConfiguration in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

