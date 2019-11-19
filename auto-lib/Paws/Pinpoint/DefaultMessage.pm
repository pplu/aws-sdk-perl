# Generated from default/object.tt
package Paws::Pinpoint::DefaultMessage;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Pinpoint::Types qw/Pinpoint_MapOfListOf__string/;
  has Body => (is => 'ro', isa => Str);
  has Substitutions => (is => 'ro', isa => Pinpoint_MapOfListOf__string);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Body' => {
                           'type' => 'Str'
                         },
               'Substitutions' => {
                                    'type' => 'Pinpoint_MapOfListOf__string',
                                    'class' => 'Paws::Pinpoint::MapOfListOf__string'
                                  }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::DefaultMessage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::DefaultMessage object:

  $service_obj->Method(Att1 => { Body => $value, ..., Substitutions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::DefaultMessage object:

  $result = $service_obj->Method(...);
  $result->Att1->Body

=head1 DESCRIPTION

Specifies the default message to use for all channels.

=head1 ATTRIBUTES


=head2 Body => Str

  The default message body of the push notification, email, or SMS
message.


=head2 Substitutions => Pinpoint_MapOfListOf__string

  The default message variables to use in the push notification, email,
or SMS message. You can override these default variables with
individual address variables.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

