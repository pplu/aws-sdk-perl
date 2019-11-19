# Generated from default/object.tt
package Paws::Pinpoint::ItemResponse;
  use Moo;
  use Types::Standard qw//;
  use Paws::Pinpoint::Types qw/Pinpoint_MapOfEventItemResponse Pinpoint_EndpointItemResponse/;
  has EndpointItemResponse => (is => 'ro', isa => Pinpoint_EndpointItemResponse);
  has EventsItemResponse => (is => 'ro', isa => Pinpoint_MapOfEventItemResponse);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EventsItemResponse' => {
                                         'type' => 'Pinpoint_MapOfEventItemResponse',
                                         'class' => 'Paws::Pinpoint::MapOfEventItemResponse'
                                       },
               'EndpointItemResponse' => {
                                           'type' => 'Pinpoint_EndpointItemResponse',
                                           'class' => 'Paws::Pinpoint::EndpointItemResponse'
                                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::ItemResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::ItemResponse object:

  $service_obj->Method(Att1 => { EndpointItemResponse => $value, ..., EventsItemResponse => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::ItemResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->EndpointItemResponse

=head1 DESCRIPTION

Provides information about the results of a request to create or update
an endpoint that's associated with an event.

=head1 ATTRIBUTES


=head2 EndpointItemResponse => Pinpoint_EndpointItemResponse

  The response that was received after the endpoint data was accepted.


=head2 EventsItemResponse => Pinpoint_MapOfEventItemResponse

  A multipart response object that contains a key and a value for each
event in the request. In each object, the event ID is the key and an
EventItemResponse object is the value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

