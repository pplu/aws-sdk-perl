
package Paws::MQ::CreateConfiguration;
  use Moose;
  has EngineType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engineType');
  has EngineVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'engineVersion');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/configurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MQ::CreateConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::CreateConfiguration - Arguments for method CreateConfiguration on L<Paws::MQ>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConfiguration on the 
L<AmazonMQ|Paws::MQ> service. Use the attributes of this class
as arguments to method CreateConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConfiguration.

As an example:

  $service_obj->CreateConfiguration(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 EngineType => Str

Required. The type of broker engine. Note: Currently, Amazon MQ
supports only ACTIVEMQ.

Valid values are: C<"ACTIVEMQ">

=head2 EngineVersion => Str

Required. The version of the broker engine. Note: Currently, Amazon MQ
supports only 5.15.0.



=head2 Name => Str

Required. The name of the configuration. This value can contain only
alphanumeric characters, dashes, periods, underscores, and tildes (- .
_ ~). This value must be 1-150 characters long.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConfiguration in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

