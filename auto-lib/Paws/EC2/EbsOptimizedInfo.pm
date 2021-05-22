package Paws::EC2::EbsOptimizedInfo;
  use Moose;
  has BaselineBandwidthInMbps => (is => 'ro', isa => 'Int', request_name => 'baselineBandwidthInMbps', traits => ['NameInRequest']);
  has BaselineIops => (is => 'ro', isa => 'Int', request_name => 'baselineIops', traits => ['NameInRequest']);
  has BaselineThroughputInMBps => (is => 'ro', isa => 'Num', request_name => 'baselineThroughputInMBps', traits => ['NameInRequest']);
  has MaximumBandwidthInMbps => (is => 'ro', isa => 'Int', request_name => 'maximumBandwidthInMbps', traits => ['NameInRequest']);
  has MaximumIops => (is => 'ro', isa => 'Int', request_name => 'maximumIops', traits => ['NameInRequest']);
  has MaximumThroughputInMBps => (is => 'ro', isa => 'Num', request_name => 'maximumThroughputInMBps', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::EbsOptimizedInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::EbsOptimizedInfo object:

  $service_obj->Method(Att1 => { BaselineBandwidthInMbps => $value, ..., MaximumThroughputInMBps => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::EbsOptimizedInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->BaselineBandwidthInMbps

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 BaselineBandwidthInMbps => Int

The baseline bandwidth performance for an EBS-optimized instance type,
in Mbps.


=head2 BaselineIops => Int

The baseline input/output storage operations per seconds for an
EBS-optimized instance type.


=head2 BaselineThroughputInMBps => Num

The baseline throughput performance for an EBS-optimized instance type,
in MB/s.


=head2 MaximumBandwidthInMbps => Int

The maximum bandwidth performance for an EBS-optimized instance type,
in Mbps.


=head2 MaximumIops => Int

The maximum input/output storage operations per second for an
EBS-optimized instance type.


=head2 MaximumThroughputInMBps => Num

The maximum throughput performance for an EBS-optimized instance type,
in MB/s.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
