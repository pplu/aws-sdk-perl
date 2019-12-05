
package Paws::NetworkManager::GetSites;
  use Moose;
  has GlobalNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'globalNetworkId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has SiteIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'siteIds');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSites');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-networks/{globalNetworkId}/sites');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::GetSitesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetSites - Arguments for method GetSites on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSites on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method GetSites.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSites.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $GetSitesResponse = $networkmanager->GetSites(
      GlobalNetworkId => 'MyString',
      MaxResults      => 1,                      # OPTIONAL
      NextToken       => 'MyString',             # OPTIONAL
      SiteIds         => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $NextToken = $GetSitesResponse->NextToken;
    my $Sites     = $GetSitesResponse->Sites;

    # Returns a L<Paws::NetworkManager::GetSitesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/GetSites>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GlobalNetworkId => Str

The ID of the global network.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

The token for the next page of results.



=head2 SiteIds => ArrayRef[Str|Undef]

One or more site IDs. The maximum is 10.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSites in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

