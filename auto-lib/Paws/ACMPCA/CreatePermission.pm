
package Paws::ACMPCA::CreatePermission;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has CertificateAuthorityArn => (is => 'ro', isa => 'Str', required => 1);
  has Principal => (is => 'ro', isa => 'Str', required => 1);
  has SourceAccount => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePermission');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::CreatePermission - Arguments for method CreatePermission on L<Paws::ACMPCA>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePermission on the
L<AWS Certificate Manager Private Certificate Authority|Paws::ACMPCA> service. Use the attributes of this class
as arguments to method CreatePermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePermission.

=head1 SYNOPSIS

    my $acm-pca = Paws->service('ACMPCA');
    $acm -pca->CreatePermission(
      Actions => [
        'IssueCertificate',
        ...    # values: IssueCertificate, GetCertificate, ListPermissions
      ],
      CertificateAuthorityArn => 'MyArn',
      Principal               => 'MyPrincipal',
      SourceAccount           => 'MyAccountId',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm-pca/CreatePermission>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Actions => ArrayRef[Str|Undef]

The actions that the specified AWS service principal can use. These
include C<IssueCertificate>, C<GetCertificate>, and C<ListPermissions>.



=head2 B<REQUIRED> CertificateAuthorityArn => Str

The Amazon Resource Name (ARN) of the CA that grants the permissions.
You can find the ARN by calling the ListCertificateAuthorities
operation. This must have the following form:

C<arn:aws:acm-pca:I<region>:I<account>:certificate-authority/I<12345678-1234-1234-1234-123456789012>
>.



=head2 B<REQUIRED> Principal => Str

The AWS service or identity that receives the permission. At this time,
the only valid principal is C<acm.amazonaws.com>.



=head2 SourceAccount => Str

The ID of the calling account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePermission in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

