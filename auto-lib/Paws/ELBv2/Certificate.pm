package Paws::ELBv2::Certificate;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str');
  has IsDefault => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::Certificate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::Certificate object:

  $service_obj->Method(Att1 => { CertificateArn => $value, ..., IsDefault => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::Certificate object:

  $result = $service_obj->Method(...);
  $result->Att1->CertificateArn

=head1 DESCRIPTION

Information about an SSL server certificate.

=head1 ATTRIBUTES


=head2 CertificateArn => Str

  The Amazon Resource Name (ARN) of the certificate.


=head2 IsDefault => Bool

  Indicates whether the certificate is the default certificate. Do not
set C<IsDefault> when specifying a certificate as an input parameter.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

