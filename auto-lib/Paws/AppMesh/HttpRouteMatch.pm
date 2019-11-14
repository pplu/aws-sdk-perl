package Paws::AppMesh::HttpRouteMatch;
  use Moose;
  has Headers => (is => 'ro', isa => 'ArrayRef[Paws::AppMesh::HttpRouteHeader]', request_name => 'headers', traits => ['NameInRequest']);
  has Method => (is => 'ro', isa => 'Str', request_name => 'method', traits => ['NameInRequest']);
  has Prefix => (is => 'ro', isa => 'Str', request_name => 'prefix', traits => ['NameInRequest'], required => 1);
  has Scheme => (is => 'ro', isa => 'Str', request_name => 'scheme', traits => ['NameInRequest']);
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

  $service_obj->Method(Att1 => { Headers => $value, ..., Scheme => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::HttpRouteMatch object:

  $result = $service_obj->Method(...);
  $result->Att1->Headers

=head1 DESCRIPTION

An object that represents the requirements for a route to match HTTP
requests for a virtual router.

=head1 ATTRIBUTES


=head2 Headers => ArrayRef[L<Paws::AppMesh::HttpRouteHeader>]

  An object that represents the client request headers to match on.


=head2 Method => Str

  The client request method to match on. Specify only one.


=head2 B<REQUIRED> Prefix => Str

  Specifies the path to match requests with. This parameter must always
start with C</>, which by itself matches all requests to the virtual
service name. You can also match for path-based routing of requests.
For example, if your virtual service name is C<my-service.local> and
you want the route to match requests to C<my-service.local/metrics>,
your prefix should be C</metrics>.


=head2 Scheme => Str

  The client request scheme to match on. Specify only one.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

