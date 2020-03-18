package Paws::AppMesh::GrpcRouteMatch;
  use Moose;
  has Metadata => (is => 'ro', isa => 'ArrayRef[Paws::AppMesh::GrpcRouteMetadata]', request_name => 'metadata', traits => ['NameInRequest']);
  has MethodName => (is => 'ro', isa => 'Str', request_name => 'methodName', traits => ['NameInRequest']);
  has ServiceName => (is => 'ro', isa => 'Str', request_name => 'serviceName', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::GrpcRouteMatch

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::GrpcRouteMatch object:

  $service_obj->Method(Att1 => { Metadata => $value, ..., ServiceName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::GrpcRouteMatch object:

  $result = $service_obj->Method(...);
  $result->Att1->Metadata

=head1 DESCRIPTION

An object that represents the criteria for determining a request match.

=head1 ATTRIBUTES


=head2 Metadata => ArrayRef[L<Paws::AppMesh::GrpcRouteMetadata>]

  An object that represents the data to match from the request.


=head2 MethodName => Str

  The method name to match from the request. If you specify a name, you
must also specify a C<serviceName>.


=head2 ServiceName => Str

  The fully qualified domain name for the service to match from the
request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

