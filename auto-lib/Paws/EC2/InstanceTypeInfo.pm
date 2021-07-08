package Paws::EC2::InstanceTypeInfo;
  use Moose;
  has AutoRecoverySupported => (is => 'ro', isa => 'Bool', request_name => 'autoRecoverySupported', traits => ['NameInRequest']);
  has BareMetal => (is => 'ro', isa => 'Bool', request_name => 'bareMetal', traits => ['NameInRequest']);
  has BurstablePerformanceSupported => (is => 'ro', isa => 'Bool', request_name => 'burstablePerformanceSupported', traits => ['NameInRequest']);
  has CurrentGeneration => (is => 'ro', isa => 'Bool', request_name => 'currentGeneration', traits => ['NameInRequest']);
  has DedicatedHostsSupported => (is => 'ro', isa => 'Bool', request_name => 'dedicatedHostsSupported', traits => ['NameInRequest']);
  has EbsInfo => (is => 'ro', isa => 'Paws::EC2::EbsInfo', request_name => 'ebsInfo', traits => ['NameInRequest']);
  has FpgaInfo => (is => 'ro', isa => 'Paws::EC2::FpgaInfo', request_name => 'fpgaInfo', traits => ['NameInRequest']);
  has FreeTierEligible => (is => 'ro', isa => 'Bool', request_name => 'freeTierEligible', traits => ['NameInRequest']);
  has GpuInfo => (is => 'ro', isa => 'Paws::EC2::GpuInfo', request_name => 'gpuInfo', traits => ['NameInRequest']);
  has HibernationSupported => (is => 'ro', isa => 'Bool', request_name => 'hibernationSupported', traits => ['NameInRequest']);
  has Hypervisor => (is => 'ro', isa => 'Str', request_name => 'hypervisor', traits => ['NameInRequest']);
  has InferenceAcceleratorInfo => (is => 'ro', isa => 'Paws::EC2::InferenceAcceleratorInfo', request_name => 'inferenceAcceleratorInfo', traits => ['NameInRequest']);
  has InstanceStorageInfo => (is => 'ro', isa => 'Paws::EC2::InstanceStorageInfo', request_name => 'instanceStorageInfo', traits => ['NameInRequest']);
  has InstanceStorageSupported => (is => 'ro', isa => 'Bool', request_name => 'instanceStorageSupported', traits => ['NameInRequest']);
  has InstanceType => (is => 'ro', isa => 'Str', request_name => 'instanceType', traits => ['NameInRequest']);
  has MemoryInfo => (is => 'ro', isa => 'Paws::EC2::MemoryInfo', request_name => 'memoryInfo', traits => ['NameInRequest']);
  has NetworkInfo => (is => 'ro', isa => 'Paws::EC2::NetworkInfo', request_name => 'networkInfo', traits => ['NameInRequest']);
  has PlacementGroupInfo => (is => 'ro', isa => 'Paws::EC2::PlacementGroupInfo', request_name => 'placementGroupInfo', traits => ['NameInRequest']);
  has ProcessorInfo => (is => 'ro', isa => 'Paws::EC2::ProcessorInfo', request_name => 'processorInfo', traits => ['NameInRequest']);
  has SupportedBootModes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'supportedBootModes', traits => ['NameInRequest']);
  has SupportedRootDeviceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'supportedRootDeviceTypes', traits => ['NameInRequest']);
  has SupportedUsageClasses => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'supportedUsageClasses', traits => ['NameInRequest']);
  has SupportedVirtualizationTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'supportedVirtualizationTypes', traits => ['NameInRequest']);
  has VCpuInfo => (is => 'ro', isa => 'Paws::EC2::VCpuInfo', request_name => 'vCpuInfo', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::InstanceTypeInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::InstanceTypeInfo object:

  $service_obj->Method(Att1 => { AutoRecoverySupported => $value, ..., VCpuInfo => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::InstanceTypeInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->AutoRecoverySupported

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AutoRecoverySupported => Bool

Indicates whether auto recovery is supported.


=head2 BareMetal => Bool

Indicates whether the instance is a bare metal instance type.


=head2 BurstablePerformanceSupported => Bool

Indicates whether the instance type is a burstable performance instance
type.


=head2 CurrentGeneration => Bool

Indicates whether the instance type is current generation.


=head2 DedicatedHostsSupported => Bool

Indicates whether Dedicated Hosts are supported on the instance type.


=head2 EbsInfo => L<Paws::EC2::EbsInfo>

Describes the Amazon EBS settings for the instance type.


=head2 FpgaInfo => L<Paws::EC2::FpgaInfo>

Describes the FPGA accelerator settings for the instance type.


=head2 FreeTierEligible => Bool

Indicates whether the instance type is eligible for the free tier.


=head2 GpuInfo => L<Paws::EC2::GpuInfo>

Describes the GPU accelerator settings for the instance type.


=head2 HibernationSupported => Bool

Indicates whether On-Demand hibernation is supported.


=head2 Hypervisor => Str

The hypervisor for the instance type.


=head2 InferenceAcceleratorInfo => L<Paws::EC2::InferenceAcceleratorInfo>

Describes the Inference accelerator settings for the instance type.


=head2 InstanceStorageInfo => L<Paws::EC2::InstanceStorageInfo>

Describes the instance storage for the instance type.


=head2 InstanceStorageSupported => Bool

Indicates whether instance storage is supported.


=head2 InstanceType => Str

The instance type. For more information, see Instance types
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html)
in the I<Amazon EC2 User Guide>.


=head2 MemoryInfo => L<Paws::EC2::MemoryInfo>

Describes the memory for the instance type.


=head2 NetworkInfo => L<Paws::EC2::NetworkInfo>

Describes the network settings for the instance type.


=head2 PlacementGroupInfo => L<Paws::EC2::PlacementGroupInfo>

Describes the placement group settings for the instance type.


=head2 ProcessorInfo => L<Paws::EC2::ProcessorInfo>

Describes the processor.


=head2 SupportedBootModes => ArrayRef[Str|Undef]

The supported boot modes. For more information, see Boot modes
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ami-boot.html) in
the I<Amazon EC2 User Guide>.


=head2 SupportedRootDeviceTypes => ArrayRef[Str|Undef]

The supported root device types.


=head2 SupportedUsageClasses => ArrayRef[Str|Undef]

Indicates whether the instance type is offered for spot or On-Demand.


=head2 SupportedVirtualizationTypes => ArrayRef[Str|Undef]

The supported virtualization types.


=head2 VCpuInfo => L<Paws::EC2::VCpuInfo>

Describes the vCPU configurations for the instance type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
