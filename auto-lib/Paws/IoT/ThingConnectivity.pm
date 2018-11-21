package Paws::IoT::ThingConnectivity;
  use Moose;
  has Connected => (is => 'ro', isa => 'Bool', request_name => 'connected', traits => ['NameInRequest']);
  has Timestamp => (is => 'ro', isa => 'Int', request_name => 'timestamp', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ThingConnectivity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::ThingConnectivity object:

  $service_obj->Method(Att1 => { Connected => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::ThingConnectivity object:

  $result = $service_obj->Method(...);
  $result->Att1->Connected

=head1 DESCRIPTION

The connectivity status of the thing.

=head1 ATTRIBUTES


=head2 Connected => Bool

  True if the thing is connected to the AWS IoT service, false if it is
not connected.


=head2 Timestamp => Int

  The epoch time (in milliseconds) when the thing last connected or
disconnected. Note that if the thing has been disconnected for more
than a few weeks, the time value can be missing.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

