# Generated from default/object.tt
package Paws::AppMesh::HttpRoute;
  use Moo;
  use Types::Standard qw//;
  use Paws::AppMesh::Types qw/AppMesh_HttpRouteMatch AppMesh_HttpRouteAction/;
  has Action => (is => 'ro', isa => AppMesh_HttpRouteAction, required => 1);
  has Match => (is => 'ro', isa => AppMesh_HttpRouteMatch, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Action' => {
                             'class' => 'Paws::AppMesh::HttpRouteAction',
                             'type' => 'AppMesh_HttpRouteAction'
                           },
               'Match' => {
                            'class' => 'Paws::AppMesh::HttpRouteMatch',
                            'type' => 'AppMesh_HttpRouteMatch'
                          }
             },
  'NameInRequest' => {
                       'Action' => 'action',
                       'Match' => 'match'
                     },
  'IsRequired' => {
                    'Action' => 1,
                    'Match' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::HttpRoute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::HttpRoute object:

  $service_obj->Method(Att1 => { Action => $value, ..., Match => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::HttpRoute object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

An object representing the HTTP routing specification for a route.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => AppMesh_HttpRouteAction

  The action to take if a match is determined.


=head2 B<REQUIRED> Match => AppMesh_HttpRouteMatch

  The criteria for determining an HTTP request match.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

