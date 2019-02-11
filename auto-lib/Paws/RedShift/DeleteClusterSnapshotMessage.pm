package Paws::RedShift::DeleteClusterSnapshotMessage;
  use Moose;
  has SnapshotClusterIdentifier => (is => 'ro', isa => 'Str');
  has SnapshotIdentifier => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DeleteClusterSnapshotMessage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::DeleteClusterSnapshotMessage object:

  $service_obj->Method(Att1 => { SnapshotClusterIdentifier => $value, ..., SnapshotIdentifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::DeleteClusterSnapshotMessage object:

  $result = $service_obj->Method(...);
  $result->Att1->SnapshotClusterIdentifier

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 SnapshotClusterIdentifier => Str

  The unique identifier of the cluster the snapshot was created from.
This parameter is required if your IAM user has a policy containing a
snapshot resource element that specifies anything other than * for the
cluster name.

Constraints: Must be the name of valid cluster.


=head2 B<REQUIRED> SnapshotIdentifier => Str

  The unique identifier of the manual snapshot to be deleted.

Constraints: Must be the name of an existing snapshot that is in the
C<available>, C<failed>, or C<cancelled> state.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

