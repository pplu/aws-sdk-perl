
package Paws::RedShift::ModifyClusterDbRevision;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has RevisionTarget => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyClusterDbRevision');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::ModifyClusterDbRevisionResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyClusterDbRevisionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ModifyClusterDbRevision - Arguments for method ModifyClusterDbRevision on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyClusterDbRevision on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method ModifyClusterDbRevision.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyClusterDbRevision.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $ModifyClusterDbRevisionResult = $redshift->ModifyClusterDbRevision(
      ClusterIdentifier => 'MyString',
      RevisionTarget    => 'MyString',

    );

    # Results:
    my $Cluster = $ModifyClusterDbRevisionResult->Cluster;

    # Returns a L<Paws::RedShift::ModifyClusterDbRevisionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/ModifyClusterDbRevision>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterIdentifier => Str

The unique identifier of a cluster whose database revision you want to
modify.

Example: C<examplecluster>



=head2 B<REQUIRED> RevisionTarget => Str

The identifier of the database revision. You can retrieve this value
from the response to the DescribeClusterDbRevisions request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyClusterDbRevision in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

