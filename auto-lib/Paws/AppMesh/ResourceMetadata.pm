package Paws::AppMesh::ResourceMetadata;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has LastUpdatedAt => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedAt', traits => ['NameInRequest']);
  has Uid => (is => 'ro', isa => 'Str', request_name => 'uid', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Int', request_name => 'version', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppMesh::ResourceMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppMesh::ResourceMetadata object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppMesh::ResourceMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

An object representing metadata for a resource.

=head1 ATTRIBUTES


=head2 Arn => Str

  The full Amazon Resource Name (ARN) for the resource.

After you create a virtual node, set this value (either the full ARN or
the truncated resource name, for example,
C<mesh/default/virtualNode/simpleapp>, as the
C<APPMESH_VIRTUAL_NODE_NAME> environment variable for your task group's
Envoy proxy container in your task definition or pod spec. This is then
mapped to the C<node.id> and C<node.cluster> Envoy parameters.

If you require your Envoy stats or tracing to use a different name, you
can override the C<node.cluster> value that is set by
C<APPMESH_VIRTUAL_NODE_NAME> with the C<APPMESH_VIRTUAL_NODE_CLUSTER>
environment variable.


=head2 CreatedAt => Str

  The Unix epoch timestamp in seconds for when the resource was created.


=head2 LastUpdatedAt => Str

  The Unix epoch timestamp in seconds for when the resource was last
updated.


=head2 Uid => Str

  The unique identifier for the resource.


=head2 Version => Int

  The version of the resource. Resources are created at version 1, and
this version is incremented each time they are updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

