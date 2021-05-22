# Generated by default/object.tt
package Paws::Lightsail::PortInfo;
  use Moose;
  has CidrListAliases => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'cidrListAliases', traits => ['NameInRequest']);
  has Cidrs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'cidrs', traits => ['NameInRequest']);
  has FromPort => (is => 'ro', isa => 'Int', request_name => 'fromPort', traits => ['NameInRequest']);
  has Ipv6Cidrs => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'ipv6Cidrs', traits => ['NameInRequest']);
  has Protocol => (is => 'ro', isa => 'Str', request_name => 'protocol', traits => ['NameInRequest']);
  has ToPort => (is => 'ro', isa => 'Int', request_name => 'toPort', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::PortInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::PortInfo object:

  $service_obj->Method(Att1 => { CidrListAliases => $value, ..., ToPort => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::PortInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->CidrListAliases

=head1 DESCRIPTION

Describes ports to open on an instance, the IP addresses allowed to
connect to the instance through the ports, and the protocol.

=head1 ATTRIBUTES


=head2 CidrListAliases => ArrayRef[Str|Undef]

An alias that defines access for a preconfigured range of IP addresses.

The only alias currently supported is C<lightsail-connect>, which
allows IP addresses of the browser-based RDP/SSH client in the
Lightsail console to connect to your instance.


=head2 Cidrs => ArrayRef[Str|Undef]

The IPv4 address, or range of IPv4 addresses (in CIDR notation) that
are allowed to connect to an instance through the ports, and the
protocol.

The C<ipv6Cidrs> parameter lists the IPv6 addresses that are allowed to
connect to an instance.

Examples:

=over

=item *

To allow the IP address C<192.0.2.44>, specify C<192.0.2.44> or
C<192.0.2.44/32>.

=item *

To allow the IP addresses C<192.0.2.0> to C<192.0.2.255>, specify
C<192.0.2.0/24>.

=back

For more information about CIDR block notation, see Classless
Inter-Domain Routing
(https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing#CIDR_notation)
on I<Wikipedia>.


=head2 FromPort => Int

The first port in a range of open ports on an instance.

Allowed ports:

=over

=item *

TCP and UDP - C<0> to C<65535>

=item *

ICMP - The ICMP type for IPv4 addresses. For example, specify C<8> as
the C<fromPort> (ICMP type), and C<-1> as the C<toPort> (ICMP code), to
enable ICMP Ping. For more information, see Control Messages
(https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol#Control_messages)
on I<Wikipedia>.

=item *

ICMPv6 - The ICMP type for IPv6 addresses. For example, specify C<128>
as the C<fromPort> (ICMPv6 type), and C<0> as C<toPort> (ICMPv6 code).
For more information, see Internet Control Message Protocol for IPv6
(https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol_for_IPv6).

=back



=head2 Ipv6Cidrs => ArrayRef[Str|Undef]

The IPv6 address, or range of IPv6 addresses (in CIDR notation) that
are allowed to connect to an instance through the ports, and the
protocol. Only devices with an IPv6 address can connect to an instance
through IPv6; otherwise, IPv4 should be used.

The C<cidrs> parameter lists the IPv4 addresses that are allowed to
connect to an instance.

For more information about CIDR block notation, see Classless
Inter-Domain Routing
(https://en.wikipedia.org/wiki/Classless_Inter-Domain_Routing#CIDR_notation)
on I<Wikipedia>.


=head2 Protocol => Str

The IP protocol name.

The name can be one of the following:

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
(https://en.wikipedia.org/wiki/Transport_layer) on I<Wikipedia>.

=item *

C<udp> - With User Datagram Protocol (UDP), computer applications can
send messages (or datagrams) to other hosts on an Internet Protocol
(IP) network. Prior communications are not required to set up
transmission channels or data paths. Applications that don't require
reliable data stream service can use UDP, which provides a
connectionless datagram service that emphasizes reduced latency over
reliability. If you do require reliable data stream service, use TCP
instead.

=item *

C<icmp> - Internet Control Message Protocol (ICMP) is used to send
error messages and operational information indicating success or
failure when communicating with an instance. For example, an error is
indicated when an instance could not be reached. When you specify
C<icmp> as the C<protocol>, you must specify the ICMP type using the
C<fromPort> parameter, and ICMP code using the C<toPort> parameter.

=back



=head2 ToPort => Int

The last port in a range of open ports on an instance.

Allowed ports:

=over

=item *

TCP and UDP - C<0> to C<65535>

=item *

ICMP - The ICMP code for IPv4 addresses. For example, specify C<8> as
the C<fromPort> (ICMP type), and C<-1> as the C<toPort> (ICMP code), to
enable ICMP Ping. For more information, see Control Messages
(https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol#Control_messages)
on I<Wikipedia>.

=item *

ICMPv6 - The ICMP code for IPv6 addresses. For example, specify C<128>
as the C<fromPort> (ICMPv6 type), and C<0> as C<toPort> (ICMPv6 code).
For more information, see Internet Control Message Protocol for IPv6
(https://en.wikipedia.org/wiki/Internet_Control_Message_Protocol_for_IPv6).

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

