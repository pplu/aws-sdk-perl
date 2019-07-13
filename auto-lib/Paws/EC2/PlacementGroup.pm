package Paws::EC2::PlacementGroup;
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', request_name => 'groupName', traits => ['NameInRequest']);
  has PartitionCount => (is => 'ro', isa => 'Int', request_name => 'partitionCount', traits => ['NameInRequest']);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest']);
  has Strategy => (is => 'ro', isa => 'Str', request_name => 'strategy', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::PlacementGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::PlacementGroup object:

  $service_obj->Method(Att1 => { GroupName => $value, ..., Strategy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::PlacementGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->GroupName

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 GroupName => Str

  The name of the placement group.


=head2 PartitionCount => Int

  The number of partitions. Valid only if B<strategy> is set to
C<partition>.


=head2 State => Str

  The state of the placement group.


=head2 Strategy => Str

  The placement strategy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
