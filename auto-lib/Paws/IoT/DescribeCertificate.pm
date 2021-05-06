
package Paws::IoT::DescribeCertificate;
  use Moose;
  has CertificateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'certificateId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCertificate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/certificates/{certificateId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DescribeCertificateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeCertificate - Arguments for method DescribeCertificate on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCertificate on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DescribeCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCertificate.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $DescribeCertificateResponse = $iot->DescribeCertificate(
      CertificateId => 'MyCertificateId',

    );

    # Results:
    my $CertificateDescription =
      $DescribeCertificateResponse->CertificateDescription;

    # Returns a L<Paws::IoT::DescribeCertificateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DescribeCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateId => Str

The ID of the certificate. (The last part of the certificate ARN
contains the certificate ID.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCertificate in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

