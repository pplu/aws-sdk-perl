package Paws::Lightsail::LoadBalancerTlsCertificateRenewalSummary;
  use Moose;
  has DomainValidationOptions => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::LoadBalancerTlsCertificateDomainValidationOption]', request_name => 'domainValidationOptions', traits => ['NameInRequest']);
  has RenewalStatus => (is => 'ro', isa => 'Str', request_name => 'renewalStatus', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::LoadBalancerTlsCertificateRenewalSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::LoadBalancerTlsCertificateRenewalSummary object:

  $service_obj->Method(Att1 => { DomainValidationOptions => $value, ..., RenewalStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::LoadBalancerTlsCertificateRenewalSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->DomainValidationOptions

=head1 DESCRIPTION

Contains information about the status of Lightsail's managed renewal
for the certificate.

=head1 ATTRIBUTES


=head2 DomainValidationOptions => ArrayRef[L<Paws::Lightsail::LoadBalancerTlsCertificateDomainValidationOption>]

  Contains information about the validation of each domain name in the
certificate, as it pertains to Lightsail's managed renewal. This is
different from the initial validation that occurs as a result of the
RequestCertificate request.


=head2 RenewalStatus => Str

  The status of Lightsail's managed renewal of the certificate. Valid
values are listed below.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

