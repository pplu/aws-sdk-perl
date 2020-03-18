package Paws::AppMesh::HttpRouteHeader;
  use Moose;
  has Invert => (is => 'ro', isa => 'Bool', request_name => 'invert', traits => ['NameInRequest']);
  has Match => (is => 'ro', isa => 'Paws::AppMesh::HeaderMatchMethod', request_name => 'match', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::HttpRouteHeader

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::HttpRouteHeader object:

  $service_obj->Method(Att1 => { Invert => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::HttpRouteHeader object:

  $result = $service_obj->Method(...);
  $result->Att1->Invert

=head1 DESCRIPTION

An object that represents the HTTP header in the request.

=head1 ATTRIBUTES


=head2 Invert => Bool

  Specify C<True> to match anything except the match criteria. The
default value is C<False>.


=head2 Match => L<Paws::AppMesh::HeaderMatchMethod>

  The C<HeaderMatchMethod> object.


=head2 B<REQUIRED> Name => Str

  A name for the HTTP header in the client request that will be matched
on.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

