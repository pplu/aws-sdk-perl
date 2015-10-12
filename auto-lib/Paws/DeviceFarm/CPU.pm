package Paws::DeviceFarm::CPU;
  use Moose;
  has architecture => (is => 'ro', isa => 'Str');
  has clock => (is => 'ro', isa => 'Num');
  has frequency => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::CPU

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::CPU object:

  $service_obj->Method(Att1 => { architecture => $value, ..., frequency => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::CPU object:

  $result = $service_obj->Method(...);
  $result->Att1->architecture

=head1 ATTRIBUTES

=head2 architecture => Str

  The CPU's architecture, for example x86 or ARM.

=head2 clock => Num

  The clock speed of the device's CPU, expressed in hertz (Hz). For
example, a 1.2 GHz CPU is expressed as 1200000000.

=head2 frequency => Str

  The CPU's frequency.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

