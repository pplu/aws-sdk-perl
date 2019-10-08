package Paws::EC2::LaunchTemplateBlockDeviceMapping;
  use Moo;  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_LaunchTemplateEbsBlockDevice/;
  has DeviceName => (is => 'ro', isa => Str);
  has Ebs => (is => 'ro', isa => EC2_LaunchTemplateEbsBlockDevice);
  has NoDevice => (is => 'ro', isa => Str);
  has VirtualName => (is => 'ro', isa => Str);

      sub params_map {
    our $Params_map ||= {
  'types' => {
               'Ebs' => {
                          'class' => 'Paws::EC2::LaunchTemplateEbsBlockDevice',
                          'type' => 'EC2_LaunchTemplateEbsBlockDevice'
                        },
               'DeviceName' => {
                                 'type' => 'Str'
                               },
               'VirtualName' => {
                                  'type' => 'Str'
                                },
               'NoDevice' => {
                               'type' => 'Str'
                             }
             },
  'NameInRequest' => {
                       'Ebs' => 'ebs',
                       'DeviceName' => 'deviceName',
                       'VirtualName' => 'virtualName',
                       'NoDevice' => 'noDevice'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LaunchTemplateBlockDeviceMapping

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LaunchTemplateBlockDeviceMapping object:

  $service_obj->Method(Att1 => { DeviceName => $value, ..., VirtualName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LaunchTemplateBlockDeviceMapping object:

  $result = $service_obj->Method(...);
  $result->Att1->DeviceName

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DeviceName => Str

  The device name.


=head2 Ebs => EC2_LaunchTemplateEbsBlockDevice

  Information about the block device for an EBS volume.


=head2 NoDevice => Str

  Suppresses the specified device included in the block device mapping of
the AMI.


=head2 VirtualName => Str

  The virtual device name (ephemeralN).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
