
package Paws::NetworkManager::UpdateLink;
  use Moose;
  has Bandwidth => (is => 'ro', isa => 'Paws::NetworkManager::Bandwidth');
  has Description => (is => 'ro', isa => 'Str');
  has GlobalNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'globalNetworkId', required => 1);
  has LinkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'linkId', required => 1);
  has Provider => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLink');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-networks/{globalNetworkId}/links/{linkId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::UpdateLinkResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::UpdateLink - Arguments for method UpdateLink on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLink on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method UpdateLink.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLink.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $UpdateLinkResponse = $networkmanager->UpdateLink(
      GlobalNetworkId => 'MyString',
      LinkId          => 'MyString',
      Bandwidth       => {
        DownloadSpeed => 1,    # OPTIONAL
        UploadSpeed   => 1,    # OPTIONAL
      },    # OPTIONAL
      Description => 'MyString',    # OPTIONAL
      Provider    => 'MyString',    # OPTIONAL
      Type        => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Link = $UpdateLinkResponse->Link;

    # Returns a L<Paws::NetworkManager::UpdateLinkResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/UpdateLink>

=head1 ATTRIBUTES


=head2 Bandwidth => L<Paws::NetworkManager::Bandwidth>

The upload and download speed in Mbps.



=head2 Description => Str

A description of the link.

Length Constraints: Maximum length of 256 characters.



=head2 B<REQUIRED> GlobalNetworkId => Str

The ID of the global network.



=head2 B<REQUIRED> LinkId => Str

The ID of the link.



=head2 Provider => Str

The provider of the link.

Length Constraints: Maximum length of 128 characters.



=head2 Type => Str

The type of the link.

Length Constraints: Maximum length of 128 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLink in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

