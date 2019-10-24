# Generated from default/object.tt
package Paws::Lightsail::InstanceHardware;
  use Moo;
  use Types::Standard qw/Int ArrayRef Num/;
  use Paws::Lightsail::Types qw/Lightsail_Disk/;
  has CpuCount => (is => 'ro', isa => Int);
  has Disks => (is => 'ro', isa => ArrayRef[Lightsail_Disk]);
  has RamSizeInGb => (is => 'ro', isa => Num);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RamSizeInGb' => {
                                  'type' => 'Num'
                                },
               'Disks' => {
                            'class' => 'Paws::Lightsail::Disk',
                            'type' => 'ArrayRef[Lightsail_Disk]'
                          },
               'CpuCount' => {
                               'type' => 'Int'
                             }
             },
  'NameInRequest' => {
                       'RamSizeInGb' => 'ramSizeInGb',
                       'Disks' => 'disks',
                       'CpuCount' => 'cpuCount'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::InstanceHardware

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::InstanceHardware object:

  $service_obj->Method(Att1 => { CpuCount => $value, ..., RamSizeInGb => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::InstanceHardware object:

  $result = $service_obj->Method(...);
  $result->Att1->CpuCount

=head1 DESCRIPTION

Describes the hardware for the instance.

=head1 ATTRIBUTES


=head2 CpuCount => Int

  The number of vCPUs the instance has.


=head2 Disks => ArrayRef[Lightsail_Disk]

  The disks attached to the instance.


=head2 RamSizeInGb => Num

  The amount of RAM in GB on the instance (e.g., C<1.0>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

