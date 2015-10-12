
package Paws::IoT::DescribeCertificate;
  use Moose;
  has certificateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'certificateId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCertificate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/certificates/{certificateId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DescribeCertificateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCertificateResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeCertificate - Arguments for method DescribeCertificate on Paws::IoT

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCertificate on the 
AWS IoT service. Use the attributes of this class
as arguments to method DescribeCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCertificate.

As an example:

  $service_obj->DescribeCertificate(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> certificateId => Str

  The ID of the certificate.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCertificate in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

