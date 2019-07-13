package Paws::RedShift::ClusterDbRevision;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has CurrentDatabaseRevision => (is => 'ro', isa => 'Str');
  has DatabaseRevisionReleaseDate => (is => 'ro', isa => 'Str');
  has RevisionTargets => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::RevisionTarget]', request_name => 'RevisionTarget', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ClusterDbRevision

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::ClusterDbRevision object:

  $service_obj->Method(Att1 => { ClusterIdentifier => $value, ..., RevisionTargets => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::ClusterDbRevision object:

  $result = $service_obj->Method(...);
  $result->Att1->ClusterIdentifier

=head1 DESCRIPTION

Describes a C<ClusterDbRevision>.

=head1 ATTRIBUTES


=head2 ClusterIdentifier => Str

  The unique identifier of the cluster.


=head2 CurrentDatabaseRevision => Str

  A string representing the current cluster version.


=head2 DatabaseRevisionReleaseDate => Str

  The date on which the database revision was released.


=head2 RevisionTargets => ArrayRef[L<Paws::RedShift::RevisionTarget>]

  A list of C<RevisionTarget> objects, where each object describes the
database revision that a cluster can be updated to.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

