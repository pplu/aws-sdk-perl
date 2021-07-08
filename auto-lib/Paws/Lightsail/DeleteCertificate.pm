
package Paws::Lightsail::DeleteCertificate;
  use Moose;
  has CertificateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCertificate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::DeleteCertificateResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::DeleteCertificate - Arguments for method DeleteCertificate on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCertificate on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method DeleteCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCertificate.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $DeleteCertificateResult = $lightsail->DeleteCertificate(
      CertificateName => 'MyCertificateName',

    );

    # Results:
    my $Operations = $DeleteCertificateResult->Operations;

    # Returns a L<Paws::Lightsail::DeleteCertificateResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/DeleteCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateName => Str

The name of the certificate to delete.

Use the C<GetCertificates> action to get a list of certificate names
that you can specify.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCertificate in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

