package Paws::RedShift::RevisionTarget;
  use Moose;
  has DatabaseRevision => (is => 'ro', isa => 'Str');
  has DatabaseRevisionReleaseDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::RevisionTarget

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::RevisionTarget object:

  $service_obj->Method(Att1 => { DatabaseRevision => $value, ..., Description => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::RevisionTarget object:

  $result = $service_obj->Method(...);
  $result->Att1->DatabaseRevision

=head1 DESCRIPTION

Describes a C<RevisionTarget>.

=head1 ATTRIBUTES


=head2 DatabaseRevision => Str

  A unique string that identifies the version to update the cluster to.
You can use this value in ModifyClusterDbRevision.


=head2 DatabaseRevisionReleaseDate => Str

  The date on which the database revision was released.


=head2 Description => Str

  A string that describes the changes and features that will be applied
to the cluster when it is updated to the corresponding
ClusterDbRevision.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

