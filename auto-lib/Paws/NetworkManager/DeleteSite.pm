
package Paws::NetworkManager::DeleteSite;
  use Moose;
  has GlobalNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'globalNetworkId', required => 1);
  has SiteId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'siteId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteSite');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-networks/{globalNetworkId}/sites/{siteId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::DeleteSiteResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::DeleteSite - Arguments for method DeleteSite on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteSite on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method DeleteSite.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteSite.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $DeleteSiteResponse = $networkmanager->DeleteSite(
      GlobalNetworkId => 'MyString',
      SiteId          => 'MyString',

    );

    # Results:
    my $Site = $DeleteSiteResponse->Site;

    # Returns a L<Paws::NetworkManager::DeleteSiteResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/DeleteSite>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GlobalNetworkId => Str

The ID of the global network.



=head2 B<REQUIRED> SiteId => Str

The ID of the site.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteSite in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

