# Generated from default/object.tt
package Paws::AppMesh::GrpcRouteMetadata;
  use Moo;
  use Types::Standard qw/Bool Str/;
  use Paws::AppMesh::Types qw/AppMesh_GrpcRouteMetadataMatchMethod/;
  has Invert => (is => 'ro', isa => Bool);
  has Match => (is => 'ro', isa => AppMesh_GrpcRouteMetadataMatchMethod);
  has Name => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Name' => 'name',
                       'Invert' => 'invert',
                       'Match' => 'match'
                     },
  'IsRequired' => {
                    'Name' => 1
                  },
  'types' => {
               'Match' => {
                            'type' => 'AppMesh_GrpcRouteMetadataMatchMethod',
                            'class' => 'Paws::AppMesh::GrpcRouteMetadataMatchMethod'
                          },
               'Invert' => {
                             'type' => 'Bool'
                           },
               'Name' => {
                           'type' => 'Str'
                         }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::GrpcRouteMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::GrpcRouteMetadata object:

  $service_obj->Method(Att1 => { Invert => $value, ..., Name => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::GrpcRouteMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->Invert

=head1 DESCRIPTION

An object that represents the match metadata for the route.

=head1 ATTRIBUTES


=head2 Invert => Bool

  Specify C<True> to match anything except the match criteria. The
default value is C<False>.


=head2 Match => AppMesh_GrpcRouteMetadataMatchMethod

  An object that represents the data to match from the request.


=head2 B<REQUIRED> Name => Str

  The name of the route.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

