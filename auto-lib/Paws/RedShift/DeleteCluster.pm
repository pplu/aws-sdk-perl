
package Paws::RedShift::DeleteCluster;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has FinalClusterSnapshotIdentifier => (is => 'ro', isa => 'Str');
  has FinalClusterSnapshotRetentionPeriod => (is => 'ro', isa => 'Int');
  has SkipFinalClusterSnapshot => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::DeleteClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::DeleteCluster - Arguments for method DeleteCluster on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCluster on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method DeleteCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCluster.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $DeleteClusterResult = $redshift->DeleteCluster(
      ClusterIdentifier                   => 'MyString',
      FinalClusterSnapshotIdentifier      => 'MyString',    # OPTIONAL
      FinalClusterSnapshotRetentionPeriod => 1,             # OPTIONAL
      SkipFinalClusterSnapshot            => 1,             # OPTIONAL
    );

    # Results:
    my $Cluster = $DeleteClusterResult->Cluster;

    # Returns a L<Paws::RedShift::DeleteClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/DeleteCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterIdentifier => Str

The identifier of the cluster to be deleted.

Constraints:

=over

=item *

Must contain lowercase characters.

=item *

Must contain from 1 to 63 alphanumeric characters or hyphens.

=item *

First character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back




=head2 FinalClusterSnapshotIdentifier => Str

The identifier of the final snapshot that is to be created immediately
before deleting the cluster. If this parameter is provided,
I<SkipFinalClusterSnapshot> must be C<false>.

Constraints:

=over

=item *

Must be 1 to 255 alphanumeric characters.

=item *

First character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back




=head2 FinalClusterSnapshotRetentionPeriod => Int

The number of days that a manual snapshot is retained. If the value is
-1, the manual snapshot is retained indefinitely.

The value must be either -1 or an integer between 1 and 3,653.

The default value is -1.



=head2 SkipFinalClusterSnapshot => Bool

Determines whether a final snapshot of the cluster is created before
Amazon Redshift deletes the cluster. If C<true>, a final cluster
snapshot is not created. If C<false>, a final cluster snapshot is
created before the cluster is deleted.

The I<FinalClusterSnapshotIdentifier> parameter must be specified if
I<SkipFinalClusterSnapshot> is C<false>.

Default: C<false>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCluster in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

