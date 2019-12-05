
package Paws::NetworkManager::UpdateSite;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has GlobalNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'globalNetworkId', required => 1);
  has Location => (is => 'ro', isa => 'Paws::NetworkManager::Location');
  has SiteId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'siteId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSite');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-networks/{globalNetworkId}/sites/{siteId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::UpdateSiteResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::UpdateSite - Arguments for method UpdateSite on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSite on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method UpdateSite.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSite.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $UpdateSiteResponse = $networkmanager->UpdateSite(
      GlobalNetworkId => 'MyString',
      SiteId          => 'MyString',
      Description     => 'MyString',    # OPTIONAL
      Location        => {
        Address   => 'MyString',
        Latitude  => 'MyString',
        Longitude => 'MyString',
      },                                # OPTIONAL
    );

    # Results:
    my $Site = $UpdateSiteResponse->Site;

    # Returns a L<Paws::NetworkManager::UpdateSiteResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/UpdateSite>

=head1 ATTRIBUTES


=head2 Description => Str

A description of your site.

Length Constraints: Maximum length of 256 characters.



=head2 B<REQUIRED> GlobalNetworkId => Str

The ID of the global network.



=head2 Location => L<Paws::NetworkManager::Location>

The site location:

=over

=item *

C<Address>: The physical address of the site.

=item *

C<Latitude>: The latitude of the site.

=item *

C<Longitude>: The longitude of the site.

=back




=head2 B<REQUIRED> SiteId => Str

The ID of your site.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSite in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

