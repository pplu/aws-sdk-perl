
package Paws::EC2::DescribeAddresses;
  use Moose;
  has AllocationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'AllocationId' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has PublicIps => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'PublicIp' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAddresses');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeAddressesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeAddresses - Arguments for method DescribeAddresses on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAddresses on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method DescribeAddresses.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAddresses.

As an example:

  $service_obj->DescribeAddresses(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AllocationIds => ArrayRef[Str|Undef]

[EC2-VPC] One or more allocation IDs.

Default: Describes all your Elastic IP addresses.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters. Filter names and values are case-sensitive.

=over

=item *

C<allocation-id> - [EC2-VPC] The allocation ID for the address.

=item *

C<association-id> - [EC2-VPC] The association ID for the address.

=item *

C<domain> - Indicates whether the address is for use in EC2-Classic
(C<standard>) or in a VPC (C<vpc>).

=item *

C<instance-id> - The ID of the instance the address is associated with,
if any.

=item *

C<network-interface-id> - [EC2-VPC] The ID of the network interface
that the address is associated with, if any.

=item *

C<network-interface-owner-id> - The AWS account ID of the owner.

=item *

C<private-ip-address> - [EC2-VPC] The private IP address associated
with the Elastic IP address.

=item *

C<public-ip> - The Elastic IP address.

=item *

C<tag>:I<key>=I<value> - The key/value combination of a tag assigned to
the resource. Specify the key of the tag in the filter name and the
value of the tag in the filter value. For example, for the tag
Purpose=X, specify C<tag:Purpose> for the filter name and C<X> for the
filter value.

=item *

C<tag-key> - The key of a tag assigned to the resource. This filter is
independent of the C<tag-value> filter. For example, if you use both
the filter "tag-key=Purpose" and the filter "tag-value=X", you get any
resources assigned both the tag key Purpose (regardless of what the
tag's value is), and the tag value X (regardless of the tag's key). If
you want to list only resources where Purpose is X, see the
C<tag>:I<key>=I<value> filter.

=back




=head2 PublicIps => ArrayRef[Str|Undef]

[EC2-Classic] One or more Elastic IP addresses.

Default: Describes all your Elastic IP addresses.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAddresses in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

