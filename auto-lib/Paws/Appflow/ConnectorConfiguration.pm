# Generated by default/object.tt
package Paws::Appflow::ConnectorConfiguration;
  use Moose;
  has CanUseAsDestination => (is => 'ro', isa => 'Bool', request_name => 'canUseAsDestination', traits => ['NameInRequest']);
  has CanUseAsSource => (is => 'ro', isa => 'Bool', request_name => 'canUseAsSource', traits => ['NameInRequest']);
  has ConnectorMetadata => (is => 'ro', isa => 'Paws::Appflow::ConnectorMetadata', request_name => 'connectorMetadata', traits => ['NameInRequest']);
  has IsPrivateLinkEnabled => (is => 'ro', isa => 'Bool', request_name => 'isPrivateLinkEnabled', traits => ['NameInRequest']);
  has IsPrivateLinkEndpointUrlRequired => (is => 'ro', isa => 'Bool', request_name => 'isPrivateLinkEndpointUrlRequired', traits => ['NameInRequest']);
  has SupportedDestinationConnectors => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'supportedDestinationConnectors', traits => ['NameInRequest']);
  has SupportedSchedulingFrequencies => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'supportedSchedulingFrequencies', traits => ['NameInRequest']);
  has SupportedTriggerTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'supportedTriggerTypes', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Appflow::ConnectorConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Appflow::ConnectorConfiguration object:

  $service_obj->Method(Att1 => { CanUseAsDestination => $value, ..., SupportedTriggerTypes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Appflow::ConnectorConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->CanUseAsDestination

=head1 DESCRIPTION

The configuration settings related to a given connector.

=head1 ATTRIBUTES


=head2 CanUseAsDestination => Bool

Specifies whether the connector can be used as a destination.


=head2 CanUseAsSource => Bool

Specifies whether the connector can be used as a source.


=head2 ConnectorMetadata => L<Paws::Appflow::ConnectorMetadata>

Specifies connector-specific metadata such as C<oAuthScopes>,
C<supportedRegions>, C<privateLinkServiceUrl>, and so on.


=head2 IsPrivateLinkEnabled => Bool

Specifies if PrivateLink is enabled for that connector.


=head2 IsPrivateLinkEndpointUrlRequired => Bool

Specifies if a PrivateLink endpoint URL is required.


=head2 SupportedDestinationConnectors => ArrayRef[Str|Undef]

Lists the connectors that are available for use as destinations.


=head2 SupportedSchedulingFrequencies => ArrayRef[Str|Undef]

Specifies the supported flow frequency for that connector.


=head2 SupportedTriggerTypes => ArrayRef[Str|Undef]

Specifies the supported trigger types for the flow.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Appflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

