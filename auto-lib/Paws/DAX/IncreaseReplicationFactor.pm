
package Paws::DAX::IncreaseReplicationFactor;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClusterName => (is => 'ro', isa => 'Str', required => 1);
  has NewReplicationFactor => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'IncreaseReplicationFactor');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DAX::IncreaseReplicationFactorResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DAX::IncreaseReplicationFactor - Arguments for method IncreaseReplicationFactor on L<Paws::DAX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method IncreaseReplicationFactor on the
L<Amazon DynamoDB Accelerator (DAX)|Paws::DAX> service. Use the attributes of this class
as arguments to method IncreaseReplicationFactor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to IncreaseReplicationFactor.

=head1 SYNOPSIS

    my $dax = Paws->service('DAX');
    my $IncreaseReplicationFactorResponse = $dax->IncreaseReplicationFactor(
      ClusterName          => 'MyString',
      NewReplicationFactor => 1,
      AvailabilityZones    => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $Cluster = $IncreaseReplicationFactorResponse->Cluster;

    # Returns a L<Paws::DAX::IncreaseReplicationFactorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dax/IncreaseReplicationFactor>

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[Str|Undef]

The Availability Zones (AZs) in which the cluster nodes will be
created. All nodes belonging to the cluster are placed in these
Availability Zones. Use this parameter if you want to distribute the
nodes across multiple AZs.



=head2 B<REQUIRED> ClusterName => Str

The name of the DAX cluster that will receive additional nodes.



=head2 B<REQUIRED> NewReplicationFactor => Int

The new number of nodes for the DAX cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method IncreaseReplicationFactor in L<Paws::DAX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

