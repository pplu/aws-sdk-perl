
package Paws::IoT::DeleteCertificate;
  use Moose;
  has CertificateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'certificateId', required => 1);
  has ForceDelete => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'forceDelete');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCertificate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/certificates/{certificateId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DeleteCertificate - Arguments for method DeleteCertificate on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCertificate on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method DeleteCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCertificate.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    $iot->DeleteCertificate(
      CertificateId => 'MyCertificateId',
      ForceDelete   => 1,                   # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/DeleteCertificate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateId => Str

The ID of the certificate. (The last part of the certificate ARN
contains the certificate ID.)



=head2 ForceDelete => Bool

Forces a certificate request to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCertificate in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

