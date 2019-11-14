package Paws::AppMesh::ResourceMetadata;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest'], required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest'], required => 1);
  has LastUpdatedAt => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedAt', traits => ['NameInRequest'], required => 1);
  has Uid => (is => 'ro', isa => 'Str', request_name => 'uid', traits => ['NameInRequest'], required => 1);
  has Version => (is => 'ro', isa => 'Int', request_name => 'version', traits => ['NameInRequest'], required => 1);
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

An object that represents metadata for a resource.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The full Amazon Resource Name (ARN) for the resource.


=head2 B<REQUIRED> CreatedAt => Str

  The Unix epoch timestamp in seconds for when the resource was created.


=head2 B<REQUIRED> LastUpdatedAt => Str

  The Unix epoch timestamp in seconds for when the resource was last
updated.


=head2 B<REQUIRED> Uid => Str

  The unique identifier for the resource.


=head2 B<REQUIRED> Version => Int

  The version of the resource. Resources are created at version 1, and
this version is incremented each time that they're updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppMesh>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

