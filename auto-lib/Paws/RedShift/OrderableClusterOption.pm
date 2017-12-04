package Paws::RedShift::OrderableClusterOption;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::AvailabilityZone]', request_name => 'AvailabilityZone', traits => ['NameInRequest']);
  has ClusterType => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has NodeType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::OrderableClusterOption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::OrderableClusterOption object:

  $service_obj->Method(Att1 => { AvailabilityZones => $value, ..., NodeType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::OrderableClusterOption object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZones

=head1 DESCRIPTION

Describes an orderable cluster option.

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[L<Paws::RedShift::AvailabilityZone>]

  A list of availability zones for the orderable cluster.


=head2 ClusterType => Str

  The cluster type, for example C<multi-node>.


=head2 ClusterVersion => Str

  The version of the orderable cluster.


=head2 NodeType => Str

  The node type for the orderable cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

