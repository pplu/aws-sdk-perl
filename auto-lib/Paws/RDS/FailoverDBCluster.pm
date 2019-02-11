
package Paws::RDS::FailoverDBCluster;
  use Moose;
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has TargetDBInstanceIdentifier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'FailoverDBCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::FailoverDBClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'FailoverDBClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::FailoverDBCluster - Arguments for method FailoverDBCluster on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method FailoverDBCluster on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method FailoverDBCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to FailoverDBCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    # To perform a failover for a DB cluster
    # This example performs a failover for the specified DB cluster to the
    # specified DB instance.
    my $FailoverDBClusterResult = $rds->FailoverDBCluster(
      {
        'DBClusterIdentifier'        => 'myaurorainstance-cluster',
        'TargetDBInstanceIdentifier' => 'myaurorareplica'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/FailoverDBCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DBClusterIdentifier => Str

A DB cluster identifier to force a failover for. This parameter is not
case-sensitive.

Constraints:

=over

=item *

Must match the identifier of an existing DBCluster.

=back




=head2 TargetDBInstanceIdentifier => Str

The name of the instance to promote to the primary instance.

You must specify the instance identifier for an Aurora Replica in the
DB cluster. For example, C<mydbcluster-replica1>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method FailoverDBCluster in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

