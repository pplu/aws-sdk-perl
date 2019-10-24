# Generated from default/object.tt
package Paws::IoTThingsGraph::FlowExecutionMessage;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoTThingsGraph::Types qw//;
  has EventType => (is => 'ro', isa => Str);
  has MessageId => (is => 'ro', isa => Str);
  has Payload => (is => 'ro', isa => Str);
  has Timestamp => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Timestamp' => {
                                'type' => 'Str'
                              },
               'Payload' => {
                              'type' => 'Str'
                            },
               'EventType' => {
                                'type' => 'Str'
                              },
               'MessageId' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'Timestamp' => 'timestamp',
                       'Payload' => 'payload',
                       'EventType' => 'eventType',
                       'MessageId' => 'messageId'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTThingsGraph::FlowExecutionMessage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTThingsGraph::FlowExecutionMessage object:

  $service_obj->Method(Att1 => { EventType => $value, ..., Timestamp => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTThingsGraph::FlowExecutionMessage object:

  $result = $service_obj->Method(...);
  $result->Att1->EventType

=head1 DESCRIPTION

An object that contains information about a flow event.

=head1 ATTRIBUTES


=head2 EventType => Str

  The type of flow event .


=head2 MessageId => Str

  The unique identifier of the message.


=head2 Payload => Str

  A string containing information about the flow event.


=head2 Timestamp => Str

  The date and time when the message was last updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTThingsGraph>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

