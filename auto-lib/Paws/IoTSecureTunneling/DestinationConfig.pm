package Paws::IoTSecureTunneling::DestinationConfig;
  use Moose;
  has Services => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'services', traits => ['NameInRequest'], required => 1);
  has ThingName => (is => 'ro', isa => 'Str', request_name => 'thingName', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSecureTunneling::DestinationConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTSecureTunneling::DestinationConfig object:

  $service_obj->Method(Att1 => { Services => $value, ..., ThingName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTSecureTunneling::DestinationConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Services

=head1 DESCRIPTION

The destination configuration.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Services => ArrayRef[Str|Undef]

  A list of service names that identity the target application.
Currently, you can only specify a single name. The AWS IoT client
running on the destination device reads this value and uses it to look
up a port or an IP address and a port. The AWS IoT client instantiates
the local proxy which uses this information to connect to the
destination application.


=head2 B<REQUIRED> ThingName => Str

  The name of the IoT thing to which you want to connect.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTSecureTunneling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

