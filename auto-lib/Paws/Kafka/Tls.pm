package Paws::Kafka::Tls;
  use Moose;
  has CertificateAuthorityArnList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'certificateAuthorityArnList', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::Tls

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kafka::Tls object:

  $service_obj->Method(Att1 => { CertificateAuthorityArnList => $value, ..., CertificateAuthorityArnList => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kafka::Tls object:

  $result = $service_obj->Method(...);
  $result->Att1->CertificateAuthorityArnList

=head1 DESCRIPTION

Details for client authentication using TLS.

=head1 ATTRIBUTES


=head2 CertificateAuthorityArnList => ArrayRef[Str|Undef]

  List of ACM Certificate Authority ARNs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

