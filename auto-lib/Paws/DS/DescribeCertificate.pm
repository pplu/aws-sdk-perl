
package Paws::DS::DescribeCertificate;
  use Moose;
  has CertificateId => (is => 'ro', isa => 'Str', required => 1);
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::DescribeCertificateResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeCertificate - Arguments for method DescribeCertificate on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCertificate on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method DescribeCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCertificate.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $DescribeCertificateResult = $ds->DescribeCertificate(
      CertificateId => 'MyCertificateId',
      DirectoryId   => 'MyDirectoryId',

    );

    # Results:
    my $Certificate = $DescribeCertificateResult->Certificate;

    # Returns a L<Paws::DS::DescribeCertificateResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/DescribeCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateId => Str

The identifier of the certificate.



=head2 B<REQUIRED> DirectoryId => Str

The identifier of the directory.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCertificate in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

