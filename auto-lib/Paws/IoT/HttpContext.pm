package Paws::IoT::HttpContext;
  use Moose;
  has Headers => (is => 'ro', isa => 'Paws::IoT::HttpHeaders', request_name => 'headers', traits => ['NameInRequest']);
  has QueryString => (is => 'ro', isa => 'Str', request_name => 'queryString', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::HttpContext

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::HttpContext object:

  $service_obj->Method(Att1 => { Headers => $value, ..., QueryString => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::HttpContext object:

  $result = $service_obj->Method(...);
  $result->Att1->Headers

=head1 DESCRIPTION

Specifies the HTTP context to use for the test authorizer request.

=head1 ATTRIBUTES


=head2 Headers => L<Paws::IoT::HttpHeaders>

  The header keys and values in an HTTP authorization request.


=head2 QueryString => Str

  The query string keys and values in an HTTP authorization request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

