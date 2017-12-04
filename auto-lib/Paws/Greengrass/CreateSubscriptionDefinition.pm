
package Paws::Greengrass::CreateSubscriptionDefinition;
  use Moose;
  has AmznClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has InitialVersion => (is => 'ro', isa => 'Paws::Greengrass::SubscriptionDefinitionVersion');
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSubscriptionDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/subscriptions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::CreateSubscriptionDefinitionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateSubscriptionDefinition - Arguments for method CreateSubscriptionDefinition on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSubscriptionDefinition on the 
AWS Greengrass service. Use the attributes of this class
as arguments to method CreateSubscriptionDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSubscriptionDefinition.

As an example:

  $service_obj->CreateSubscriptionDefinition(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AmznClientToken => Str

The client token used to request idempotent operations.



=head2 InitialVersion => L<Paws::Greengrass::SubscriptionDefinitionVersion>

Information on the initial version



=head2 Name => Str

name of the subscription definition




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSubscriptionDefinition in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

