# Generated from default/object.tt
package Paws::AppMesh::HttpRouteAction;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::AppMesh::Types qw/AppMesh_WeightedTarget/;
  has WeightedTargets => (is => 'ro', isa => ArrayRef[AppMesh_WeightedTarget], required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'WeightedTargets' => {
                                      'class' => 'Paws::AppMesh::WeightedTarget',
                                      'type' => 'ArrayRef[AppMesh_WeightedTarget]'
                                    }
             },
  'NameInRequest' => {
                       'WeightedTargets' => 'weightedTargets'
                     },
  'IsRequired' => {
                    'WeightedTargets' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::HttpRouteAction

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::HttpRouteAction object:

  $service_obj->Method(Att1 => { WeightedTargets => $value, ..., WeightedTargets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::HttpRouteAction object:

  $result = $service_obj->Method(...);
  $result->Att1->WeightedTargets

=head1 DESCRIPTION

An object representing the traffic distribution requirements for
matched HTTP requests.

=head1 ATTRIBUTES


=head2 B<REQUIRED> WeightedTargets => ArrayRef[AppMesh_WeightedTarget]

  The targets that traffic is routed to when a request matches the route.
You can specify one or more targets and their relative weights to
distribute traffic with.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

