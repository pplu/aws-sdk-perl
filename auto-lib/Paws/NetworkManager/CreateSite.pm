
package Paws::NetworkManager::CreateSite;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has GlobalNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'globalNetworkId', required => 1);
  has Location => (is => 'ro', isa => 'Paws::NetworkManager::Location');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSite');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-networks/{globalNetworkId}/sites');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::CreateSiteResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::CreateSite - Arguments for method CreateSite on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSite on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method CreateSite.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSite.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $CreateSiteResponse = $networkmanager->CreateSite(
      GlobalNetworkId => 'MyString',
      Description     => 'MyString',    # OPTIONAL
      Location        => {
        Address   => 'MyString',
        Latitude  => 'MyString',
        Longitude => 'MyString',
      },                                # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',          # OPTIONAL
          Value => 'MyTagValue',        # OPTIONAL
        },
        ...
      ],                                # OPTIONAL
    );

    # Results:
    my $Site = $CreateSiteResponse->Site;

    # Returns a L<Paws::NetworkManager::CreateSiteResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/CreateSite>

=head1 ATTRIBUTES


=head2 Description => Str

A description of your site.

Length Constraints: Maximum length of 256 characters.



=head2 B<REQUIRED> GlobalNetworkId => Str

The ID of the global network.



=head2 Location => L<Paws::NetworkManager::Location>

The site location. This information is used for visualization in the
Network Manager console. If you specify the address, the latitude and
longitude are automatically calculated.

=over

=item *

C<Address>: The physical address of the site.

=item *

C<Latitude>: The latitude of the site.

=item *

C<Longitude>: The longitude of the site.

=back




=head2 Tags => ArrayRef[L<Paws::NetworkManager::Tag>]

The tags to apply to the resource during creation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSite in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

