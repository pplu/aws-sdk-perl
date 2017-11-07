package Paws::ACM::RenewalSummary;
  use Moose;
  has DomainValidationOptions => (is => 'ro', isa => 'ArrayRef[Paws::ACM::DomainValidation]', required => 1);
  has RenewalStatus => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ACM::RenewalSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ACM::RenewalSummary object:

  $service_obj->Method(Att1 => { DomainValidationOptions => $value, ..., RenewalStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ACM::RenewalSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->DomainValidationOptions

=head1 DESCRIPTION

Contains information about the status of ACM's managed renewal
(http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html) for
the certificate. This structure exists only when the certificate type
is C<AMAZON_ISSUED>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainValidationOptions => ArrayRef[L<Paws::ACM::DomainValidation>]

  Contains information about the validation of each domain name in the
certificate, as it pertains to ACM's managed renewal
(http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html).
This is different from the initial validation that occurs as a result
of the RequestCertificate request. This field exists only when the
certificate type is C<AMAZON_ISSUED>.


=head2 B<REQUIRED> RenewalStatus => Str

  The status of ACM's managed renewal
(http://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html) of
the certificate.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ACM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

