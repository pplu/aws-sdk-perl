package Paws::MQ::BrokerInstance;
  use Moose;
  has ConsoleURL => (is => 'ro', isa => 'Str', request_name => 'consoleURL', traits => ['NameInRequest']);
  has Endpoints => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'endpoints', traits => ['NameInRequest']);
  has IpAddress => (is => 'ro', isa => 'Str', request_name => 'ipAddress', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::BrokerInstance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MQ::BrokerInstance object:

  $service_obj->Method(Att1 => { ConsoleURL => $value, ..., IpAddress => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MQ::BrokerInstance object:

  $result = $service_obj->Method(...);
  $result->Att1->ConsoleURL

=head1 DESCRIPTION

Returns information about all brokers.

=head1 ATTRIBUTES


=head2 ConsoleURL => Str

  The URL of the broker's ActiveMQ Web Console.


=head2 Endpoints => ArrayRef[Str|Undef]

  The broker's wire-level protocol endpoints.


=head2 IpAddress => Str

  The IP address of the Elastic Network Interface (ENI) attached to the
broker.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MQ>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

