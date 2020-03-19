package Paws::EC2::FpgaDeviceInfo;
  use Moose;
  has Count => (is => 'ro', isa => 'Int', request_name => 'count', traits => ['NameInRequest']);
  has Manufacturer => (is => 'ro', isa => 'Str', request_name => 'manufacturer', traits => ['NameInRequest']);
  has MemoryInfo => (is => 'ro', isa => 'Paws::EC2::FpgaDeviceMemoryInfo', request_name => 'memoryInfo', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::FpgaDeviceInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::FpgaDeviceInfo object:

  $service_obj->Method(Att1 => { Count => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::FpgaDeviceInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->Count

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Count => Int

The count of FPGA accelerators for the instance type.


=head2 Manufacturer => Str

The manufacturer of the FPGA accelerator.


=head2 MemoryInfo => L<Paws::EC2::FpgaDeviceMemoryInfo>

Describes the memory for the FPGA accelerator for the instance type.


=head2 Name => Str

The name of the FPGA accelerator.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
