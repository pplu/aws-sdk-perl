
package Paws::Greengrass::GetSubscriptionDefinitionVersion;
  use Moose;
  has SubscriptionDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SubscriptionDefinitionId', required => 1);
  has SubscriptionDefinitionVersionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SubscriptionDefinitionVersionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSubscriptionDefinitionVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions/{SubscriptionDefinitionVersionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::GetSubscriptionDefinitionVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetSubscriptionDefinitionVersion - Arguments for method GetSubscriptionDefinitionVersion on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSubscriptionDefinitionVersion on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method GetSubscriptionDefinitionVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSubscriptionDefinitionVersion.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $GetSubscriptionDefinitionVersionResponse =
      $greengrass->GetSubscriptionDefinitionVersion(
      SubscriptionDefinitionId        => 'My__string',
      SubscriptionDefinitionVersionId => 'My__string',

      );

    # Results:
    my $Definition = $GetSubscriptionDefinitionVersionResponse->Definition;
    my $CreationTimestamp =
      $GetSubscriptionDefinitionVersionResponse->CreationTimestamp;
    my $Arn     = $GetSubscriptionDefinitionVersionResponse->Arn;
    my $Id      = $GetSubscriptionDefinitionVersionResponse->Id;
    my $Version = $GetSubscriptionDefinitionVersionResponse->Version;

# Returns a L<Paws::Greengrass::GetSubscriptionDefinitionVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/greengrass/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SubscriptionDefinitionId => Str

The ID of the subscription definition.



=head2 B<REQUIRED> SubscriptionDefinitionVersionId => Str

The ID of the subscription definition version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSubscriptionDefinitionVersion in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

