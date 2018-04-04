package Paws::DeviceFarm::DeviceInstance;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has DeviceArn => (is => 'ro', isa => 'Str', request_name => 'deviceArn', traits => ['NameInRequest']);
  has InstanceProfile => (is => 'ro', isa => 'Paws::DeviceFarm::InstanceProfile', request_name => 'instanceProfile', traits => ['NameInRequest']);
  has Labels => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'labels', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest']);
  has Udid => (is => 'ro', isa => 'Str', request_name => 'udid', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::DeviceInstance

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::DeviceInstance object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Udid => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::DeviceInstance object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Represents the device instance.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the device instance.


=head2 DeviceArn => Str

  The Amazon Resource Name (ARN) of the device.


=head2 InstanceProfile => L<Paws::DeviceFarm::InstanceProfile>

  A object containing information about the instance profile.


=head2 Labels => ArrayRef[Str|Undef]

  An array of strings describing the device instance.


=head2 Status => Str

  The status of the device instance. Valid values are listed below.


=head2 Udid => Str

  Unique device identifier for the device instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

