package Paws::Snowball::ClusterListEntry;
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str');
  has ClusterState => (is => 'ro', isa => 'Str');
  has CreationDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::ClusterListEntry

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Snowball::ClusterListEntry object:

  $service_obj->Method(Att1 => { ClusterId => $value, ..., Description => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Snowball::ClusterListEntry object:

  $result = $service_obj->Method(...);
  $result->Att1->ClusterId

=head1 DESCRIPTION

Contains a cluster's state, a cluster's ID, and other important
information.

=head1 ATTRIBUTES


=head2 ClusterId => Str

  The 39-character ID for the cluster that you want to list, for example
C<CID123e4567-e89b-12d3-a456-426655440000>.


=head2 ClusterState => Str

  The current state of this cluster. For information about the state of a
specific node, see JobListEntry$JobState.


=head2 CreationDate => Str

  The creation date for this cluster.


=head2 Description => Str

  Defines an optional description of the cluster, for example
C<Environmental Data Cluster-01>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

