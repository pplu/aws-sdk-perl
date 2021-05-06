package Paws::EC2::GpuInfo;
  use Moose;
  has Gpus => (is => 'ro', isa => 'ArrayRef[Paws::EC2::GpuDeviceInfo]', request_name => 'gpus', traits => ['NameInRequest']);
  has TotalGpuMemoryInMiB => (is => 'ro', isa => 'Int', request_name => 'totalGpuMemoryInMiB', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GpuInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::GpuInfo object:

  $service_obj->Method(Att1 => { Gpus => $value, ..., TotalGpuMemoryInMiB => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::GpuInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->Gpus

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Gpus => ArrayRef[L<Paws::EC2::GpuDeviceInfo>]

Describes the GPU accelerators for the instance type.


=head2 TotalGpuMemoryInMiB => Int

The total size of the memory for the GPU accelerators for the instance
type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
