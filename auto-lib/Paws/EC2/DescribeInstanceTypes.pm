
package Paws::EC2::DescribeInstanceTypes;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has InstanceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'InstanceType' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeInstanceTypes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeInstanceTypesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeInstanceTypes - Arguments for method DescribeInstanceTypes on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeInstanceTypes on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DescribeInstanceTypes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeInstanceTypes.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DescribeInstanceTypesResult = $ec2->DescribeInstanceTypes(
      DryRun  => 1,    # OPTIONAL
      Filters => [
        {
          Name   => 'MyString',    # OPTIONAL
          Values => [
            'MyString', ...        # OPTIONAL
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      InstanceTypes => [
        't1.micro',
        ... # values: t1.micro, t2.nano, t2.micro, t2.small, t2.medium, t2.large, t2.xlarge, t2.2xlarge, t3.nano, t3.micro, t3.small, t3.medium, t3.large, t3.xlarge, t3.2xlarge, t3a.nano, t3a.micro, t3a.small, t3a.medium, t3a.large, t3a.xlarge, t3a.2xlarge, t4g.nano, t4g.micro, t4g.small, t4g.medium, t4g.large, t4g.xlarge, t4g.2xlarge, m1.small, m1.medium, m1.large, m1.xlarge, m3.medium, m3.large, m3.xlarge, m3.2xlarge, m4.large, m4.xlarge, m4.2xlarge, m4.4xlarge, m4.10xlarge, m4.16xlarge, m2.xlarge, m2.2xlarge, m2.4xlarge, cr1.8xlarge, r3.large, r3.xlarge, r3.2xlarge, r3.4xlarge, r3.8xlarge, r4.large, r4.xlarge, r4.2xlarge, r4.4xlarge, r4.8xlarge, r4.16xlarge, r5.large, r5.xlarge, r5.2xlarge, r5.4xlarge, r5.8xlarge, r5.12xlarge, r5.16xlarge, r5.24xlarge, r5.metal, r5a.large, r5a.xlarge, r5a.2xlarge, r5a.4xlarge, r5a.8xlarge, r5a.12xlarge, r5a.16xlarge, r5a.24xlarge, r5b.large, r5b.xlarge, r5b.2xlarge, r5b.4xlarge, r5b.8xlarge, r5b.12xlarge, r5b.16xlarge, r5b.24xlarge, r5b.metal, r5d.large, r5d.xlarge, r5d.2xlarge, r5d.4xlarge, r5d.8xlarge, r5d.12xlarge, r5d.16xlarge, r5d.24xlarge, r5d.metal, r5ad.large, r5ad.xlarge, r5ad.2xlarge, r5ad.4xlarge, r5ad.8xlarge, r5ad.12xlarge, r5ad.16xlarge, r5ad.24xlarge, r6g.metal, r6g.medium, r6g.large, r6g.xlarge, r6g.2xlarge, r6g.4xlarge, r6g.8xlarge, r6g.12xlarge, r6g.16xlarge, r6gd.metal, r6gd.medium, r6gd.large, r6gd.xlarge, r6gd.2xlarge, r6gd.4xlarge, r6gd.8xlarge, r6gd.12xlarge, r6gd.16xlarge, x1.16xlarge, x1.32xlarge, x1e.xlarge, x1e.2xlarge, x1e.4xlarge, x1e.8xlarge, x1e.16xlarge, x1e.32xlarge, i2.xlarge, i2.2xlarge, i2.4xlarge, i2.8xlarge, i3.large, i3.xlarge, i3.2xlarge, i3.4xlarge, i3.8xlarge, i3.16xlarge, i3.metal, i3en.large, i3en.xlarge, i3en.2xlarge, i3en.3xlarge, i3en.6xlarge, i3en.12xlarge, i3en.24xlarge, i3en.metal, hi1.4xlarge, hs1.8xlarge, c1.medium, c1.xlarge, c3.large, c3.xlarge, c3.2xlarge, c3.4xlarge, c3.8xlarge, c4.large, c4.xlarge, c4.2xlarge, c4.4xlarge, c4.8xlarge, c5.large, c5.xlarge, c5.2xlarge, c5.4xlarge, c5.9xlarge, c5.12xlarge, c5.18xlarge, c5.24xlarge, c5.metal, c5a.large, c5a.xlarge, c5a.2xlarge, c5a.4xlarge, c5a.8xlarge, c5a.12xlarge, c5a.16xlarge, c5a.24xlarge, c5ad.large, c5ad.xlarge, c5ad.2xlarge, c5ad.4xlarge, c5ad.8xlarge, c5ad.12xlarge, c5ad.16xlarge, c5ad.24xlarge, c5d.large, c5d.xlarge, c5d.2xlarge, c5d.4xlarge, c5d.9xlarge, c5d.12xlarge, c5d.18xlarge, c5d.24xlarge, c5d.metal, c5n.large, c5n.xlarge, c5n.2xlarge, c5n.4xlarge, c5n.9xlarge, c5n.18xlarge, c5n.metal, c6g.metal, c6g.medium, c6g.large, c6g.xlarge, c6g.2xlarge, c6g.4xlarge, c6g.8xlarge, c6g.12xlarge, c6g.16xlarge, c6gd.metal, c6gd.medium, c6gd.large, c6gd.xlarge, c6gd.2xlarge, c6gd.4xlarge, c6gd.8xlarge, c6gd.12xlarge, c6gd.16xlarge, c6gn.medium, c6gn.large, c6gn.xlarge, c6gn.2xlarge, c6gn.4xlarge, c6gn.8xlarge, c6gn.12xlarge, c6gn.16xlarge, cc1.4xlarge, cc2.8xlarge, g2.2xlarge, g2.8xlarge, g3.4xlarge, g3.8xlarge, g3.16xlarge, g3s.xlarge, g4ad.4xlarge, g4ad.8xlarge, g4ad.16xlarge, g4dn.xlarge, g4dn.2xlarge, g4dn.4xlarge, g4dn.8xlarge, g4dn.12xlarge, g4dn.16xlarge, g4dn.metal, cg1.4xlarge, p2.xlarge, p2.8xlarge, p2.16xlarge, p3.2xlarge, p3.8xlarge, p3.16xlarge, p3dn.24xlarge, p4d.24xlarge, d2.xlarge, d2.2xlarge, d2.4xlarge, d2.8xlarge, d3.xlarge, d3.2xlarge, d3.4xlarge, d3.8xlarge, d3en.xlarge, d3en.2xlarge, d3en.4xlarge, d3en.6xlarge, d3en.8xlarge, d3en.12xlarge, f1.2xlarge, f1.4xlarge, f1.16xlarge, m5.large, m5.xlarge, m5.2xlarge, m5.4xlarge, m5.8xlarge, m5.12xlarge, m5.16xlarge, m5.24xlarge, m5.metal, m5a.large, m5a.xlarge, m5a.2xlarge, m5a.4xlarge, m5a.8xlarge, m5a.12xlarge, m5a.16xlarge, m5a.24xlarge, m5d.large, m5d.xlarge, m5d.2xlarge, m5d.4xlarge, m5d.8xlarge, m5d.12xlarge, m5d.16xlarge, m5d.24xlarge, m5d.metal, m5ad.large, m5ad.xlarge, m5ad.2xlarge, m5ad.4xlarge, m5ad.8xlarge, m5ad.12xlarge, m5ad.16xlarge, m5ad.24xlarge, m5zn.large, m5zn.xlarge, m5zn.2xlarge, m5zn.3xlarge, m5zn.6xlarge, m5zn.12xlarge, m5zn.metal, h1.2xlarge, h1.4xlarge, h1.8xlarge, h1.16xlarge, z1d.large, z1d.xlarge, z1d.2xlarge, z1d.3xlarge, z1d.6xlarge, z1d.12xlarge, z1d.metal, u-6tb1.56xlarge, u-6tb1.112xlarge, u-9tb1.112xlarge, u-12tb1.112xlarge, u-6tb1.metal, u-9tb1.metal, u-12tb1.metal, u-18tb1.metal, u-24tb1.metal, a1.medium, a1.large, a1.xlarge, a1.2xlarge, a1.4xlarge, a1.metal, m5dn.large, m5dn.xlarge, m5dn.2xlarge, m5dn.4xlarge, m5dn.8xlarge, m5dn.12xlarge, m5dn.16xlarge, m5dn.24xlarge, m5dn.metal, m5n.large, m5n.xlarge, m5n.2xlarge, m5n.4xlarge, m5n.8xlarge, m5n.12xlarge, m5n.16xlarge, m5n.24xlarge, m5n.metal, r5dn.large, r5dn.xlarge, r5dn.2xlarge, r5dn.4xlarge, r5dn.8xlarge, r5dn.12xlarge, r5dn.16xlarge, r5dn.24xlarge, r5dn.metal, r5n.large, r5n.xlarge, r5n.2xlarge, r5n.4xlarge, r5n.8xlarge, r5n.12xlarge, r5n.16xlarge, r5n.24xlarge, r5n.metal, inf1.xlarge, inf1.2xlarge, inf1.6xlarge, inf1.24xlarge, m6g.metal, m6g.medium, m6g.large, m6g.xlarge, m6g.2xlarge, m6g.4xlarge, m6g.8xlarge, m6g.12xlarge, m6g.16xlarge, m6gd.metal, m6gd.medium, m6gd.large, m6gd.xlarge, m6gd.2xlarge, m6gd.4xlarge, m6gd.8xlarge, m6gd.12xlarge, m6gd.16xlarge, mac1.metal, x2gd.medium, x2gd.large, x2gd.xlarge, x2gd.2xlarge, x2gd.4xlarge, x2gd.8xlarge, x2gd.12xlarge, x2gd.16xlarge, x2gd.metal
      ],    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $InstanceTypes = $DescribeInstanceTypesResult->InstanceTypes;
    my $NextToken     = $DescribeInstanceTypesResult->NextToken;

    # Returns a L<Paws::EC2::DescribeInstanceTypesResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DescribeInstanceTypes>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 Filters => ArrayRef[L<Paws::EC2::Filter>]

One or more filters. Filter names and values are case-sensitive.

=over

=item *

C<auto-recovery-supported> - Indicates whether auto recovery is
supported (C<true> | C<false>).

=item *

C<bare-metal> - Indicates whether it is a bare metal instance type
(C<true> | C<false>).

=item *

C<burstable-performance-supported> - Indicates whether it is a
burstable performance instance type (C<true> | C<false>).

=item *

C<current-generation> - Indicates whether this instance type is the
latest generation instance type of an instance family (C<true> |
C<false>).

=item *

C<ebs-info.ebs-optimized-info.baseline-bandwidth-in-mbps> - The
baseline bandwidth performance for an EBS-optimized instance type, in
Mbps.

=item *

C<ebs-info.ebs-optimized-info.baseline-iops> - The baseline
input/output storage operations per second for an EBS-optimized
instance type.

=item *

C<ebs-info.ebs-optimized-info.baseline-throughput-in-mbps> - The
baseline throughput performance for an EBS-optimized instance type, in
MB/s.

=item *

C<ebs-info.ebs-optimized-info.maximum-bandwidth-in-mbps> - The maximum
bandwidth performance for an EBS-optimized instance type, in Mbps.

=item *

C<ebs-info.ebs-optimized-info.maximum-iops> - The maximum input/output
storage operations per second for an EBS-optimized instance type.

=item *

C<ebs-info.ebs-optimized-info.maximum-throughput-in-mbps> - The maximum
throughput performance for an EBS-optimized instance type, in MB/s.

=item *

C<ebs-info.ebs-optimized-support> - Indicates whether the instance type
is EBS-optimized (C<supported> | C<unsupported> | C<default>).

=item *

C<ebs-info.encryption-support> - Indicates whether EBS encryption is
supported (C<supported> | C<unsupported>).

=item *

C<ebs-info.nvme-support> - Indicates whether non-volatile memory
express (NVMe) is supported for EBS volumes (C<required> | C<supported>
| C<unsupported>).

=item *

C<free-tier-eligible> - Indicates whether the instance type is eligible
to use in the free tier (C<true> | C<false>).

=item *

C<hibernation-supported> - Indicates whether On-Demand hibernation is
supported (C<true> | C<false>).

=item *

C<hypervisor> - The hypervisor (C<nitro> | C<xen>).

=item *

C<instance-storage-info.disk.count> - The number of local disks.

=item *

C<instance-storage-info.disk.size-in-gb> - The storage size of each
instance storage disk, in GB.

=item *

C<instance-storage-info.disk.type> - The storage technology for the
local instance storage disks (C<hdd> | C<ssd>).

=item *

C<instance-storage-info.nvme-support> - Indicates whether non-volatile
memory express (NVMe) is supported for instance store (C<required> |
C<supported>) | C<unsupported>).

=item *

C<instance-storage-info.total-size-in-gb> - The total amount of storage
available from all local instance storage, in GB.

=item *

C<instance-storage-supported> - Indicates whether the instance type has
local instance storage (C<true> | C<false>).

=item *

C<instance-type> - The instance type (for example C<c5.2xlarge> or
c5*).

=item *

C<memory-info.size-in-mib> - The memory size.

=item *

C<network-info.efa-info.maximum-efa-interfaces> - The maximum number of
Elastic Fabric Adapters (EFAs) per instance.

=item *

C<network-info.efa-supported> - Indicates whether the instance type
supports Elastic Fabric Adapter (EFA) (C<true> | C<false>).

=item *

C<network-info.ena-support> - Indicates whether Elastic Network Adapter
(ENA) is supported or required (C<required> | C<supported> |
C<unsupported>).

=item *

C<network-info.ipv4-addresses-per-interface> - The maximum number of
private IPv4 addresses per network interface.

=item *

C<network-info.ipv6-addresses-per-interface> - The maximum number of
private IPv6 addresses per network interface.

=item *

C<network-info.ipv6-supported> - Indicates whether the instance type
supports IPv6 (C<true> | C<false>).

=item *

C<network-info.maximum-network-interfaces> - The maximum number of
network interfaces per instance.

=item *

C<network-info.network-performance> - The network performance (for
example, "25 Gigabit").

=item *

C<processor-info.supported-architecture> - The CPU architecture
(C<arm64> | C<i386> | C<x86_64>).

=item *

C<processor-info.sustained-clock-speed-in-ghz> - The CPU clock speed,
in GHz.

=item *

C<supported-boot-mode> - The boot mode (C<legacy-bios> | C<uefi>).

=item *

C<supported-root-device-type> - The root device type (C<ebs> |
C<instance-store>).

=item *

C<supported-usage-class> - The usage class (C<on-demand> | C<spot>).

=item *

C<supported-virtualization-type> - The virtualization type (C<hvm> |
C<paravirtual>).

=item *

C<vcpu-info.default-cores> - The default number of cores for the
instance type.

=item *

C<vcpu-info.default-threads-per-core> - The default number of threads
per core for the instance type.

=item *

C<vcpu-info.default-vcpus> - The default number of vCPUs for the
instance type.

=item *

C<vcpu-info.valid-cores> - The number of cores that can be configured
for the instance type.

=item *

C<vcpu-info.valid-threads-per-core> - The number of threads per core
that can be configured for the instance type. For example, "1" or
"1,2".

=back




=head2 InstanceTypes => ArrayRef[Str|Undef]

The instance types. For more information, see Instance types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html)
in the I<Amazon EC2 User Guide>.



=head2 MaxResults => Int

The maximum number of results to return for the request in a single
page. The remaining results can be seen by sending another request with
the next token value.



=head2 NextToken => Str

The token to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeInstanceTypes in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

