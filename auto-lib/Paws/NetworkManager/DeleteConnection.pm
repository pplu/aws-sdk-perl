
package Paws::NetworkManager::DeleteConnection;
  use Moose;
  has ConnectionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'connectionId', required => 1);
  has GlobalNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'globalNetworkId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteConnection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-networks/{globalNetworkId}/connections/{connectionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::DeleteConnectionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::DeleteConnection - Arguments for method DeleteConnection on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteConnection on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method DeleteConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteConnection.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $DeleteConnectionResponse = $networkmanager->DeleteConnection(
      ConnectionId    => 'MyString',
      GlobalNetworkId => 'MyString',

    );

    # Results:
    my $Connection = $DeleteConnectionResponse->Connection;

    # Returns a L<Paws::NetworkManager::DeleteConnectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/DeleteConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionId => Str

The ID of the connection.



=head2 B<REQUIRED> GlobalNetworkId => Str

The ID of the global network.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteConnection in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

