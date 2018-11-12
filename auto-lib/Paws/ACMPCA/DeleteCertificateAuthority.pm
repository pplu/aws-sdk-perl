
package Paws::ACMPCA::DeleteCertificateAuthority;
  use Moose;
  has CertificateAuthorityArn => (is => 'ro', isa => 'Str', required => 1);
  has PermanentDeletionTimeInDays => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCertificateAuthority');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACMPCA::DeleteCertificateAuthority - Arguments for method DeleteCertificateAuthority on L<Paws::ACMPCA>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCertificateAuthority on the
L<AWS Certificate Manager Private Certificate Authority|Paws::ACMPCA> service. Use the attributes of this class
as arguments to method DeleteCertificateAuthority.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCertificateAuthority.

=head1 SYNOPSIS

    my $acm-pca = Paws->service('ACMPCA');
    $acm -pca->DeleteCertificateAuthority(
      CertificateAuthorityArn     => 'MyArn',
      PermanentDeletionTimeInDays => 1,         # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/acm-pca/DeleteCertificateAuthority>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateAuthorityArn => Str

The Amazon Resource Name (ARN) that was returned when you called
CreateCertificateAuthority. This must have the following form:

C<arn:aws:acm-pca:I<region>:I<account>:certificate-authority/I<12345678-1234-1234-1234-123456789012>
>.



=head2 PermanentDeletionTimeInDays => Int

The number of days to make a CA restorable after it has been deleted.
This can be anywhere from 7 to 30 days, with 30 being the default.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCertificateAuthority in L<Paws::ACMPCA>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

