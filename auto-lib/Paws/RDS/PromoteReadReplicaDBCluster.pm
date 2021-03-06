
package Paws::RDS::PromoteReadReplicaDBCluster;
  use Moose;
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PromoteReadReplicaDBCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::PromoteReadReplicaDBClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PromoteReadReplicaDBClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::PromoteReadReplicaDBCluster - Arguments for method PromoteReadReplicaDBCluster on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PromoteReadReplicaDBCluster on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method PromoteReadReplicaDBCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PromoteReadReplicaDBCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $PromoteReadReplicaDBClusterResult = $rds->PromoteReadReplicaDBCluster(
      DBClusterIdentifier => 'MyString',

    );

    # Results:
    my $DBCluster = $PromoteReadReplicaDBClusterResult->DBCluster;

    # Returns a L<Paws::RDS::PromoteReadReplicaDBClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/PromoteReadReplicaDBCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBClusterIdentifier => Str

The identifier of the DB cluster read replica to promote. This
parameter isn't case-sensitive.

Constraints:

=over

=item *

Must match the identifier of an existing DB cluster read replica.

=back

Example: C<my-cluster-replica1>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PromoteReadReplicaDBCluster in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

