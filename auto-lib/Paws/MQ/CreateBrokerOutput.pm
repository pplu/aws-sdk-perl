package Paws::MQ::CreateBrokerOutput;
  use Moose;
  has BrokerArn => (is => 'ro', isa => 'Str', request_name => 'brokerArn', traits => ['NameInRequest']);
  has BrokerId => (is => 'ro', isa => 'Str', request_name => 'brokerId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::CreateBrokerOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::CreateBrokerOutput object:

  $service_obj->Method(Att1 => { BrokerArn => $value, ..., BrokerId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::CreateBrokerOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->BrokerArn

=head1 DESCRIPTION

Returns information about the created broker.

=head1 ATTRIBUTES


=head2 BrokerArn => Str

  The Amazon Resource Name (ARN) of the broker.


=head2 BrokerId => Str

  The unique ID that Amazon MQ generates for the broker.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

