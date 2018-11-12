package Paws::Pinpoint::EventsResponse;
  use Moose;
  has Results => (is => 'ro', isa => 'Paws::Pinpoint::MapOfItemResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::EventsResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::EventsResponse object:

  $service_obj->Method(Att1 => { Results => $value, ..., Results => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::EventsResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->Results

=head1 DESCRIPTION

Custom messages associated with events.

=head1 ATTRIBUTES


=head2 Results => L<Paws::Pinpoint::MapOfItemResponse>

  A map that contains a multipart response for each endpoint. Each item
in this object uses the endpoint ID as the key, and the item response
as the value. If no item response exists, the value can also be one of
the following: 202 (if the request was processed successfully) or 400
(if the payload was invalid, or required fields were missing).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

