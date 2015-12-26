
package Paws::EC2::DescribeReservedInstancesOfferings;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has IncludeMarketplace => (is => 'ro', isa => 'Bool');
  has InstanceTenancy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceTenancy' );
  has InstanceType => (is => 'ro', isa => 'Str');
  has MaxDuration => (is => 'ro', isa => 'Int');
  has MaxInstanceCount => (is => 'ro', isa => 'Int');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has MinDuration => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has OfferingType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'offeringType' );
  has ProductDescription => (is => 'ro', isa => 'Str');
  has ReservedInstancesOfferingIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'ReservedInstancesOfferingId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstancesOfferings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeReservedInstancesOfferingsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeReservedInstancesOfferings - Arguments for method DescribeReservedInstancesOfferings on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeReservedInstancesOfferings on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method DescribeReservedInstancesOfferings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeReservedInstancesOfferings.

As an example:

  $service_obj->DescribeReservedInstancesOfferings(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The Availability Zone in which the Reserved instance can be used.



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
instance can be used.

=item *

C<duration> - The duration of the Reserved instance (for example, one
year or three years), in seconds (C<31536000> | C<94608000>).

=item *

C<fixed-price> - The purchase price of the Reserved instance (for
example, 9800.0).

=item *

C<instance-type> - The instance type that is covered by the
reservation.

=item *

C<marketplace> - Set to C<true> to show only Reserved Instance
Marketplace offerings. When this filter is not used, which is the
default behavior, all offerings from both AWS and the Reserved Instance
Marketplace are listed.

=item *

C<product-description> - The Reserved instance product platform
description. Instances that include C<(Amazon VPC)> in the product
platform description will only be displayed to EC2-Classic account
holders and are for use with Amazon VPC. (C<Linux/UNIX> | C<Linux/UNIX
(Amazon VPC)> | C<SUSE Linux> | C<SUSE Linux (Amazon VPC)> | C<Red Hat
Enterprise Linux> | C<Red Hat Enterprise Linux (Amazon VPC)> |
C<Windows> | C<Windows (Amazon VPC)> | C<Windows with SQL Server
Standard> | C<Windows with SQL Server Standard (Amazon VPC)> |
C<Windows with SQL Server Web> | C< Windows with SQL Server Web (Amazon
VPC)> | C<Windows with SQL Server Enterprise> | C<Windows with SQL
Server Enterprise (Amazon VPC)>)

=item *

C<reserved-instances-offering-id> - The Reserved instances' offering
ID.

=item *

C<usage-price> - The usage price of the Reserved instance, per hour
(for example, 0.84).

=back




=head2 IncludeMarketplace => Bool

Include Reserved Instance Marketplace offerings in the response.



=head2 InstanceTenancy => Str

The tenancy of the instances covered by the reservation. A Reserved
instance with a tenancy of C<dedicated> is applied to instances that
run in a VPC on single-tenant hardware (i.e., Dedicated instances).

Default: C<default>

Valid values are: C<"default">, C<"dedicated">, C<"host">

=head2 InstanceType => Str

The instance type that the reservation will cover (for example,
C<m1.small>). For more information, see Instance Types in the I<Amazon
Elastic Compute Cloud User Guide>.

Valid values are: C<"t1.micro">, C<"m1.small">, C<"m1.medium">, C<"m1.large">, C<"m1.xlarge">, C<"m3.medium">, C<"m3.large">, C<"m3.xlarge">, C<"m3.2xlarge">, C<"m4.large">, C<"m4.xlarge">, C<"m4.2xlarge">, C<"m4.4xlarge">, C<"m4.10xlarge">, C<"t2.micro">, C<"t2.small">, C<"t2.medium">, C<"t2.large">, C<"m2.xlarge">, C<"m2.2xlarge">, C<"m2.4xlarge">, C<"cr1.8xlarge">, C<"i2.xlarge">, C<"i2.2xlarge">, C<"i2.4xlarge">, C<"i2.8xlarge">, C<"hi1.4xlarge">, C<"hs1.8xlarge">, C<"c1.medium">, C<"c1.xlarge">, C<"c3.large">, C<"c3.xlarge">, C<"c3.2xlarge">, C<"c3.4xlarge">, C<"c3.8xlarge">, C<"c4.large">, C<"c4.xlarge">, C<"c4.2xlarge">, C<"c4.4xlarge">, C<"c4.8xlarge">, C<"cc1.4xlarge">, C<"cc2.8xlarge">, C<"g2.2xlarge">, C<"cg1.4xlarge">, C<"r3.large">, C<"r3.xlarge">, C<"r3.2xlarge">, C<"r3.4xlarge">, C<"r3.8xlarge">, C<"d2.xlarge">, C<"d2.2xlarge">, C<"d2.4xlarge">, C<"d2.8xlarge">

=head2 MaxDuration => Int

The maximum duration (in seconds) to filter when searching for
offerings.

Default: 94608000 (3 years)



=head2 MaxInstanceCount => Int

The maximum number of instances to filter when searching for offerings.

Default: 20



=head2 MaxResults => Int

The maximum number of results to return for the request in a single
page. The remaining results of the initial request can be seen by
sending another request with the returned C<NextToken> value. The
maximum is 100.

Default: 100



=head2 MinDuration => Int

The minimum duration (in seconds) to filter when searching for
offerings.

Default: 2592000 (1 month)



=head2 NextToken => Str

The token to retrieve the next page of results.



=head2 OfferingType => Str

The Reserved instance offering type. If you are using tools that
predate the 2011-11-01 API version, you only have access to the
C<Medium Utilization> Reserved instance offering type.

Valid values are: C<"Heavy Utilization">, C<"Medium Utilization">, C<"Light Utilization">, C<"No Upfront">, C<"Partial Upfront">, C<"All Upfront">

=head2 ProductDescription => Str

The Reserved instance product platform description. Instances that
include C<(Amazon VPC)> in the description are for use with Amazon VPC.

Valid values are: C<"Linux/UNIX">, C<"Linux/UNIX (Amazon VPC)">, C<"Windows">, C<"Windows (Amazon VPC)">

=head2 ReservedInstancesOfferingIds => ArrayRef[Str]

One or more Reserved instances offering IDs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeReservedInstancesOfferings in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

