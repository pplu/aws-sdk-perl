
package Paws::Greengrass::DeleteSubscriptionDefinition;
  use Moose;
  has SubscriptionDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SubscriptionDefinitionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSubscriptionDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/subscriptions/{SubscriptionDefinitionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::DeleteSubscriptionDefinitionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::DeleteSubscriptionDefinition - Arguments for method DeleteSubscriptionDefinition on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSubscriptionDefinition on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method DeleteSubscriptionDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSubscriptionDefinition.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $DeleteSubscriptionDefinitionResponse =
      $greengrass->DeleteSubscriptionDefinition(
      SubscriptionDefinitionId => 'My__string',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/DeleteSubscriptionDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SubscriptionDefinitionId => Str

The ID of the subscription definition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSubscriptionDefinition in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

