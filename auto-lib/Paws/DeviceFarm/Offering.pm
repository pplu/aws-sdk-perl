# Generated from default/object.tt
package Paws::DeviceFarm::Offering;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_RecurringCharge/;
  has Description => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has Platform => (is => 'ro', isa => Str);
  has RecurringCharges => (is => 'ro', isa => ArrayRef[DeviceFarm_RecurringCharge]);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Type' => {
                           'type' => 'Str'
                         },
               'Platform' => {
                               'type' => 'Str'
                             },
               'Id' => {
                         'type' => 'Str'
                       },
               'RecurringCharges' => {
                                       'class' => 'Paws::DeviceFarm::RecurringCharge',
                                       'type' => 'ArrayRef[DeviceFarm_RecurringCharge]'
                                     },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Type' => 'type',
                       'Platform' => 'platform',
                       'Id' => 'id',
                       'RecurringCharges' => 'recurringCharges',
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }


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


=head2 RecurringCharges => ArrayRef[DeviceFarm_RecurringCharge]

  Specifies whether there are recurring charges for the offering.


=head2 Type => Str

  The type of offering (e.g., "RECURRING") for a device.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

