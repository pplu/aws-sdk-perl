package Paws::AppMesh::HttpRouteMatch;
  use Moose;
  has Prefix => (is => 'ro', isa => 'Str', request_name => 'prefix', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::HttpRouteMatch

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::HttpRouteMatch object:

  $service_obj->Method(Att1 => { Prefix => $value, ..., Prefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::HttpRouteMatch object:

  $result = $service_obj->Method(...);
  $result->Att1->Prefix

=head1 DESCRIPTION

An object representing the requirements for a route to match HTTP
requests for a virtual router.

=head1 ATTRIBUTES


=head2 Prefix => Str

  Specifies the path with which to match requests. This parameter must
always start with C</>, which by itself matches all requests to the
virtual router service name. You can also match for path-based routing
of requests. For example, if your virtual router service name is
C<my-service.local>, and you want the route to match requests to
C<my-service.local/metrics>, then your prefix should be C</metrics>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

