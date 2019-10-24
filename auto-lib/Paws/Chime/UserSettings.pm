# Generated from default/object.tt
package Paws::Chime::UserSettings;
  use Moo;
  use Types::Standard qw//;
  use Paws::Chime::Types qw/Chime_TelephonySettings/;
  has Telephony => (is => 'ro', isa => Chime_TelephonySettings, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Telephony' => {
                                'class' => 'Paws::Chime::TelephonySettings',
                                'type' => 'Chime_TelephonySettings'
                              }
             },
  'IsRequired' => {
                    'Telephony' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::UserSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::UserSettings object:

  $service_obj->Method(Att1 => { Telephony => $value, ..., Telephony => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::UserSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Telephony

=head1 DESCRIPTION

Settings associated with an Amazon Chime user, including inbound and
outbound calling and text messaging.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Telephony => Chime_TelephonySettings

  The telephony settings associated with the user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

