
package Paws::IoT::UpdateIndexingConfiguration;
  use Moose;
  has ThingGroupIndexingConfiguration => (is => 'ro', isa => 'Paws::IoT::ThingGroupIndexingConfiguration', traits => ['NameInRequest'], request_name => 'thingGroupIndexingConfiguration');
  has ThingIndexingConfiguration => (is => 'ro', isa => 'Paws::IoT::ThingIndexingConfiguration', traits => ['NameInRequest'], request_name => 'thingIndexingConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateIndexingConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/indexing/config');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::UpdateIndexingConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::UpdateIndexingConfiguration - Arguments for method UpdateIndexingConfiguration on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateIndexingConfiguration on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method UpdateIndexingConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateIndexingConfiguration.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $UpdateIndexingConfigurationResponse = $iot->UpdateIndexingConfiguration(
      ThingGroupIndexingConfiguration => {
        ThingGroupIndexingMode => 'OFF',    # values: OFF, ON

      },    # OPTIONAL
      ThingIndexingConfiguration => {
        ThingIndexingMode => 'OFF', # values: OFF, REGISTRY, REGISTRY_AND_SHADOW
        ThingConnectivityIndexingMode => 'OFF',  # values: OFF, STATUS; OPTIONAL
      },    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/UpdateIndexingConfiguration>

=head1 ATTRIBUTES


=head2 ThingGroupIndexingConfiguration => L<Paws::IoT::ThingGroupIndexingConfiguration>

Thing group indexing configuration.



=head2 ThingIndexingConfiguration => L<Paws::IoT::ThingIndexingConfiguration>

Thing indexing configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateIndexingConfiguration in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

