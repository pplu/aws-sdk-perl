
package Paws::EC2::DescribeNetworkAcls;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has NetworkAclIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'NetworkAclId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNetworkAcls');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeNetworkAclsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeNetworkAcls - Arguments for method DescribeNetworkAcls on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeNetworkAcls on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeNetworkAcls.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeNetworkAcls.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To describe a network ACL
    # This example describes the specified network ACL.
    my $DescribeNetworkAclsResult = $ec2->DescribeNetworkAcls(
      {
        'NetworkAclIds' => ['acl-5fb85d36']
      }
    );

    # Results:
    my $NetworkAcls = $DescribeNetworkAclsResult->NetworkAcls;

    # Returns a L<Paws::EC2::DescribeNetworkAclsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeNetworkAcls>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<association.association-id> - The ID of an association ID for the
ACL.

=item *

C<association.network-acl-id> - The ID of the network ACL involved in
the association.

=item *

C<association.subnet-id> - The ID of the subnet involved in the
association.

=item *

C<default> - Indicates whether the ACL is the default network ACL for
the VPC.

=item *

C<entry.cidr> - The IPv4 CIDR range specified in the entry.

=item *

C<entry.icmp.code> - The ICMP code specified in the entry, if any.

=item *

C<entry.icmp.type> - The ICMP type specified in the entry, if any.

=item *

C<entry.ipv6-cidr> - The IPv6 CIDR range specified in the entry.

=item *

C<entry.port-range.from> - The start of the port range specified in the
entry.

=item *

C<entry.port-range.to> - The end of the port range specified in the
entry.

=item *

C<entry.protocol> - The protocol specified in the entry (C<tcp> |
C<udp> | C<icmp> or a protocol number).

=item *

C<entry.rule-action> - Allows or denies the matching traffic (C<allow>
| C<deny>).

=item *

C<entry.rule-number> - The number of an entry (in other words, rule) in
the set of ACL entries.

=item *

C<network-acl-id> - The ID of the network ACL.

=item *

C<owner-id> - The ID of the AWS account that owns the network ACL.

=item *

C<tag>:E<lt>keyE<gt> - The key/value combination of a tag assigned to
the resource. Use the tag key in the filter name and the tag value as
the filter value. For example, to find all resources that have a tag
with the key C<Owner> and the value C<TeamA>, specify C<tag:Owner> for
the filter name and C<TeamA> for the filter value.

=item *

C<tag-key> - The key of a tag assigned to the resource. Use this filter
to find all resources assigned a tag with a specific key, regardless of
the tag value.

=item *

C<vpc-id> - The ID of the VPC for the network ACL.

=back




=head2 NetworkAclIds => ArrayRef[Str|Undef]

One or more network ACL IDs.

Default: Describes all your network ACLs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeNetworkAcls in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

