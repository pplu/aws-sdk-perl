package Paws::Pinpoint::EndpointItemResponse;
  use Moose;
  has Message => (is => 'ro', isa => 'Str');
  has StatusCode => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::EndpointItemResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::EndpointItemResponse object:

  $service_obj->Method(Att1 => { Message => $value, ..., StatusCode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::EndpointItemResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->Message

=head1 DESCRIPTION

A complex object that holds the status code and message as a result of
processing an endpoint.

=head1 ATTRIBUTES


=head2 Message => Str

  A custom message associated with the registration of an endpoint when
issuing a response.


=head2 StatusCode => Int

  The status code associated with the merging of an endpoint when issuing
a response.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

