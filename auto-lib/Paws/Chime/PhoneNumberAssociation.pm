# Generated from default/object.tt
package Paws::Chime::PhoneNumberAssociation;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Chime::Types qw//;
  has AssociatedTimestamp => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Value => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Value' => {
                            'type' => 'Str'
                          },
               'Name' => {
                           'type' => 'Str'
                         },
               'AssociatedTimestamp' => {
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

Paws::Chime::PhoneNumberAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::PhoneNumberAssociation object:

  $service_obj->Method(Att1 => { AssociatedTimestamp => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::PhoneNumberAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociatedTimestamp

=head1 DESCRIPTION

The phone number associations, such as Amazon Chime account ID, Amazon
Chime user ID, Amazon Chime Voice Connector ID, or Amazon Chime Voice
Connector group ID.

=head1 ATTRIBUTES


=head2 AssociatedTimestamp => Str

  The timestamp of the phone number association, in ISO 8601 format.


=head2 Name => Str

  Defines the association with an Amazon Chime account ID, user ID,
Amazon Chime Voice Connector ID, or Amazon Chime Voice Connector group
ID.


=head2 Value => Str

  Contains the ID for the entity specified in Name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

