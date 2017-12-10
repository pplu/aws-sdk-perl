package Paws::Lightsail::InstancePortState;
  use Moose;
  has FromPort => (is => 'ro', isa => 'Int', request_name => 'fromPort', traits => ['NameInRequest']);
  has Protocol => (is => 'ro', isa => 'Str', request_name => 'protocol', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has ToPort => (is => 'ro', isa => 'Int', request_name => 'toPort', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::InstancePortState

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::InstancePortState object:

  $service_obj->Method(Att1 => { FromPort => $value, ..., ToPort => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::InstancePortState object:

  $result = $service_obj->Method(...);
  $result->Att1->FromPort

=head1 DESCRIPTION

Describes the port state.

=head1 ATTRIBUTES


=head2 FromPort => Int

  The first port in the range.


=head2 Protocol => Str

  The protocol being used. Can be one of the following.

=over

=item *

C<tcp> - Transmission Control Protocol (TCP) provides reliable,
ordered, and error-checked delivery of streamed data between
applications running on hosts communicating by an IP network. If you
have an application that doesn't require reliable data stream service,
use UDP instead.

=item *

C<all> - All transport layer protocol types. For more general
information, see Transport layer
(https://en.wikipedia.org/wiki/Transport_layer) on Wikipedia.

=item *

C<udp> - With User Datagram Protocol (UDP), computer applications can
send messages (or datagrams) to other hosts on an Internet Protocol
(IP) network. Prior communications are not required to set up
transmission channels or data paths. Applications that don't require
reliable data stream service can use UDP, which provides a
connectionless datagram service that emphasizes reduced latency over
reliability. If you do require reliable data stream service, use TCP
instead.

=back



=head2 State => Str

  Specifies whether the instance port is C<open> or C<closed>.


=head2 ToPort => Int

  The last port in the range.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

