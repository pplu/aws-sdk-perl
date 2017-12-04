package Paws::RDS::Certificate;
  use Moose;
  has CertificateArn => (is => 'ro', isa => 'Str');
  has CertificateIdentifier => (is => 'ro', isa => 'Str');
  has CertificateType => (is => 'ro', isa => 'Str');
  has Thumbprint => (is => 'ro', isa => 'Str');
  has ValidFrom => (is => 'ro', isa => 'Str');
  has ValidTill => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::Certificate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RDS::Certificate object:

  $service_obj->Method(Att1 => { CertificateArn => $value, ..., ValidTill => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RDS::Certificate object:

  $result = $service_obj->Method(...);
  $result->Att1->CertificateArn

=head1 DESCRIPTION

A CA certificate for an AWS account.

=head1 ATTRIBUTES


=head2 CertificateArn => Str

  The Amazon Resource Name (ARN) for the certificate.


=head2 CertificateIdentifier => Str

  The unique key that identifies a certificate.


=head2 CertificateType => Str

  The type of the certificate.


=head2 Thumbprint => Str

  The thumbprint of the certificate.


=head2 ValidFrom => Str

  The starting date from which the certificate is valid.


=head2 ValidTill => Str

  The final date that the certificate continues to be valid.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

