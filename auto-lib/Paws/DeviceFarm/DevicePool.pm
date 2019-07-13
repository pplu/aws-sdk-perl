package Paws::DeviceFarm::DevicePool;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has MaxDevices => (is => 'ro', isa => 'Int', request_name => 'maxDevices', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::Rule]', request_name => 'rules', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::DevicePool

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::DevicePool object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::DevicePool object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Represents a collection of device types.

=head1 ATTRIBUTES


=head2 Arn => Str

  The device pool's ARN.


=head2 Description => Str

  The device pool's description.


=head2 MaxDevices => Int

  The number of devices that Device Farm can add to your device pool.
Device Farm adds devices that are available and that meet the criteria
that you assign for the C<rules> parameter. Depending on how many
devices meet these constraints, your device pool might contain fewer
devices than the value for this parameter.

By specifying the maximum number of devices, you can control the costs
that you incur by running tests.


=head2 Name => Str

  The device pool's name.


=head2 Rules => ArrayRef[L<Paws::DeviceFarm::Rule>]

  Information about the device pool's rules.


=head2 Type => Str

  The device pool's type.

Allowed values include:

=over

=item *

CURATED: A device pool that is created and managed by AWS Device Farm.

=item *

PRIVATE: A device pool that is created and managed by the device pool
developer.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

