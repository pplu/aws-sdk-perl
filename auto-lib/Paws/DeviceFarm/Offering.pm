package Paws::DeviceFarm::Offering;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has Platform => (is => 'ro', isa => 'Str', request_name => 'platform', traits => ['NameInRequest']);
  has RecurringCharges => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::RecurringCharge]', request_name => 'recurringCharges', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::Offering

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::Offering object:

  $service_obj->Method(Att1 => { Description => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::Offering object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Represents the metadata of a device offering.

=head1 ATTRIBUTES


=head2 Description => Str

  A string describing the offering.


=head2 Id => Str

  The ID that corresponds to a device offering.


=head2 Platform => Str

  The platform of the device (e.g., ANDROID or IOS).


=head2 RecurringCharges => ArrayRef[L<Paws::DeviceFarm::RecurringCharge>]

  Specifies whether there are recurring charges for the offering.


=head2 Type => Str

  The type of offering (e.g., "RECURRING") for a device.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

