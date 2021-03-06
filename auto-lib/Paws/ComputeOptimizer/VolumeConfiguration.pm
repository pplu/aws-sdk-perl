# Generated by default/object.tt
package Paws::ComputeOptimizer::VolumeConfiguration;
  use Moose;
  has VolumeBaselineIOPS => (is => 'ro', isa => 'Int', request_name => 'volumeBaselineIOPS', traits => ['NameInRequest']);
  has VolumeBaselineThroughput => (is => 'ro', isa => 'Int', request_name => 'volumeBaselineThroughput', traits => ['NameInRequest']);
  has VolumeBurstIOPS => (is => 'ro', isa => 'Int', request_name => 'volumeBurstIOPS', traits => ['NameInRequest']);
  has VolumeBurstThroughput => (is => 'ro', isa => 'Int', request_name => 'volumeBurstThroughput', traits => ['NameInRequest']);
  has VolumeSize => (is => 'ro', isa => 'Int', request_name => 'volumeSize', traits => ['NameInRequest']);
  has VolumeType => (is => 'ro', isa => 'Str', request_name => 'volumeType', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ComputeOptimizer::VolumeConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ComputeOptimizer::VolumeConfiguration object:

  $service_obj->Method(Att1 => { VolumeBaselineIOPS => $value, ..., VolumeType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ComputeOptimizer::VolumeConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->VolumeBaselineIOPS

=head1 DESCRIPTION

Describes the configuration of an Amazon Elastic Block Store (Amazon
EBS) volume.

=head1 ATTRIBUTES


=head2 VolumeBaselineIOPS => Int

The baseline IOPS of the volume.


=head2 VolumeBaselineThroughput => Int

The baseline throughput of the volume.


=head2 VolumeBurstIOPS => Int

The burst IOPS of the volume.


=head2 VolumeBurstThroughput => Int

The burst throughput of the volume.


=head2 VolumeSize => Int

The size of the volume, in GiB.


=head2 VolumeType => Str

The volume type.

This can be C<gp2> for General Purpose SSD, C<io1> or C<io2> for
Provisioned IOPS SSD, C<st1> for Throughput Optimized HDD, C<sc1> for
Cold HDD, or C<standard> for Magnetic volumes.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ComputeOptimizer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

