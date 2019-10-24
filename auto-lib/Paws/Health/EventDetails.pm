# Generated from default/object.tt
package Paws::Health::EventDetails;
  use Moo;
  use Types::Standard qw//;
  use Paws::Health::Types qw/Health_eventMetadata Health_EventDescription Health_Event/;
  has Event => (is => 'ro', isa => Health_Event);
  has EventDescription => (is => 'ro', isa => Health_EventDescription);
  has EventMetadata => (is => 'ro', isa => Health_eventMetadata);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EventDescription' => {
                                       'class' => 'Paws::Health::EventDescription',
                                       'type' => 'Health_EventDescription'
                                     },
               'Event' => {
                            'class' => 'Paws::Health::Event',
                            'type' => 'Health_Event'
                          },
               'EventMetadata' => {
                                    'class' => 'Paws::Health::EventMetadata',
                                    'type' => 'Health_eventMetadata'
                                  }
             },
  'NameInRequest' => {
                       'EventDescription' => 'eventDescription',
                       'Event' => 'event',
                       'EventMetadata' => 'eventMetadata'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Health::EventDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Health::EventDetails object:

  $service_obj->Method(Att1 => { Event => $value, ..., EventMetadata => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Health::EventDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->Event

=head1 DESCRIPTION

Detailed information about an event. A combination of an Event object,
an EventDescription object, and additional metadata about the event.
Returned by the DescribeEventDetails operation.

=head1 ATTRIBUTES


=head2 Event => Health_Event

  Summary information about the event.


=head2 EventDescription => Health_EventDescription

  The most recent description of the event.


=head2 EventMetadata => Health_eventMetadata

  Additional metadata about the event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Health>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

