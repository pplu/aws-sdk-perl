
package Paws::NetworkManager::CreateDevice;
  use Moose;
  has AWSLocation => (is => 'ro', isa => 'Paws::NetworkManager::AWSLocation');
  has Description => (is => 'ro', isa => 'Str');
  has GlobalNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'globalNetworkId', required => 1);
  has Location => (is => 'ro', isa => 'Paws::NetworkManager::Location');
  has Model => (is => 'ro', isa => 'Str');
  has SerialNumber => (is => 'ro', isa => 'Str');
  has SiteId => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::Tag]');
  has Type => (is => 'ro', isa => 'Str');
  has Vendor => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDevice');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-networks/{globalNetworkId}/devices');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::CreateDeviceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::CreateDevice - Arguments for method CreateDevice on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDevice on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method CreateDevice.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDevice.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $CreateDeviceResponse = $networkmanager->CreateDevice(
      GlobalNetworkId => 'MyString',
      AWSLocation     => {
        SubnetArn => 'MyString',
        Zone      => 'MyString',
      },    # OPTIONAL
      Description => 'MyString',    # OPTIONAL
      Location    => {
        Address   => 'MyString',
        Latitude  => 'MyString',
        Longitude => 'MyString',
      },                            # OPTIONAL
      Model        => 'MyString',   # OPTIONAL
      SerialNumber => 'MyString',   # OPTIONAL
      SiteId       => 'MyString',   # OPTIONAL
      Tags         => [
        {
          Key   => 'MyTagKey',      # OPTIONAL
          Value => 'MyTagValue',    # OPTIONAL
        },
        ...
      ],                            # OPTIONAL
      Type   => 'MyString',         # OPTIONAL
      Vendor => 'MyString',         # OPTIONAL
    );

    # Results:
    my $Device = $CreateDeviceResponse->Device;

    # Returns a L<Paws::NetworkManager::CreateDeviceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/CreateDevice>

=head1 ATTRIBUTES


=head2 AWSLocation => L<Paws::NetworkManager::AWSLocation>

The AWS location of the device.



=head2 Description => Str

A description of the device.

Length Constraints: Maximum length of 256 characters.



=head2 B<REQUIRED> GlobalNetworkId => Str

The ID of the global network.



=head2 Location => L<Paws::NetworkManager::Location>

The location of the device.



=head2 Model => Str

The model of the device.

Length Constraints: Maximum length of 128 characters.



=head2 SerialNumber => Str

The serial number of the device.

Length Constraints: Maximum length of 128 characters.



=head2 SiteId => Str

The ID of the site.



=head2 Tags => ArrayRef[L<Paws::NetworkManager::Tag>]

The tags to apply to the resource during creation.



=head2 Type => Str

The type of the device.



=head2 Vendor => Str

The vendor of the device.

Length Constraints: Maximum length of 128 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDevice in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

