
package Paws::LicenseManager::GetAccessToken;
  use Moose;
  has Token => (is => 'ro', isa => 'Str', required => 1);
  has TokenProperties => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccessToken');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManager::GetAccessTokenResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::GetAccessToken - Arguments for method GetAccessToken on L<Paws::LicenseManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAccessToken on the
L<AWS License Manager|Paws::LicenseManager> service. Use the attributes of this class
as arguments to method GetAccessToken.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAccessToken.

=head1 SYNOPSIS

    my $license-manager = Paws->service('LicenseManager');
    my $GetAccessTokenResponse = $license -manager->GetAccessToken(
      Token           => 'MyTokenString',
      TokenProperties => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $AccessToken = $GetAccessTokenResponse->AccessToken;

    # Returns a L<Paws::LicenseManager::GetAccessTokenResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager/GetAccessToken>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Token => Str

Refresh token, encoded as a JWT token.



=head2 TokenProperties => ArrayRef[Str|Undef]

Token properties to validate against those present in the JWT token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAccessToken in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

