
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
  has OfferingClass => (is => 'ro', isa => 'Str');
  has OfferingType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'offeringType' );
  has ProductDescription => (is => 'ro', isa => 'Str');
  has ReservedInstancesOfferingIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ReservedInstancesOfferingId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservedInstancesOfferings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeReservedInstancesOfferingsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeReservedInstancesOfferings - Arguments for method DescribeReservedInstancesOfferings on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeReservedInstancesOfferings on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeReservedInstancesOfferings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeReservedInstancesOfferings.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeReservedInstancesOfferingsResult =
      $ec2->DescribeReservedInstancesOfferings(
      AvailabilityZone => 'MyString',    # OPTIONAL
      DryRun           => 1,             # OPTIONAL
      Filters          => [
        {
          Name   => 'MyString',
          Values => [ 'MyString', ... ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      IncludeMarketplace           => 1,                      # OPTIONAL
      InstanceTenancy              => 'default',              # OPTIONAL
      InstanceType                 => 't1.micro',             # OPTIONAL
      MaxDuration                  => 1,                      # OPTIONAL
      MaxInstanceCount             => 1,                      # OPTIONAL
      MaxResults                   => 1,                      # OPTIONAL
      MinDuration                  => 1,                      # OPTIONAL
      NextToken                    => 'MyString',             # OPTIONAL
      OfferingClass                => 'standard',             # OPTIONAL
      OfferingType                 => 'Heavy Utilization',    # OPTIONAL
      ProductDescription           => 'Linux/UNIX',           # OPTIONAL
      ReservedInstancesOfferingIds => [ 'MyReservedInstancesOfferingId', ... ]
      ,                                                       # OPTIONAL
      );

    # Results:
    my $NextToken = $DescribeReservedInstancesOfferingsResult->NextToken;
    my $ReservedInstancesOfferings =
      $DescribeReservedInstancesOfferingsResult->ReservedInstancesOfferings;

    # Returns a L<Paws::EC2::DescribeReservedInstancesOfferingsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeReservedInstancesOfferings>

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

The Availability Zone in which the Reserved Instance can be used.



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

C<duration> - The duration of the Reserved Instance (for example, one
year or three years), in seconds (C<31536000> | C<94608000>).

=item *

C<fixed-price> - The purchase price of the Reserved Instance (for
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

C<product-description> - The Reserved Instance product platform
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

C<reserved-instances-offering-id> - The Reserved Instances offering ID.

=item *

C<scope> - The scope of the Reserved Instance (C<Availability Zone> or
C<Region>).

=item *

C<usage-price> - The usage price of the Reserved Instance, per hour
(for example, 0.84).

=back




=head2 IncludeMarketplace => Bool

Include Reserved Instance Marketplace offerings in the response.



=head2 InstanceTenancy => Str

The tenancy of the instances covered by the reservation. A Reserved
Instance with a tenancy of C<dedicated> is applied to instances that
run in a VPC on single-tenant hardware (i.e., Dedicated Instances).

B<Important:> The C<host> value cannot be used with this parameter. Use
the C<default> or C<dedicated> values only.

Default: C<default>

Valid values are: C<"default">, C<"dedicated">, C<"host">

=head2 InstanceType => Str

The instance type that the reservation will cover (for example,
C<m1.small>). For more information, see Instance types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html)
in the I<Amazon EC2 User Guide>.

Valid values are: C<"t1.micro">, C<"t2.nano">, C<"t2.micro">, C<"t2.small">, C<"t2.medium">, C<"t2.large">, C<"t2.xlarge">, C<"t2.2xlarge">, C<"t3.nano">, C<"t3.micro">, C<"t3.small">, C<"t3.medium">, C<"t3.large">, C<"t3.xlarge">, C<"t3.2xlarge">, C<"t3a.nano">, C<"t3a.micro">, C<"t3a.small">, C<"t3a.medium">, C<"t3a.large">, C<"t3a.xlarge">, C<"t3a.2xlarge">, C<"t4g.nano">, C<"t4g.micro">, C<"t4g.small">, C<"t4g.medium">, C<"t4g.large">, C<"t4g.xlarge">, C<"t4g.2xlarge">, C<"m1.small">, C<"m1.medium">, C<"m1.large">, C<"m1.xlarge">, C<"m3.medium">, C<"m3.large">, C<"m3.xlarge">, C<"m3.2xlarge">, C<"m4.large">, C<"m4.xlarge">, C<"m4.2xlarge">, C<"m4.4xlarge">, C<"m4.10xlarge">, C<"m4.16xlarge">, C<"m2.xlarge">, C<"m2.2xlarge">, C<"m2.4xlarge">, C<"cr1.8xlarge">, C<"r3.large">, C<"r3.xlarge">, C<"r3.2xlarge">, C<"r3.4xlarge">, C<"r3.8xlarge">, C<"r4.large">, C<"r4.xlarge">, C<"r4.2xlarge">, C<"r4.4xlarge">, C<"r4.8xlarge">, C<"r4.16xlarge">, C<"r5.large">, C<"r5.xlarge">, C<"r5.2xlarge">, C<"r5.4xlarge">, C<"r5.8xlarge">, C<"r5.12xlarge">, C<"r5.16xlarge">, C<"r5.24xlarge">, C<"r5.metal">, C<"r5a.large">, C<"r5a.xlarge">, C<"r5a.2xlarge">, C<"r5a.4xlarge">, C<"r5a.8xlarge">, C<"r5a.12xlarge">, C<"r5a.16xlarge">, C<"r5a.24xlarge">, C<"r5b.large">, C<"r5b.xlarge">, C<"r5b.2xlarge">, C<"r5b.4xlarge">, C<"r5b.8xlarge">, C<"r5b.12xlarge">, C<"r5b.16xlarge">, C<"r5b.24xlarge">, C<"r5b.metal">, C<"r5d.large">, C<"r5d.xlarge">, C<"r5d.2xlarge">, C<"r5d.4xlarge">, C<"r5d.8xlarge">, C<"r5d.12xlarge">, C<"r5d.16xlarge">, C<"r5d.24xlarge">, C<"r5d.metal">, C<"r5ad.large">, C<"r5ad.xlarge">, C<"r5ad.2xlarge">, C<"r5ad.4xlarge">, C<"r5ad.8xlarge">, C<"r5ad.12xlarge">, C<"r5ad.16xlarge">, C<"r5ad.24xlarge">, C<"r6g.metal">, C<"r6g.medium">, C<"r6g.large">, C<"r6g.xlarge">, C<"r6g.2xlarge">, C<"r6g.4xlarge">, C<"r6g.8xlarge">, C<"r6g.12xlarge">, C<"r6g.16xlarge">, C<"r6gd.metal">, C<"r6gd.medium">, C<"r6gd.large">, C<"r6gd.xlarge">, C<"r6gd.2xlarge">, C<"r6gd.4xlarge">, C<"r6gd.8xlarge">, C<"r6gd.12xlarge">, C<"r6gd.16xlarge">, C<"x1.16xlarge">, C<"x1.32xlarge">, C<"x1e.xlarge">, C<"x1e.2xlarge">, C<"x1e.4xlarge">, C<"x1e.8xlarge">, C<"x1e.16xlarge">, C<"x1e.32xlarge">, C<"i2.xlarge">, C<"i2.2xlarge">, C<"i2.4xlarge">, C<"i2.8xlarge">, C<"i3.large">, C<"i3.xlarge">, C<"i3.2xlarge">, C<"i3.4xlarge">, C<"i3.8xlarge">, C<"i3.16xlarge">, C<"i3.metal">, C<"i3en.large">, C<"i3en.xlarge">, C<"i3en.2xlarge">, C<"i3en.3xlarge">, C<"i3en.6xlarge">, C<"i3en.12xlarge">, C<"i3en.24xlarge">, C<"i3en.metal">, C<"hi1.4xlarge">, C<"hs1.8xlarge">, C<"c1.medium">, C<"c1.xlarge">, C<"c3.large">, C<"c3.xlarge">, C<"c3.2xlarge">, C<"c3.4xlarge">, C<"c3.8xlarge">, C<"c4.large">, C<"c4.xlarge">, C<"c4.2xlarge">, C<"c4.4xlarge">, C<"c4.8xlarge">, C<"c5.large">, C<"c5.xlarge">, C<"c5.2xlarge">, C<"c5.4xlarge">, C<"c5.9xlarge">, C<"c5.12xlarge">, C<"c5.18xlarge">, C<"c5.24xlarge">, C<"c5.metal">, C<"c5a.large">, C<"c5a.xlarge">, C<"c5a.2xlarge">, C<"c5a.4xlarge">, C<"c5a.8xlarge">, C<"c5a.12xlarge">, C<"c5a.16xlarge">, C<"c5a.24xlarge">, C<"c5ad.large">, C<"c5ad.xlarge">, C<"c5ad.2xlarge">, C<"c5ad.4xlarge">, C<"c5ad.8xlarge">, C<"c5ad.12xlarge">, C<"c5ad.16xlarge">, C<"c5ad.24xlarge">, C<"c5d.large">, C<"c5d.xlarge">, C<"c5d.2xlarge">, C<"c5d.4xlarge">, C<"c5d.9xlarge">, C<"c5d.12xlarge">, C<"c5d.18xlarge">, C<"c5d.24xlarge">, C<"c5d.metal">, C<"c5n.large">, C<"c5n.xlarge">, C<"c5n.2xlarge">, C<"c5n.4xlarge">, C<"c5n.9xlarge">, C<"c5n.18xlarge">, C<"c5n.metal">, C<"c6g.metal">, C<"c6g.medium">, C<"c6g.large">, C<"c6g.xlarge">, C<"c6g.2xlarge">, C<"c6g.4xlarge">, C<"c6g.8xlarge">, C<"c6g.12xlarge">, C<"c6g.16xlarge">, C<"c6gd.metal">, C<"c6gd.medium">, C<"c6gd.large">, C<"c6gd.xlarge">, C<"c6gd.2xlarge">, C<"c6gd.4xlarge">, C<"c6gd.8xlarge">, C<"c6gd.12xlarge">, C<"c6gd.16xlarge">, C<"c6gn.medium">, C<"c6gn.large">, C<"c6gn.xlarge">, C<"c6gn.2xlarge">, C<"c6gn.4xlarge">, C<"c6gn.8xlarge">, C<"c6gn.12xlarge">, C<"c6gn.16xlarge">, C<"cc1.4xlarge">, C<"cc2.8xlarge">, C<"g2.2xlarge">, C<"g2.8xlarge">, C<"g3.4xlarge">, C<"g3.8xlarge">, C<"g3.16xlarge">, C<"g3s.xlarge">, C<"g4ad.4xlarge">, C<"g4ad.8xlarge">, C<"g4ad.16xlarge">, C<"g4dn.xlarge">, C<"g4dn.2xlarge">, C<"g4dn.4xlarge">, C<"g4dn.8xlarge">, C<"g4dn.12xlarge">, C<"g4dn.16xlarge">, C<"g4dn.metal">, C<"cg1.4xlarge">, C<"p2.xlarge">, C<"p2.8xlarge">, C<"p2.16xlarge">, C<"p3.2xlarge">, C<"p3.8xlarge">, C<"p3.16xlarge">, C<"p3dn.24xlarge">, C<"p4d.24xlarge">, C<"d2.xlarge">, C<"d2.2xlarge">, C<"d2.4xlarge">, C<"d2.8xlarge">, C<"d3.xlarge">, C<"d3.2xlarge">, C<"d3.4xlarge">, C<"d3.8xlarge">, C<"d3en.xlarge">, C<"d3en.2xlarge">, C<"d3en.4xlarge">, C<"d3en.6xlarge">, C<"d3en.8xlarge">, C<"d3en.12xlarge">, C<"f1.2xlarge">, C<"f1.4xlarge">, C<"f1.16xlarge">, C<"m5.large">, C<"m5.xlarge">, C<"m5.2xlarge">, C<"m5.4xlarge">, C<"m5.8xlarge">, C<"m5.12xlarge">, C<"m5.16xlarge">, C<"m5.24xlarge">, C<"m5.metal">, C<"m5a.large">, C<"m5a.xlarge">, C<"m5a.2xlarge">, C<"m5a.4xlarge">, C<"m5a.8xlarge">, C<"m5a.12xlarge">, C<"m5a.16xlarge">, C<"m5a.24xlarge">, C<"m5d.large">, C<"m5d.xlarge">, C<"m5d.2xlarge">, C<"m5d.4xlarge">, C<"m5d.8xlarge">, C<"m5d.12xlarge">, C<"m5d.16xlarge">, C<"m5d.24xlarge">, C<"m5d.metal">, C<"m5ad.large">, C<"m5ad.xlarge">, C<"m5ad.2xlarge">, C<"m5ad.4xlarge">, C<"m5ad.8xlarge">, C<"m5ad.12xlarge">, C<"m5ad.16xlarge">, C<"m5ad.24xlarge">, C<"m5zn.large">, C<"m5zn.xlarge">, C<"m5zn.2xlarge">, C<"m5zn.3xlarge">, C<"m5zn.6xlarge">, C<"m5zn.12xlarge">, C<"m5zn.metal">, C<"h1.2xlarge">, C<"h1.4xlarge">, C<"h1.8xlarge">, C<"h1.16xlarge">, C<"z1d.large">, C<"z1d.xlarge">, C<"z1d.2xlarge">, C<"z1d.3xlarge">, C<"z1d.6xlarge">, C<"z1d.12xlarge">, C<"z1d.metal">, C<"u-6tb1.56xlarge">, C<"u-6tb1.112xlarge">, C<"u-9tb1.112xlarge">, C<"u-12tb1.112xlarge">, C<"u-6tb1.metal">, C<"u-9tb1.metal">, C<"u-12tb1.metal">, C<"u-18tb1.metal">, C<"u-24tb1.metal">, C<"a1.medium">, C<"a1.large">, C<"a1.xlarge">, C<"a1.2xlarge">, C<"a1.4xlarge">, C<"a1.metal">, C<"m5dn.large">, C<"m5dn.xlarge">, C<"m5dn.2xlarge">, C<"m5dn.4xlarge">, C<"m5dn.8xlarge">, C<"m5dn.12xlarge">, C<"m5dn.16xlarge">, C<"m5dn.24xlarge">, C<"m5n.large">, C<"m5n.xlarge">, C<"m5n.2xlarge">, C<"m5n.4xlarge">, C<"m5n.8xlarge">, C<"m5n.12xlarge">, C<"m5n.16xlarge">, C<"m5n.24xlarge">, C<"r5dn.large">, C<"r5dn.xlarge">, C<"r5dn.2xlarge">, C<"r5dn.4xlarge">, C<"r5dn.8xlarge">, C<"r5dn.12xlarge">, C<"r5dn.16xlarge">, C<"r5dn.24xlarge">, C<"r5n.large">, C<"r5n.xlarge">, C<"r5n.2xlarge">, C<"r5n.4xlarge">, C<"r5n.8xlarge">, C<"r5n.12xlarge">, C<"r5n.16xlarge">, C<"r5n.24xlarge">, C<"inf1.xlarge">, C<"inf1.2xlarge">, C<"inf1.6xlarge">, C<"inf1.24xlarge">, C<"m6g.metal">, C<"m6g.medium">, C<"m6g.large">, C<"m6g.xlarge">, C<"m6g.2xlarge">, C<"m6g.4xlarge">, C<"m6g.8xlarge">, C<"m6g.12xlarge">, C<"m6g.16xlarge">, C<"m6gd.metal">, C<"m6gd.medium">, C<"m6gd.large">, C<"m6gd.xlarge">, C<"m6gd.2xlarge">, C<"m6gd.4xlarge">, C<"m6gd.8xlarge">, C<"m6gd.12xlarge">, C<"m6gd.16xlarge">, C<"mac1.metal">, C<"x2gd.medium">, C<"x2gd.large">, C<"x2gd.xlarge">, C<"x2gd.2xlarge">, C<"x2gd.4xlarge">, C<"x2gd.8xlarge">, C<"x2gd.12xlarge">, C<"x2gd.16xlarge">, C<"x2gd.metal">

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



=head2 OfferingClass => Str

The offering class of the Reserved Instance. Can be C<standard> or
C<convertible>.

Valid values are: C<"standard">, C<"convertible">

=head2 OfferingType => Str

The Reserved Instance offering type. If you are using tools that
predate the 2011-11-01 API version, you only have access to the
C<Medium Utilization> Reserved Instance offering type.

Valid values are: C<"Heavy Utilization">, C<"Medium Utilization">, C<"Light Utilization">, C<"No Upfront">, C<"Partial Upfront">, C<"All Upfront">

=head2 ProductDescription => Str

The Reserved Instance product platform description. Instances that
include C<(Amazon VPC)> in the description are for use with Amazon VPC.

Valid values are: C<"Linux/UNIX">, C<"Linux/UNIX (Amazon VPC)">, C<"Windows">, C<"Windows (Amazon VPC)">

=head2 ReservedInstancesOfferingIds => ArrayRef[Str|Undef]

One or more Reserved Instances offering IDs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeReservedInstancesOfferings in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

