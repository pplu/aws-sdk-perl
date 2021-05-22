
package Paws::LicenseManager::CreateToken;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', required => 1);
  has ExpirationInDays => (is => 'ro', isa => 'Int');
  has LicenseArn => (is => 'ro', isa => 'Str', required => 1);
  has RoleArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TokenProperties => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateToken');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManager::CreateTokenResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::CreateToken - Arguments for method CreateToken on L<Paws::LicenseManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateToken on the
L<AWS License Manager|Paws::LicenseManager> service. Use the attributes of this class
as arguments to method CreateToken.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateToken.

=head1 SYNOPSIS

    my $license-manager = Paws->service('LicenseManager');
    my $CreateTokenResponse = $license -manager->CreateToken(
      ClientToken      => 'MyIdempotencyToken',
      LicenseArn       => 'MyArn',
      ExpirationInDays => 1,                      # OPTIONAL
      RoleArns         => [
        'MyArn', ...                              # max: 2048
      ],                                          # OPTIONAL
      TokenProperties => [ 'MyString', ... ],     # OPTIONAL
    );

    # Results:
    my $Token     = $CreateTokenResponse->Token;
    my $TokenId   = $CreateTokenResponse->TokenId;
    my $TokenType = $CreateTokenResponse->TokenType;

    # Returns a L<Paws::LicenseManager::CreateTokenResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager/CreateToken>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

Idempotency token, valid for 10 minutes.



=head2 ExpirationInDays => Int

Token expiration, in days, counted from token creation. The default is
365 days.



=head2 B<REQUIRED> LicenseArn => Str

Amazon Resource Name (ARN) of the license. The ARN is mapped to the aud
claim of the JWT token.



=head2 RoleArns => ArrayRef[Str|Undef]

Amazon Resource Name (ARN) of the IAM roles to embed in the token.
License Manager does not check whether the roles are in use.



=head2 TokenProperties => ArrayRef[Str|Undef]

Data specified by the caller to be included in the JWT token. The data
is mapped to the amr claim of the JWT token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateToken in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

