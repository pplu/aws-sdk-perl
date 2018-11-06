
package Paws::EC2::DescribeSecurityGroups;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has GroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'GroupId' );
  has GroupNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'GroupName' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSecurityGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeSecurityGroupsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeSecurityGroups - Arguments for method DescribeSecurityGroups on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSecurityGroups on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeSecurityGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSecurityGroups.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeSecurityGroupsResult = $ec2->DescribeSecurityGroups(
      DryRun  => 1,    # OPTIONAL
      Filters => [
        {
          Name   => 'MyString',    # OPTIONAL
          Values => [
            'MyString', ...        # OPTIONAL
          ],                       # OPTIONAL
        },
        ...
      ],                           # OPTIONAL
      GroupIds => [
        'MyString', ...            # OPTIONAL
      ],                           # OPTIONAL
      GroupNames => [
        'MyString', ...            # OPTIONAL
      ],                           # OPTIONAL
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $NextToken      = $DescribeSecurityGroupsResult->NextToken;
    my $SecurityGroups = $DescribeSecurityGroupsResult->SecurityGroups;

    # Returns a L<Paws::EC2::DescribeSecurityGroupsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeSecurityGroups>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters. If using multiple filters for rules, the results
include security groups for which any combination of rules - not
necessarily a single rule - match all filters.

=over

=item *

C<description> - The description of the security group.

=item *

C<egress.ip-permission.cidr> - An IPv4 CIDR block for an outbound
security group rule.

=item *

C<egress.ip-permission.from-port> - For an outbound rule, the start of
port range for the TCP and UDP protocols, or an ICMP type number.

=item *

C<egress.ip-permission.group-id> - The ID of a security group that has
been referenced in an outbound security group rule.

=item *

C<egress.ip-permission.group-name> - The name of a security group that
has been referenced in an outbound security group rule.

=item *

C<egress.ip-permission.ipv6-cidr> - An IPv6 CIDR block for an outbound
security group rule.

=item *

C<egress.ip-permission.prefix-list-id> - The ID (prefix) of the AWS
service to which a security group rule allows outbound access.

=item *

C<egress.ip-permission.protocol> - The IP protocol for an outbound
security group rule (C<tcp> | C<udp> | C<icmp> or a protocol number).

=item *

C<egress.ip-permission.to-port> - For an outbound rule, the end of port
range for the TCP and UDP protocols, or an ICMP code.

=item *

C<egress.ip-permission.user-id> - The ID of an AWS account that has
been referenced in an outbound security group rule.

=item *

C<group-id> - The ID of the security group.

=item *

C<group-name> - The name of the security group.

=item *

C<ip-permission.cidr> - An IPv4 CIDR block for an inbound security
group rule.

=item *

C<ip-permission.from-port> - For an inbound rule, the start of port
range for the TCP and UDP protocols, or an ICMP type number.

=item *

C<ip-permission.group-id> - The ID of a security group that has been
referenced in an inbound security group rule.

=item *

C<ip-permission.group-name> - The name of a security group that has
been referenced in an inbound security group rule.

=item *

C<ip-permission.ipv6-cidr> - An IPv6 CIDR block for an inbound security
group rule.

=item *

C<ip-permission.prefix-list-id> - The ID (prefix) of the AWS service
from which a security group rule allows inbound access.

=item *

C<ip-permission.protocol> - The IP protocol for an inbound security
group rule (C<tcp> | C<udp> | C<icmp> or a protocol number).

=item *

C<ip-permission.to-port> - For an inbound rule, the end of port range
for the TCP and UDP protocols, or an ICMP code.

=item *

C<ip-permission.user-id> - The ID of an AWS account that has been
referenced in an inbound security group rule.

=item *

C<owner-id> - The AWS account ID of the owner of the security group.

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

C<vpc-id> - The ID of the VPC specified when the security group was
created.

=back




=head2 GroupIds => ArrayRef[Str|Undef]

One or more security group IDs. Required for security groups in a
nondefault VPC.

Default: Describes all your security groups.



=head2 GroupNames => ArrayRef[Str|Undef]

[EC2-Classic and default VPC only] One or more security group names.
You can specify either the security group name or the security group
ID. For security groups in a nondefault VPC, use the C<group-name>
filter to describe security groups by name.

Default: Describes all your security groups.



=head2 MaxResults => Int

The maximum number of results to return in a single call. To retrieve
the remaining results, make another request with the returned
C<NextToken> value. This value can be between 5 and 1000. If this
parameter is not specified, then all results are returned.



=head2 NextToken => Str

The token to request the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSecurityGroups in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

