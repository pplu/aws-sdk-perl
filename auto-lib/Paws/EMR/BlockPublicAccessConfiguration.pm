package Paws::EMR::BlockPublicAccessConfiguration;
  use Moose;
  has BlockPublicSecurityGroupRules => (is => 'ro', isa => 'Bool', required => 1);
  has PermittedPublicSecurityGroupRuleRanges => (is => 'ro', isa => 'ArrayRef[Paws::EMR::PortRange]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::BlockPublicAccessConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::BlockPublicAccessConfiguration object:

  $service_obj->Method(Att1 => { BlockPublicSecurityGroupRules => $value, ..., PermittedPublicSecurityGroupRuleRanges => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::BlockPublicAccessConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->BlockPublicSecurityGroupRules

=head1 DESCRIPTION

A configuration for Amazon EMR block public access. When
C<BlockPublicSecurityGroupRules> is set to C<true>, Amazon EMR prevents
cluster creation if one of the cluster's security groups has a rule
that allows inbound traffic from 0.0.0.0/0 or ::/0 on a port, unless
the port is specified as an exception using
C<PermittedPublicSecurityGroupRuleRanges>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BlockPublicSecurityGroupRules => Bool

  Indicates whether EMR block public access is enabled (C<true>) or
disabled (C<false>). By default, the value is C<false> for accounts
that have created EMR clusters before July 2019. For accounts created
after this, the default is C<true>.


=head2 PermittedPublicSecurityGroupRuleRanges => ArrayRef[L<Paws::EMR::PortRange>]

  Specifies ports and port ranges that are permitted to have security
group rules that allow inbound traffic from all public sources. For
example, if Port 23 (Telnet) is specified for
C<PermittedPublicSecurityGroupRuleRanges>, Amazon EMR allows cluster
creation if a security group associated with the cluster has a rule
that allows inbound traffic on Port 23 from IPv4 0.0.0.0/0 or IPv6 port
::/0 as the source.

By default, Port 22, which is used for SSH access to the cluster EC2
instances, is in the list of C<PermittedPublicSecurityGroupRuleRanges>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

