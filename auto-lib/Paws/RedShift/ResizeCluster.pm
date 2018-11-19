
package Paws::RedShift::ResizeCluster;
  use Moose;
  has Classic => (is => 'ro', isa => 'Bool');
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has ClusterType => (is => 'ro', isa => 'Str');
  has NodeType => (is => 'ro', isa => 'Str');
  has NumberOfNodes => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResizeCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::ResizeClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ResizeClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ResizeCluster - Arguments for method ResizeCluster on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResizeCluster on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method ResizeCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResizeCluster.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $ResizeClusterResult = $redshift->ResizeCluster(
      ClusterIdentifier => 'MyString',
      NumberOfNodes     => 1,
      Classic           => 1,             # OPTIONAL
      ClusterType       => 'MyString',    # OPTIONAL
      NodeType          => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Cluster = $ResizeClusterResult->Cluster;

    # Returns a L<Paws::RedShift::ResizeClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/ResizeCluster>

=head1 ATTRIBUTES


=head2 Classic => Bool

A boolean value indicating whether the resize operation is using the
classic resize process. If you don't provide this parameter or set the
value to C<false>, the resize type is elastic.



=head2 B<REQUIRED> ClusterIdentifier => Str

The unique identifier for the cluster to resize.



=head2 ClusterType => Str

The new cluster type for the specified cluster.



=head2 NodeType => Str

The new node type for the nodes you are adding.



=head2 B<REQUIRED> NumberOfNodes => Int

The new number of nodes for the cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResizeCluster in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

