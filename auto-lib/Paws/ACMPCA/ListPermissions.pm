
package Paws::ACMPCA::ListPermissions;
  use Moose;
  has CertificateAuthorityArn => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPermissions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ACMPCA::ListPermissionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::ListPermissions - Arguments for method ListPermissions on L<Paws::ACMPCA>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPermissions on the
L<AWS Certificate Manager Private Certificate Authority|Paws::ACMPCA> service. Use the attributes of this class
as arguments to method ListPermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPermissions.

=head1 SYNOPSIS

    my $acm-pca = Paws->service('ACMPCA');
    my $ListPermissionsResponse = $acm -pca->ListPermissions(
      CertificateAuthorityArn => 'MyArn',
      MaxResults              => 1,                # OPTIONAL
      NextToken               => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken   = $ListPermissionsResponse->NextToken;
    my $Permissions = $ListPermissionsResponse->Permissions;

    # Returns a L<Paws::ACMPCA::ListPermissionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm-pca/ListPermissions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateAuthorityArn => Str

The Amazon Resource Number (ARN) of the private CA to inspect. You can
find the ARN by calling the ListCertificateAuthorities action. This
must be of the form:
C<arn:aws:acm-pca:region:account:certificate-authority/12345678-1234-1234-1234-123456789012>
You can get a private CA's ARN by running the
ListCertificateAuthorities action.



=head2 MaxResults => Int

When paginating results, use this parameter to specify the maximum
number of items to return in the response. If additional items exist
beyond the number you specify, the B<NextToken> element is sent in the
response. Use this B<NextToken> value in a subsequent request to
retrieve additional items.



=head2 NextToken => Str

When paginating results, use this parameter in a subsequent request
after you receive a response with truncated results. Set it to the
value of B<NextToken> from the response you just received.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPermissions in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

