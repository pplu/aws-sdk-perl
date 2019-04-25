package Paws::Pinpoint::ItemResponse;
  use Moose;
  has EndpointItemResponse => (is => 'ro', isa => 'Paws::Pinpoint::EndpointItemResponse');
  has EventsItemResponse => (is => 'ro', isa => 'Paws::Pinpoint::MapOfEventItemResponse');
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

The response that's provided after registering the endpoint.

=head1 ATTRIBUTES


=head2 EndpointItemResponse => L<Paws::Pinpoint::EndpointItemResponse>

  The response received after the endpoint was accepted.


=head2 EventsItemResponse => L<Paws::Pinpoint::MapOfEventItemResponse>

  A multipart response object that contains a key and value for each
event ID in the request. In each object, the event ID is the key, and
an EventItemResponse object is the value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

