
package Paws::NetworkManager::CreateLink;
  use Moose;
  has Bandwidth => (is => 'ro', isa => 'Paws::NetworkManager::Bandwidth', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has GlobalNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'globalNetworkId', required => 1);
  has Provider => (is => 'ro', isa => 'Str');
  has SiteId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::Tag]');
  has Type => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateLink');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-networks/{globalNetworkId}/links');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::CreateLinkResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::CreateLink - Arguments for method CreateLink on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateLink on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method CreateLink.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateLink.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $CreateLinkResponse = $networkmanager->CreateLink(
      Bandwidth => {
        DownloadSpeed => 1,    # OPTIONAL
        UploadSpeed   => 1,    # OPTIONAL
      },
      GlobalNetworkId => 'MyString',
      SiteId          => 'MyString',
      Description     => 'MyString',    # OPTIONAL
      Provider        => 'MyString',    # OPTIONAL
      Tags            => [
        {
          Key   => 'MyTagKey',          # OPTIONAL
          Value => 'MyTagValue',        # OPTIONAL
        },
        ...
      ],                                # OPTIONAL
      Type => 'MyString',               # OPTIONAL
    );

    # Results:
    my $Link = $CreateLinkResponse->Link;

    # Returns a L<Paws::NetworkManager::CreateLinkResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/CreateLink>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bandwidth => L<Paws::NetworkManager::Bandwidth>

The upload speed and download speed in Mbps.



=head2 Description => Str

A description of the link.

Length Constraints: Maximum length of 256 characters.



=head2 B<REQUIRED> GlobalNetworkId => Str

The ID of the global network.



=head2 Provider => Str

The provider of the link.

Constraints: Cannot include the following characters: | \ ^

Length Constraints: Maximum length of 128 characters.



=head2 B<REQUIRED> SiteId => Str

The ID of the site.



=head2 Tags => ArrayRef[L<Paws::NetworkManager::Tag>]

The tags to apply to the resource during creation.



=head2 Type => Str

The type of the link.

Constraints: Cannot include the following characters: | \ ^

Length Constraints: Maximum length of 128 characters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateLink in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

