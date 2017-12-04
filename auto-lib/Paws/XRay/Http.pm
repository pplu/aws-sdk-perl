package Paws::XRay::Http;
  use Moose;
  has ClientIp => (is => 'ro', isa => 'Str');
  has HttpMethod => (is => 'ro', isa => 'Str');
  has HttpStatus => (is => 'ro', isa => 'Int');
  has HttpURL => (is => 'ro', isa => 'Str');
  has UserAgent => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::Http

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::XRay::Http object:

  $service_obj->Method(Att1 => { ClientIp => $value, ..., UserAgent => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::XRay::Http object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientIp

=head1 DESCRIPTION

Information about an HTTP request.

=head1 ATTRIBUTES


=head2 ClientIp => Str

  The IP address of the requestor.


=head2 HttpMethod => Str

  The request method.


=head2 HttpStatus => Int

  The response status.


=head2 HttpURL => Str

  The request URL.


=head2 UserAgent => Str

  The request's user agent string.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::XRay>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

