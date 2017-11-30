package Paws::CognitoIdp::HttpHeader;
  use Moose;
  has HeaderName => (is => 'ro', isa => 'Str', request_name => 'headerName', traits => ['NameInRequest']);
  has HeaderValue => (is => 'ro', isa => 'Str', request_name => 'headerValue', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::HttpHeader

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::HttpHeader object:

  $service_obj->Method(Att1 => { HeaderName => $value, ..., HeaderValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::HttpHeader object:

  $result = $service_obj->Method(...);
  $result->Att1->HeaderName

=head1 DESCRIPTION

The HTTP header.

=head1 ATTRIBUTES


=head2 HeaderName => Str

  The header name


=head2 HeaderValue => Str

  The header value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

