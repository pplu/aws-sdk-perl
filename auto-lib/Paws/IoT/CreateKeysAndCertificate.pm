
package Paws::IoT::CreateKeysAndCertificate;
  use Moose;
  has SetAsActive => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'setAsActive');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateKeysAndCertificate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/keys-and-certificate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CreateKeysAndCertificateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateKeysAndCertificate - Arguments for method CreateKeysAndCertificate on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateKeysAndCertificate on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method CreateKeysAndCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateKeysAndCertificate.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $CreateKeysAndCertificateResponse = $iot->CreateKeysAndCertificate(
      SetAsActive => 1,    # OPTIONAL
    );

    # Results:
    my $CertificateArn = $CreateKeysAndCertificateResponse->CertificateArn;
    my $CertificateId  = $CreateKeysAndCertificateResponse->CertificateId;
    my $CertificatePem = $CreateKeysAndCertificateResponse->CertificatePem;
    my $KeyPair        = $CreateKeysAndCertificateResponse->KeyPair;

    # Returns a L<Paws::IoT::CreateKeysAndCertificateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/CreateKeysAndCertificate>

=head1 ATTRIBUTES


=head2 SetAsActive => Bool

Specifies whether the certificate is active.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateKeysAndCertificate in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

