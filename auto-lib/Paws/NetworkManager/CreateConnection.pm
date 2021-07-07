
package Paws::NetworkManager::CreateConnection;
  use Moose;
  has ConnectedDeviceId => (is => 'ro', isa => 'Str', required => 1);
  has ConnectedLinkId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has DeviceId => (is => 'ro', isa => 'Str', required => 1);
  has GlobalNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'globalNetworkId', required => 1);
  has LinkId => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConnection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-networks/{globalNetworkId}/connections');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::CreateConnectionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::CreateConnection - Arguments for method CreateConnection on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConnection on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method CreateConnection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConnection.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $CreateConnectionResponse = $networkmanager->CreateConnection(
      ConnectedDeviceId => 'MyString',
      DeviceId          => 'MyString',
      GlobalNetworkId   => 'MyString',
      ConnectedLinkId   => 'MyString',    # OPTIONAL
      Description       => 'MyString',    # OPTIONAL
      LinkId            => 'MyString',    # OPTIONAL
      Tags              => [
        {
          Key   => 'MyTagKey',      # OPTIONAL
          Value => 'MyTagValue',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Connection = $CreateConnectionResponse->Connection;

    # Returns a L<Paws::NetworkManager::CreateConnectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/CreateConnection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectedDeviceId => Str

The ID of the second device in the connection.



=head2 ConnectedLinkId => Str

The ID of the link for the second device.



=head2 Description => Str

A description of the connection.

Length Constraints: Maximum length of 256 characters.



=head2 B<REQUIRED> DeviceId => Str

The ID of the first device in the connection.



=head2 B<REQUIRED> GlobalNetworkId => Str

The ID of the global network.



=head2 LinkId => Str

The ID of the link for the first device.



=head2 Tags => ArrayRef[L<Paws::NetworkManager::Tag>]

The tags to apply to the resource during creation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConnection in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

