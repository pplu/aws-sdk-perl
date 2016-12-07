package Paws::EC2::NetworkAclEntry;
  use Moose;
  has CidrBlock => (is => 'ro', isa => 'Str', xmlname => 'cidrBlock', traits => ['Unwrapped']);
  has Egress => (is => 'ro', isa => 'Bool', xmlname => 'egress', traits => ['Unwrapped']);
  has IcmpTypeCode => (is => 'ro', isa => 'Paws::EC2::IcmpTypeCode', xmlname => 'icmpTypeCode', traits => ['Unwrapped']);
  has Ipv6CidrBlock => (is => 'ro', isa => 'Str', xmlname => 'ipv6CidrBlock', traits => ['Unwrapped']);
  has PortRange => (is => 'ro', isa => 'Paws::EC2::PortRange', xmlname => 'portRange', traits => ['Unwrapped']);
  has Protocol => (is => 'ro', isa => 'Str', xmlname => 'protocol', traits => ['Unwrapped']);
  has RuleAction => (is => 'ro', isa => 'Str', xmlname => 'ruleAction', traits => ['Unwrapped']);
  has RuleNumber => (is => 'ro', isa => 'Int', xmlname => 'ruleNumber', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::NetworkAclEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::NetworkAclEntry object:

  $service_obj->Method(Att1 => { CidrBlock => $value, ..., RuleNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::NetworkAclEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->CidrBlock

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CidrBlock => Str

  The IPv4 network range to allow or deny, in CIDR notation.


=head2 Egress => Bool

  Indicates whether the rule is an egress rule (applied to traffic
leaving the subnet).


=head2 IcmpTypeCode => L<Paws::EC2::IcmpTypeCode>

  ICMP protocol: The ICMP type and code.


=head2 Ipv6CidrBlock => Str

  The IPv6 network range to allow or deny, in CIDR notation.


=head2 PortRange => L<Paws::EC2::PortRange>

  TCP or UDP protocols: The range of ports the rule applies to.


=head2 Protocol => Str

  The protocol. A value of C<-1> means all protocols.


=head2 RuleAction => Str

  Indicates whether to allow or deny the traffic that matches the rule.


=head2 RuleNumber => Int

  The rule number for the entry. ACL entries are processed in ascending
order by rule number.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
