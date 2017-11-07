package Paws::CloudSearch::ScalingParameters;
  use Moose;
  has DesiredInstanceType => (is => 'ro', isa => 'Str');
  has DesiredPartitionCount => (is => 'ro', isa => 'Int');
  has DesiredReplicationCount => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::ScalingParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudSearch::ScalingParameters object:

  $service_obj->Method(Att1 => { DesiredInstanceType => $value, ..., DesiredReplicationCount => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudSearch::ScalingParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->DesiredInstanceType

=head1 DESCRIPTION

The desired instance type and desired number of replicas of each index
partition.

=head1 ATTRIBUTES


=head2 DesiredInstanceType => Str

  The instance type that you want to preconfigure for your domain. For
example, C<search.m1.small>.


=head2 DesiredPartitionCount => Int

  The number of partitions you want to preconfigure for your domain. Only
valid when you select C<m2.2xlarge> as the desired instance type.


=head2 DesiredReplicationCount => Int

  The number of replicas you want to preconfigure for each index
partition.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

