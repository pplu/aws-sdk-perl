# Generated from default/object.tt
package Paws::DeviceFarm::RecurringCharge;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_MonetaryAmount/;
  has Cost => (is => 'ro', isa => DeviceFarm_MonetaryAmount);
  has Frequency => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Frequency' => 'frequency',
                       'Cost' => 'cost'
                     },
  'types' => {
               'Cost' => {
                           'type' => 'DeviceFarm_MonetaryAmount',
                           'class' => 'Paws::DeviceFarm::MonetaryAmount'
                         },
               'Frequency' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::RecurringCharge

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::RecurringCharge object:

  $service_obj->Method(Att1 => { Cost => $value, ..., Frequency => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::RecurringCharge object:

  $result = $service_obj->Method(...);
  $result->Att1->Cost

=head1 DESCRIPTION

Specifies whether charges for devices will be recurring.

=head1 ATTRIBUTES


=head2 Cost => DeviceFarm_MonetaryAmount

  The cost of the recurring charge.


=head2 Frequency => Str

  The frequency in which charges will recur.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

