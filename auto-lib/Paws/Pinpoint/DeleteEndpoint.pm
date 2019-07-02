
package Paws::Pinpoint::DeleteEndpoint;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'application-id', required => 1);
  has EndpointId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'endpoint-id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEndpoint');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/apps/{application-id}/endpoints/{endpoint-id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Pinpoint::EndpointResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::DeleteEndpoint - Arguments for method DeleteEndpoint on L<Paws::Pinpoint>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteEndpoint on the
L<Amazon Pinpoint|Paws::Pinpoint> service. Use the attributes of this class
as arguments to method DeleteEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteEndpoint.

=head1 SYNOPSIS

    my $pinpoint = Paws->service('Pinpoint');
    my $EndpointResponse = $pinpoint->DeleteEndpoint(
      ApplicationId => 'My__string',
      EndpointId    => 'My__string',

    );

    # Results:
    my $Address        = $EndpointResponse->Address;
    my $ApplicationId  = $EndpointResponse->ApplicationId;
    my $Attributes     = $EndpointResponse->Attributes;
    my $ChannelType    = $EndpointResponse->ChannelType;
    my $CohortId       = $EndpointResponse->CohortId;
    my $CreationDate   = $EndpointResponse->CreationDate;
    my $Demographic    = $EndpointResponse->Demographic;
    my $EffectiveDate  = $EndpointResponse->EffectiveDate;
    my $EndpointStatus = $EndpointResponse->EndpointStatus;
    my $Id             = $EndpointResponse->Id;
    my $Location       = $EndpointResponse->Location;
    my $Metrics        = $EndpointResponse->Metrics;
    my $OptOut         = $EndpointResponse->OptOut;
    my $RequestId      = $EndpointResponse->RequestId;
    my $User           = $EndpointResponse->User;

    # Returns a L<Paws::Pinpoint::EndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/pinpoint/DeleteEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The unique identifier for the application. This identifier is displayed
as the B<Project ID> on the Amazon Pinpoint console.



=head2 B<REQUIRED> EndpointId => Str

The unique identifier for the endpoint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteEndpoint in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

