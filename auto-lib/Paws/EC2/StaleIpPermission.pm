package Paws::EC2::StaleIpPermission;
  use Moose;
  has FromPort => (is => 'ro', isa => 'Int', request_name => 'fromPort', traits => ['NameInRequest']);
  has IpProtocol => (is => 'ro', isa => 'Str', request_name => 'ipProtocol', traits => ['NameInRequest']);
  has IpRanges => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'ipRanges', traits => ['NameInRequest']);
  has PrefixListIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'prefixListIds', traits => ['NameInRequest']);
  has ToPort => (is => 'ro', isa => 'Int', request_name => 'toPort', traits => ['NameInRequest']);
  has UserIdGroupPairs => (is => 'ro', isa => 'ArrayRef[Paws::EC2::UserIdGroupPair]', request_name => 'groups', traits => ['NameInRequest']);
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
Protocol Numbers)
(http://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml).


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

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
