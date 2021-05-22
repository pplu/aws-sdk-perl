
package Paws::NetworkManager::UpdateConnection;
  use Moose;
  has ConnectedLinkId => (is => 'ro', isa => 'Str');
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'connectionId', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has GlobalNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'globalNetworkId', required => 1);
  has LinkId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConnection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-networks/{globalNetworkId}/connections/{connectionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::UpdateConnectionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::UpdateConnection - Arguments for method UpdateConnection on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConnection on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method UpdateConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConnection.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $UpdateConnectionResponse = $networkmanager->UpdateConnection(
      ConnectionId    => 'MyString',
      GlobalNetworkId => 'MyString',
      ConnectedLinkId => 'MyString',    # OPTIONAL
      Description     => 'MyString',    # OPTIONAL
      LinkId          => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Connection = $UpdateConnectionResponse->Connection;

    # Returns a L<Paws::NetworkManager::UpdateConnectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/UpdateConnection>

=head1 ATTRIBUTES


=head2 ConnectedLinkId => Str

The ID of the link for the second device in the connection.



=head2 B<REQUIRED> ConnectionId => Str

The ID of the connection.



=head2 Description => Str

A description of the connection.

Length Constraints: Maximum length of 256 characters.



=head2 B<REQUIRED> GlobalNetworkId => Str

The ID of the global network.



=head2 LinkId => Str

The ID of the link for the first device in the connection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConnection in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

