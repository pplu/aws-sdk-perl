package Paws::CloudHSMv2::Certificates;
  use Moose;
  has AwsHardwareCertificate => (is => 'ro', isa => 'Str');
  has ClusterCertificate => (is => 'ro', isa => 'Str');
  has ClusterCsr => (is => 'ro', isa => 'Str');
  has HsmCertificate => (is => 'ro', isa => 'Str');
  has ManufacturerHardwareCertificate => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::Certificates

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudHSMv2::Certificates object:

  $service_obj->Method(Att1 => { AwsHardwareCertificate => $value, ..., ManufacturerHardwareCertificate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudHSMv2::Certificates object:

  $result = $service_obj->Method(...);
  $result->Att1->AwsHardwareCertificate

=head1 DESCRIPTION

Contains one or more certificates or a certificate signing request
(CSR).

=head1 ATTRIBUTES


=head2 AwsHardwareCertificate => Str

  The HSM hardware certificate issued (signed) by AWS CloudHSM.


=head2 ClusterCertificate => Str

  The cluster certificate issued (signed) by the issuing certificate
authority (CA) of the cluster's owner.


=head2 ClusterCsr => Str

  The cluster's certificate signing request (CSR). The CSR exists only
when the cluster's state is C<UNINITIALIZED>.


=head2 HsmCertificate => Str

  The HSM certificate issued (signed) by the HSM hardware.


=head2 ManufacturerHardwareCertificate => Str

  The HSM hardware certificate issued (signed) by the hardware
manufacturer.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudHSMv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

