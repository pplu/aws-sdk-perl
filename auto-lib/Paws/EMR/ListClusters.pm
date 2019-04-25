
package Paws::EMR::ListClusters;
  use Moose;
  has ClusterStates => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CreatedAfter => (is => 'ro', isa => 'Str');
  has CreatedBefore => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListClusters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::ListClustersOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ListClusters - Arguments for method ListClusters on L<Paws::EMR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListClusters on the
L<Amazon Elastic MapReduce|Paws::EMR> service. Use the attributes of this class
as arguments to method ListClusters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListClusters.

=head1 SYNOPSIS

    my $elasticmapreduce = Paws->service('EMR');
    my $ListClustersOutput = $elasticmapreduce->ListClusters(
      ClusterStates => [
        'STARTING',
        ... # values: STARTING, BOOTSTRAPPING, RUNNING, WAITING, TERMINATING, TERMINATED, TERMINATED_WITH_ERRORS
      ],    # OPTIONAL
      CreatedAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      CreatedBefore => '1970-01-01T01:00:00',    # OPTIONAL
      Marker        => 'MyMarker',               # OPTIONAL
    );

    # Results:
    my $Clusters = $ListClustersOutput->Clusters;
    my $Marker   = $ListClustersOutput->Marker;

    # Returns a L<Paws::EMR::ListClustersOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticmapreduce/ListClusters>

=head1 ATTRIBUTES


=head2 ClusterStates => ArrayRef[Str|Undef]

The cluster state filters to apply when listing clusters.



=head2 CreatedAfter => Str

The creation date and time beginning value filter for listing clusters.



=head2 CreatedBefore => Str

The creation date and time end value filter for listing clusters.



=head2 Marker => Str

The pagination token that indicates the next set of results to
retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListClusters in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

