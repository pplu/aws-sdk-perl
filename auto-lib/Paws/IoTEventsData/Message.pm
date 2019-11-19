# Generated from default/object.tt
package Paws::IoTEventsData::Message;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTEventsData::Types qw//;
  has InputName => (is => 'ro', isa => Str, required => 1);
  has MessageId => (is => 'ro', isa => Str, required => 1);
  has Payload => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Payload' => 'payload',
                       'InputName' => 'inputName',
                       'MessageId' => 'messageId'
                     },
  'IsRequired' => {
                    'Payload' => 1,
                    'MessageId' => 1,
                    'InputName' => 1
                  },
  'types' => {
               'Payload' => {
                              'type' => 'Str'
                            },
               'InputName' => {
                                'type' => 'Str'
                              },
               'MessageId' => {
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

Paws::IoTEventsData::Message

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTEventsData::Message object:

  $service_obj->Method(Att1 => { InputName => $value, ..., Payload => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTEventsData::Message object:

  $result = $service_obj->Method(...);
  $result->Att1->InputName

=head1 DESCRIPTION

Information about a message.

=head1 ATTRIBUTES


=head2 B<REQUIRED> InputName => Str

  The name of the input into which the message payload is transformed.


=head2 B<REQUIRED> MessageId => Str

  The ID to assign to the message. Within each batch sent, each
C<"messageId"> must be unique.


=head2 B<REQUIRED> Payload => Str

  The payload of the message. This can be a JSON string or a
Base-64-encoded string representing binary data (in which case you must
decode it).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTEventsData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

