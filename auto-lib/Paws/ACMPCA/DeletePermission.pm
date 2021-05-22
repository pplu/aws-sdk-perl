
package Paws::ACMPCA::DeletePermission;
  use Moose;
  has CertificateAuthorityArn => (is => 'ro', isa => 'Str', required => 1);
  has Principal => (is => 'ro', isa => 'Str', required => 1);
  has SourceAccount => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePermission');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::DeletePermission - Arguments for method DeletePermission on L<Paws::ACMPCA>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePermission on the
L<AWS Certificate Manager Private Certificate Authority|Paws::ACMPCA> service. Use the attributes of this class
as arguments to method DeletePermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePermission.

=head1 SYNOPSIS

    my $acm-pca = Paws->service('ACMPCA');
    $acm -pca->DeletePermission(
      CertificateAuthorityArn => 'MyArn',
      Principal               => 'MyPrincipal',
      SourceAccount           => 'MyAccountId',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm-pca/DeletePermission>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateAuthorityArn => Str

The Amazon Resource Number (ARN) of the private CA that issued the
permissions. You can find the CA's ARN by calling the
ListCertificateAuthorities
(https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html)
action. This must have the following form:

C<arn:aws:acm-pca:I<region>:I<account>:certificate-authority/I<12345678-1234-1234-1234-123456789012>
>.



=head2 B<REQUIRED> Principal => Str

The AWS service or identity that will have its CA permissions revoked.
At this time, the only valid service principal is C<acm.amazonaws.com>



=head2 SourceAccount => Str

The AWS account that calls this action.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePermission in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

