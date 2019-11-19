# Generated from default/object.tt
package Paws::AlexaForBusiness::PhoneNumber;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw//;
  has Number => (is => 'ro', isa => Str, required => 1);
  has Type => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Number' => {
                             'type' => 'Str'
                           },
               'Type' => {
                           'type' => 'Str'
                         }
             },
  'IsRequired' => {
                    'Number' => 1,
                    'Type' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::PhoneNumber

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::PhoneNumber object:

  $service_obj->Method(Att1 => { Number => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::PhoneNumber object:

  $result = $service_obj->Method(...);
  $result->Att1->Number

=head1 DESCRIPTION

The phone number for the contact containing the raw number and phone
number type.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Number => Str

  The raw value of the phone number.


=head2 B<REQUIRED> Type => Str

  The type of the phone number.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

