
package Paws::DocDB::ModifyGlobalCluster;
  use Moose;
  has DeletionProtection => (is => 'ro', isa => 'Bool');
  has GlobalClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has NewGlobalClusterIdentifier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyGlobalCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DocDB::ModifyGlobalClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyGlobalClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DocDB::ModifyGlobalCluster - Arguments for method ModifyGlobalCluster on L<Paws::DocDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyGlobalCluster on the
L<Amazon DocumentDB with MongoDB compatibility|Paws::DocDB> service. Use the attributes of this class
as arguments to method ModifyGlobalCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyGlobalCluster.

=head1 SYNOPSIS

    my $rds = Paws->service('DocDB');
    my $ModifyGlobalClusterResult = $rds->ModifyGlobalCluster(
      GlobalClusterIdentifier    => 'MyGlobalClusterIdentifier',
      DeletionProtection         => 1,                              # OPTIONAL
      NewGlobalClusterIdentifier => 'MyGlobalClusterIdentifier',    # OPTIONAL
    );

    # Results:
    my $GlobalCluster = $ModifyGlobalClusterResult->GlobalCluster;

    # Returns a L<Paws::DocDB::ModifyGlobalClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/ModifyGlobalCluster>

=head1 ATTRIBUTES


=head2 DeletionProtection => Bool

Indicates if the global cluster has deletion protection enabled. The
global cluster can't be deleted when deletion protection is enabled.



=head2 B<REQUIRED> GlobalClusterIdentifier => Str

The identifier for the global cluster being modified. This parameter
isn't case-sensitive.

Constraints:

=over

=item *

Must match the identifier of an existing global cluster.

=back




=head2 NewGlobalClusterIdentifier => Str

The new identifier for a global cluster when you modify a global
cluster. This value is stored as a lowercase string.

=over

=item *

Must contain from 1 to 63 letters, numbers, or hyphens

The first character must be a letter

Can't end with a hyphen or contain two consecutive hyphens

=back

Example: C<my-cluster2>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyGlobalCluster in L<Paws::DocDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

