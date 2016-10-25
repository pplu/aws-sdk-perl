package Paws::EC2::StaleIpPermission;
  use Moose;
  has FromPort => (is => 'ro', isa => 'Int', xmlname => 'fromPort', traits => ['Unwrapped']);
  has IpProtocol => (is => 'ro', isa => 'Str', xmlname => 'ipProtocol', traits => ['Unwrapped']);
  has IpRanges => (is => 'ro', isa => 'ArrayRef[Str|Undef]', xmlname => 'ipRanges', traits => ['Unwrapped']);
  has PrefixListIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', xmlname => 'prefixListIds', traits => ['Unwrapped']);
  has ToPort => (is => 'ro', isa => 'Int', xmlname => 'toPort', traits => ['Unwrapped']);
  has UserIdGroupPairs => (is => 'ro', isa => 'ArrayRef[Paws::EC2::UserIdGroupPair]', xmlname => 'groups', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::StaleIpPermission

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::StaleIpPermission object:

  $service_obj->Method(Att1 => { FromPort => $value, ..., UserIdGroupPairs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::StaleIpPermission object:

  $result = $service_obj->Method(...);
  $result->Att1->FromPort

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 FromPort => Int

  The start of the port range for the TCP and UDP protocols, or an ICMP
type number. A value of C<-1> indicates all ICMP types.


=head2 IpProtocol => Str

  The IP protocol name (for C<tcp>, C<udp>, and C<icmp>) or number (see
Protocol Numbers).


=head2 IpRanges => ArrayRef[Str|Undef]

  One or more IP ranges. Not applicable for stale security group rules.


=head2 PrefixListIds => ArrayRef[Str|Undef]

  One or more prefix list IDs for an AWS service. Not applicable for
stale security group rules.


=head2 ToPort => Int

  The end of the port range for the TCP and UDP protocols, or an ICMP
type number. A value of C<-1> indicates all ICMP types.


=head2 UserIdGroupPairs => ArrayRef[L<Paws::EC2::UserIdGroupPair>]

  One or more security group pairs. Returns the ID of the referenced
security group and VPC, and the ID and status of the VPC peering
connection.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
