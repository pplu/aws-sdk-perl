package Paws::SecurityHub::AwsEc2SecurityGroupIpPermission;
  use Moose;
  has FromPort => (is => 'ro', isa => 'Int');
  has IpProtocol => (is => 'ro', isa => 'Str');
  has IpRanges => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsEc2SecurityGroupIpRange]');
  has Ipv6Ranges => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsEc2SecurityGroupIpv6Range]');
  has PrefixListIds => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsEc2SecurityGroupPrefixListId]');
  has ToPort => (is => 'ro', isa => 'Int');
  has UserIdGroupPairs => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsEc2SecurityGroupUserIdGroupPair]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsEc2SecurityGroupIpPermission

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsEc2SecurityGroupIpPermission object:

  $service_obj->Method(Att1 => { FromPort => $value, ..., UserIdGroupPairs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsEc2SecurityGroupIpPermission object:

  $result = $service_obj->Method(...);
  $result->Att1->FromPort

=head1 DESCRIPTION

An IP permission for an EC2 security group.

=head1 ATTRIBUTES


=head2 FromPort => Int

  The start of the port range for the TCP and UDP protocols, or an
ICMP/ICMPv6 type number.

A value of -1 indicates all ICMP/ICMPv6 types. If you specify all
ICMP/ICMPv6 types, you must specify all codes.


=head2 IpProtocol => Str

  The IP protocol name (C<tcp>, C<udp>, C<icmp>, C<icmpv6>) or number.

[VPC only] Use C<-1> to specify all protocols.

When authorizing security group rules, specifying -1 or a protocol
number other than C<tcp>, C<udp>, C<icmp>, or C<icmpv6> allows traffic
on all ports, regardless of any port range you specify.

For C<tcp>, C<udp>, and C<icmp>, you must specify a port range.

For C<icmpv6>, the port range is optional. If you omit the port range,
traffic for all types and codes is allowed.


=head2 IpRanges => ArrayRef[L<Paws::SecurityHub::AwsEc2SecurityGroupIpRange>]

  The IPv4 ranges.


=head2 Ipv6Ranges => ArrayRef[L<Paws::SecurityHub::AwsEc2SecurityGroupIpv6Range>]

  The IPv6 ranges.


=head2 PrefixListIds => ArrayRef[L<Paws::SecurityHub::AwsEc2SecurityGroupPrefixListId>]

  [VPC only] The prefix list IDs for an AWS service. With outbound rules,
this is the AWS service to access through a VPC endpoint from instances
associated with the security group.


=head2 ToPort => Int

  The end of the port range for the TCP and UDP protocols, or an
ICMP/ICMPv6 code.

A value of -1 indicates all ICMP/ICMPv6 codes. If you specify all
ICMP/ICMPv6 types, you must specify all codes.


=head2 UserIdGroupPairs => ArrayRef[L<Paws::SecurityHub::AwsEc2SecurityGroupUserIdGroupPair>]

  The security group and AWS account ID pairs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

