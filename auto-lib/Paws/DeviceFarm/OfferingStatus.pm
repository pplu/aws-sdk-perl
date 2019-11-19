# Generated from default/object.tt
package Paws::DeviceFarm::OfferingStatus;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_Offering/;
  has EffectiveOn => (is => 'ro', isa => Str);
  has Offering => (is => 'ro', isa => DeviceFarm_Offering);
  has Quantity => (is => 'ro', isa => Int);
  has Type => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Quantity' => {
                               'type' => 'Int'
                             },
               'Type' => {
                           'type' => 'Str'
                         },
               'EffectiveOn' => {
                                  'type' => 'Str'
                                },
               'Offering' => {
                               'type' => 'DeviceFarm_Offering',
                               'class' => 'Paws::DeviceFarm::Offering'
                             }
             },
  'NameInRequest' => {
                       'Type' => 'type',
                       'Quantity' => 'quantity',
                       'EffectiveOn' => 'effectiveOn',
                       'Offering' => 'offering'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::OfferingStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::OfferingStatus object:

  $service_obj->Method(Att1 => { EffectiveOn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::OfferingStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->EffectiveOn

=head1 DESCRIPTION

The status of the offering.

=head1 ATTRIBUTES


=head2 EffectiveOn => Str

  The date on which the offering is effective.


=head2 Offering => DeviceFarm_Offering

  Represents the metadata of an offering status.


=head2 Quantity => Int

  The number of available devices in the offering.


=head2 Type => Str

  The type specified for the offering status.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

