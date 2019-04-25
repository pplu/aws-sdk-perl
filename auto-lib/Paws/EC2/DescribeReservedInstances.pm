
package Paws::EC2::DescribeReservedInstances;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has OfferingClass => (is => 'ro', isa => 'Str');
  has OfferingType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'offeringType' );
  has ReservedInstancesIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ReservedInstancesId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeReservedInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeReservedInstances - Arguments for method DescribeReservedInstances on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeReservedInstances on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeReservedInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeReservedInstances.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeReservedInstancesResult = $ec2->DescribeReservedInstances(
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
      OfferingClass        => 'standard',             # OPTIONAL
      OfferingType         => 'Heavy Utilization',    # OPTIONAL
      ReservedInstancesIds => [
        'MyString', ...                               # OPTIONAL
      ],                                              # OPTIONAL
    );

    # Results:
    my $ReservedInstances = $DescribeReservedInstancesResult->ReservedInstances;

    # Returns a L<Paws::EC2::DescribeReservedInstancesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeReservedInstances>

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

C<availability-zone> - The Availability Zone where the Reserved
Instance can be used.

=item *

C<duration> - The duration of the Reserved Instance (one year or three
years), in seconds (C<31536000> | C<94608000>).

=item *

C<end> - The time when the Reserved Instance expires (for example,
2015-08-07T11:54:42.000Z).

=item *

C<fixed-price> - The purchase price of the Reserved Instance (for
example, 9800.0).

=item *

C<instance-type> - The instance type that is covered by the
reservation.

=item *

C<scope> - The scope of the Reserved Instance (C<Region> or
C<Availability Zone>).

=item *

C<product-description> - The Reserved Instance product platform
description. Instances that include C<(Amazon VPC)> in the product
platform description will only be displayed to EC2-Classic account
holders and are for use with Amazon VPC (C<Linux/UNIX> | C<Linux/UNIX
(Amazon VPC)> | C<SUSE Linux> | C<SUSE Linux (Amazon VPC)> | C<Red Hat
Enterprise Linux> | C<Red Hat Enterprise Linux (Amazon VPC)> |
C<Windows> | C<Windows (Amazon VPC)> | C<Windows with SQL Server
Standard> | C<Windows with SQL Server Standard (Amazon VPC)> |
C<Windows with SQL Server Web> | C<Windows with SQL Server Web (Amazon
VPC)> | C<Windows with SQL Server Enterprise> | C<Windows with SQL
Server Enterprise (Amazon VPC)>).

=item *

C<reserved-instances-id> - The ID of the Reserved Instance.

=item *

C<start> - The time at which the Reserved Instance purchase request was
placed (for example, 2014-08-07T11:54:42.000Z).

=item *

C<state> - The state of the Reserved Instance (C<payment-pending> |
C<active> | C<payment-failed> | C<retired>).

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

C<usage-price> - The usage price of the Reserved Instance, per hour
(for example, 0.84).

=back




=head2 OfferingClass => Str

Describes whether the Reserved Instance is Standard or Convertible.

Valid values are: C<"standard">, C<"convertible">

=head2 OfferingType => Str

The Reserved Instance offering type. If you are using tools that
predate the 2011-11-01 API version, you only have access to the
C<Medium Utilization> Reserved Instance offering type.

Valid values are: C<"Heavy Utilization">, C<"Medium Utilization">, C<"Light Utilization">, C<"No Upfront">, C<"Partial Upfront">, C<"All Upfront">

=head2 ReservedInstancesIds => ArrayRef[Str|Undef]

One or more Reserved Instance IDs.

Default: Describes all your Reserved Instances, or only those otherwise
specified.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeReservedInstances in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

