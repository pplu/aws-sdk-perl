
package Paws::RedShift::PauseCluster;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PauseCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::PauseClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PauseClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::PauseCluster - Arguments for method PauseCluster on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PauseCluster on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method PauseCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PauseCluster.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $PauseClusterResult = $redshift->PauseCluster(
      ClusterIdentifier => 'MyString',

    );

    # Results:
    my $Cluster = $PauseClusterResult->Cluster;

    # Returns a L<Paws::RedShift::PauseClusterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/PauseCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterIdentifier => Str

The identifier of the cluster to be paused.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PauseCluster in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

