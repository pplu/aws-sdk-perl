
package Paws::RDS::RemoveFromGlobalCluster;
  use Moose;
  has DbClusterIdentifier => (is => 'ro', isa => 'Str');
  has GlobalClusterIdentifier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveFromGlobalCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::RemoveFromGlobalClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RemoveFromGlobalClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::RemoveFromGlobalCluster - Arguments for method RemoveFromGlobalCluster on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveFromGlobalCluster on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method RemoveFromGlobalCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveFromGlobalCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $RemoveFromGlobalClusterResult = $rds->RemoveFromGlobalCluster(
      DbClusterIdentifier     => 'MyString',    # OPTIONAL
      GlobalClusterIdentifier => 'MyString',    # OPTIONAL
    );

    # Results:
    my $GlobalCluster = $RemoveFromGlobalClusterResult->GlobalCluster;

    # Returns a L<Paws::RDS::RemoveFromGlobalClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/RemoveFromGlobalCluster>

=head1 ATTRIBUTES


=head2 DbClusterIdentifier => Str

The Amazon Resource Name (ARN) identifying the cluster that was
detached from the Aurora global database cluster.



=head2 GlobalClusterIdentifier => Str

The cluster identifier to detach from the Aurora global database
cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveFromGlobalCluster in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

