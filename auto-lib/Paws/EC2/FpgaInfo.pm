package Paws::EC2::FpgaInfo;
  use Moose;
  has Fpgas => (is => 'ro', isa => 'ArrayRef[Paws::EC2::FpgaDeviceInfo]', request_name => 'fpgas', traits => ['NameInRequest']);
  has TotalFpgaMemoryInMiB => (is => 'ro', isa => 'Int', request_name => 'totalFpgaMemoryInMiB', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::FpgaInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::FpgaInfo object:

  $service_obj->Method(Att1 => { Fpgas => $value, ..., TotalFpgaMemoryInMiB => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::FpgaInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->Fpgas

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Fpgas => ArrayRef[L<Paws::EC2::FpgaDeviceInfo>]

Describes the FPGAs for the instance type.


=head2 TotalFpgaMemoryInMiB => Int

The total memory of all FPGA accelerators for the instance type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
