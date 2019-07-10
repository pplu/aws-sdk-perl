package Paws::Kafka::ClientAuthentication;
  use Moose;
  has Tls => (is => 'ro', isa => 'Paws::Kafka::Tls', request_name => 'tls', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ClientAuthentication

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kafka::ClientAuthentication object:

  $service_obj->Method(Att1 => { Tls => $value, ..., Tls => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kafka::ClientAuthentication object:

  $result = $service_obj->Method(...);
  $result->Att1->Tls

=head1 DESCRIPTION

Includes all client authentication information.

=head1 ATTRIBUTES


=head2 Tls => L<Paws::Kafka::Tls>

  Details for ClientAuthentication using TLS.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

