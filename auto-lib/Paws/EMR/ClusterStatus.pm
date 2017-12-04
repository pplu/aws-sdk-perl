package Paws::EMR::ClusterStatus;
  use Moose;
  has State => (is => 'ro', isa => 'Str');
  has StateChangeReason => (is => 'ro', isa => 'Paws::EMR::ClusterStateChangeReason');
  has Timeline => (is => 'ro', isa => 'Paws::EMR::ClusterTimeline');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ClusterStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::ClusterStatus object:

  $service_obj->Method(Att1 => { State => $value, ..., Timeline => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::ClusterStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->State

=head1 DESCRIPTION

The detailed status of the cluster.

=head1 ATTRIBUTES


=head2 State => Str

  The current state of the cluster.


=head2 StateChangeReason => L<Paws::EMR::ClusterStateChangeReason>

  The reason for the cluster status change.


=head2 Timeline => L<Paws::EMR::ClusterTimeline>

  A timeline that represents the status of a cluster over the lifetime of
the cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

