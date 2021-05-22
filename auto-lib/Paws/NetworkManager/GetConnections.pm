
package Paws::NetworkManager::GetConnections;
  use Moose;
  has ConnectionIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'connectionIds');
  has DeviceId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'deviceId');
  has GlobalNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'globalNetworkId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetConnections');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-networks/{globalNetworkId}/connections');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::GetConnectionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetConnections - Arguments for method GetConnections on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetConnections on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method GetConnections.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetConnections.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $GetConnectionsResponse = $networkmanager->GetConnections(
      GlobalNetworkId => 'MyString',
      ConnectionIds   => [ 'MyString', ... ],    # OPTIONAL
      DeviceId        => 'MyString',             # OPTIONAL
      MaxResults      => 1,                      # OPTIONAL
      NextToken       => 'MyString',             # OPTIONAL
    );

    # Results:
    my $Connections = $GetConnectionsResponse->Connections;
    my $NextToken   = $GetConnectionsResponse->NextToken;

    # Returns a L<Paws::NetworkManager::GetConnectionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/GetConnections>

=head1 ATTRIBUTES


=head2 ConnectionIds => ArrayRef[Str|Undef]

One or more connection IDs.



=head2 DeviceId => Str

The ID of the device.



=head2 B<REQUIRED> GlobalNetworkId => Str

The ID of the global network.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

The token for the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetConnections in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

