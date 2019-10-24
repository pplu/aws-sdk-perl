# Generated from default/object.tt
package Paws::Chime::OrderedPhoneNumber;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw//;
  has E164PhoneNumber => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               'E164PhoneNumber' => {
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

Paws::Chime::OrderedPhoneNumber

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::OrderedPhoneNumber object:

  $service_obj->Method(Att1 => { E164PhoneNumber => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::OrderedPhoneNumber object:

  $result = $service_obj->Method(...);
  $result->Att1->E164PhoneNumber

=head1 DESCRIPTION

A phone number for which an order has been placed.

=head1 ATTRIBUTES


=head2 E164PhoneNumber => Str

  The phone number, in E.164 format.


=head2 Status => Str

  The phone number status.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

