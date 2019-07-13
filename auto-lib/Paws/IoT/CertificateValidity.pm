package Paws::IoT::CertificateValidity;
  use Moose;
  has NotAfter => (is => 'ro', isa => 'Str', request_name => 'notAfter', traits => ['NameInRequest']);
  has NotBefore => (is => 'ro', isa => 'Str', request_name => 'notBefore', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CertificateValidity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::CertificateValidity object:

  $service_obj->Method(Att1 => { NotAfter => $value, ..., NotBefore => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::CertificateValidity object:

  $result = $service_obj->Method(...);
  $result->Att1->NotAfter

=head1 DESCRIPTION

When the certificate is valid.

=head1 ATTRIBUTES


=head2 NotAfter => Str

  The certificate is not valid after this date.


=head2 NotBefore => Str

  The certificate is not valid before this date.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

