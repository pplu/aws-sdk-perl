package Paws::EC2::IpPermission;
  use Moose;
  has FromPort => (is => 'ro', isa => 'Int', request_name => 'fromPort', traits => ['NameInRequest']);
  has IpProtocol => (is => 'ro', isa => 'Str', request_name => 'ipProtocol', traits => ['NameInRequest']);
  has IpRanges => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpRange]', request_name => 'ipRanges', traits => ['NameInRequest']);
  has Ipv6Ranges => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Ipv6Range]', request_name => 'ipv6Ranges', traits => ['NameInRequest']);
  has PrefixListIds => (is => 'ro', isa => 'ArrayRef[Paws::EC2::PrefixListId]', request_name => 'prefixListIds', traits => ['NameInRequest']);
  has ToPort => (is => 'ro', isa => 'Int', request_name => 'toPort', traits => ['NameInRequest']);
  has UserIdGroupPairs => (is => 'ro', isa => 'ArrayRef[Paws::EC2::UserIdGroupPair]', request_name => 'groups', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::IpPermission

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::IpPermission object:

  $service_obj->Method(Att1 => { FromPort => $value, ..., UserIdGroupPairs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::IpPermission object:

  $result = $service_obj->Method(...);
  $result->Att1->FromPort

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 FromPort => Int

  The start of port range for the TCP and UDP protocols, or an
ICMP/ICMPv6 type number. A value of C<-1> indicates all ICMP/ICMPv6
types. If you specify all ICMP/ICMPv6 types, you must specify all
codes.


=head2 IpProtocol => Str

  The IP protocol name (C<tcp>, C<udp>, C<icmp>) or number (see Protocol
Numbers
(http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml)).

[EC2-VPC only] Use C<-1> to specify all protocols. When authorizing
security group rules, specifying C<-1> or a protocol number other than
C<tcp>, C<udp>, C<icmp>, or C<58> (ICMPv6) allows traffic on all ports,
regardless of any port range you specify. For C<tcp>, C<udp>, and
C<icmp>, you must specify a port range. For C<58> (ICMPv6), you can
optionally specify a port range; if you don't, traffic for all types
and codes is allowed when authorizing rules.


=head2 IpRanges => ArrayRef[L<Paws::EC2::IpRange>]

  One or more IPv4 ranges.


=head2 Ipv6Ranges => ArrayRef[L<Paws::EC2::Ipv6Range>]

  [EC2-VPC only] One or more IPv6 ranges.


=head2 PrefixListIds => ArrayRef[L<Paws::EC2::PrefixListId>]

  [EC2-VPC only] One or more prefix list IDs for an AWS service. With
AuthorizeSecurityGroupEgress, this is the AWS service that you want to
access through a VPC endpoint from instances associated with the
security group.


=head2 ToPort => Int

  The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6
code. A value of C<-1> indicates all ICMP/ICMPv6 codes for the
specified ICMP type. If you specify all ICMP/ICMPv6 types, you must
specify all codes.


=head2 UserIdGroupPairs => ArrayRef[L<Paws::EC2::UserIdGroupPair>]

  One or more security group and AWS account ID pairs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
