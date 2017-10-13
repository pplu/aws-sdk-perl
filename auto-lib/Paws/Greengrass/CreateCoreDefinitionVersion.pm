
package Paws::Greengrass::CreateCoreDefinitionVersion;
  use Moose;
  has AmznClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has CoreDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'CoreDefinitionId', required => 1);
  has Cores => (is => 'ro', isa => 'ArrayRef[Paws::Greengrass::Core]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCoreDefinitionVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/cores/{CoreDefinitionId}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::CreateCoreDefinitionVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateCoreDefinitionVersion - Arguments for method CreateCoreDefinitionVersion on Paws::Greengrass

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCoreDefinitionVersion on the 
AWS Greengrass service. Use the attributes of this class
as arguments to method CreateCoreDefinitionVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCoreDefinitionVersion.

As an example:

  $service_obj->CreateCoreDefinitionVersion(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AmznClientToken => Str

The client token used to request idempotent operations.



=head2 B<REQUIRED> CoreDefinitionId => Str

core definition Id



=head2 Cores => ArrayRef[L<Paws::Greengrass::Core>]

Cores in the definition version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCoreDefinitionVersion in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

