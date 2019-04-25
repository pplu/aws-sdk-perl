
package Paws::DAX::DecreaseReplicationFactor;
  use Moose;
  has AvailabilityZones => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClusterName => (is => 'ro', isa => 'Str', required => 1);
  has NewReplicationFactor => (is => 'ro', isa => 'Int', required => 1);
  has NodeIdsToRemove => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DecreaseReplicationFactor');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DAX::DecreaseReplicationFactorResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DAX::DecreaseReplicationFactor - Arguments for method DecreaseReplicationFactor on L<Paws::DAX>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DecreaseReplicationFactor on the
L<Amazon DynamoDB Accelerator (DAX)|Paws::DAX> service. Use the attributes of this class
as arguments to method DecreaseReplicationFactor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DecreaseReplicationFactor.

=head1 SYNOPSIS

    my $dax = Paws->service('DAX');
    my $DecreaseReplicationFactorResponse = $dax->DecreaseReplicationFactor(
      ClusterName          => 'MyString',
      NewReplicationFactor => 1,
      AvailabilityZones    => [ 'MyString', ... ],    # OPTIONAL
      NodeIdsToRemove      => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $Cluster = $DecreaseReplicationFactorResponse->Cluster;

    # Returns a L<Paws::DAX::DecreaseReplicationFactorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/dax/DecreaseReplicationFactor>

=head1 ATTRIBUTES


=head2 AvailabilityZones => ArrayRef[Str|Undef]

The Availability Zone(s) from which to remove nodes.



=head2 B<REQUIRED> ClusterName => Str

The name of the DAX cluster from which you want to remove nodes.



=head2 B<REQUIRED> NewReplicationFactor => Int

The new number of nodes for the DAX cluster.



=head2 NodeIdsToRemove => ArrayRef[Str|Undef]

The unique identifiers of the nodes to be removed from the cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DecreaseReplicationFactor in L<Paws::DAX>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

