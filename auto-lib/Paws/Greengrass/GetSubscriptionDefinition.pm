
package Paws::Greengrass::GetSubscriptionDefinition;
  use Moose;
  has SubscriptionDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SubscriptionDefinitionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSubscriptionDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/subscriptions/{SubscriptionDefinitionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::GetSubscriptionDefinitionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetSubscriptionDefinition - Arguments for method GetSubscriptionDefinition on L<Paws::Greengrass>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSubscriptionDefinition on the
L<AWS Greengrass|Paws::Greengrass> service. Use the attributes of this class
as arguments to method GetSubscriptionDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSubscriptionDefinition.

=head1 SYNOPSIS

    my $greengrass = Paws->service('Greengrass');
    my $GetSubscriptionDefinitionResponse =
      $greengrass->GetSubscriptionDefinition(
      SubscriptionDefinitionId => 'My__string',

      );

    # Results:
    my $Arn = $GetSubscriptionDefinitionResponse->Arn;
    my $CreationTimestamp =
      $GetSubscriptionDefinitionResponse->CreationTimestamp;
    my $Id = $GetSubscriptionDefinitionResponse->Id;
    my $LastUpdatedTimestamp =
      $GetSubscriptionDefinitionResponse->LastUpdatedTimestamp;
    my $LatestVersion    = $GetSubscriptionDefinitionResponse->LatestVersion;
    my $LatestVersionArn = $GetSubscriptionDefinitionResponse->LatestVersionArn;
    my $Name             = $GetSubscriptionDefinitionResponse->Name;

    # Returns a L<Paws::Greengrass::GetSubscriptionDefinitionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/greengrass/GetSubscriptionDefinition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SubscriptionDefinitionId => Str

The ID of the subscription definition.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSubscriptionDefinition in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

