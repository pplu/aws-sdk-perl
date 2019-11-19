# Generated from default/object.tt
package Paws::PersonalizeEvents::Event;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::PersonalizeEvents::Types qw//;
  has EventId => (is => 'ro', isa => Str);
  has EventType => (is => 'ro', isa => Str, required => 1);
  has Properties => (is => 'ro', isa => Str, required => 1);
  has SentAt => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Properties' => {
                                 'type' => 'Str'
                               },
               'SentAt' => {
                             'type' => 'Str'
                           },
               'EventType' => {
                                'type' => 'Str'
                              },
               'EventId' => {
                              'type' => 'Str'
                            }
             },
  'IsRequired' => {
                    'SentAt' => 1,
                    'EventType' => 1,
                    'Properties' => 1
                  },
  'NameInRequest' => {
                       'Properties' => 'properties',
                       'SentAt' => 'sentAt',
                       'EventType' => 'eventType',
                       'EventId' => 'eventId'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::PersonalizeEvents::Event

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PersonalizeEvents::Event object:

  $service_obj->Method(Att1 => { EventId => $value, ..., SentAt => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PersonalizeEvents::Event object:

  $result = $service_obj->Method(...);
  $result->Att1->EventId

=head1 DESCRIPTION

Represents user interaction event information sent using the
C<PutEvents> API.

=head1 ATTRIBUTES


=head2 EventId => Str

  An ID associated with the event. If an event ID is not provided, Amazon
Personalize generates a unique ID for the event. An event ID is not
used as an input to the model. Amazon Personalize uses the event ID to
distinquish unique events. Any subsequent events after the first with
the same event ID are not used in model training.


=head2 B<REQUIRED> EventType => Str

  The type of event. This property corresponds to the C<EVENT_TYPE> field
of the Interactions schema.


=head2 B<REQUIRED> Properties => Str

  A string map of event-specific data that you might choose to record.
For example, if a user rates a movie on your site, you might send the
movie ID and rating, and the number of movie ratings made by the user.

Each item in the map consists of a key-value pair. For example,

C<{"itemId": "movie1"}>

C<{"itemId": "movie2", "eventValue": "4.5"}>

C<{"itemId": "movie3", "eventValue": "3", "numberOfRatings": "12"}>

The keys use camel case names that match the fields in the Interactions
schema. The C<itemId> and C<eventValue> keys correspond to the
C<ITEM_ID> and C<EVENT_VALUE> fields. In the above example, the
C<eventType> might be 'MovieRating' with C<eventValue> being the
rating. The C<numberOfRatings> would match the 'NUMBER_OF_RATINGS'
field defined in the Interactions schema.


=head2 B<REQUIRED> SentAt => Str

  The timestamp on the client side when the event occurred.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PersonalizeEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

