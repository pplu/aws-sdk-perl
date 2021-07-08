
package Paws::Greengrass::UpdateThingRuntimeConfiguration;
  use Moose;
  has TelemetryConfiguration => (is => 'ro', isa => 'Paws::Greengrass::TelemetryConfigurationUpdate');
  has ThingName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ThingName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateThingRuntimeConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/things/{ThingName}/runtimeconfig');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::UpdateThingRuntimeConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::UpdateThingRuntimeConfiguration - Arguments for method UpdateThingRuntimeConfiguration on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateThingRuntimeConfiguration on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method UpdateThingRuntimeConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateThingRuntimeConfiguration.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $UpdateThingRuntimeConfigurationResponse =
      $greengrass->UpdateThingRuntimeConfiguration(
      ThingName              => 'My__string',
      TelemetryConfiguration => {
        Telemetry => 'On',    # values: On, Off

      },    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/UpdateThingRuntimeConfiguration>

=head1 ATTRIBUTES


=head2 TelemetryConfiguration => L<Paws::Greengrass::TelemetryConfigurationUpdate>

Configuration for telemetry service.



=head2 B<REQUIRED> ThingName => Str

The thing name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateThingRuntimeConfiguration in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

