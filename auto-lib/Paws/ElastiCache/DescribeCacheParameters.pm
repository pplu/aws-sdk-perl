
package Paws::ElastiCache::DescribeCacheParameters;
  use Moose;
  has CacheParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has Source => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeCacheParameters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::CacheParameterGroupDetails');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeCacheParametersResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DescribeCacheParameters - Arguments for method DescribeCacheParameters on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeCacheParameters on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method DescribeCacheParameters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeCacheParameters.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $CacheParameterGroupDetails = $elasticache->DescribeCacheParameters(
      CacheParameterGroupName => 'MyString',
      Marker                  => 'MyString',    # OPTIONAL
      MaxRecords              => 1,             # OPTIONAL
      Source                  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $CacheNodeTypeSpecificParameters =
      $CacheParameterGroupDetails->CacheNodeTypeSpecificParameters;
    my $Marker     = $CacheParameterGroupDetails->Marker;
    my $Parameters = $CacheParameterGroupDetails->Parameters;

    # Returns a L<Paws::ElastiCache::CacheParameterGroupDetails> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/DescribeCacheParameters>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CacheParameterGroupName => Str

The name of a specific cache parameter group to return details for.



=head2 Marker => Str

An optional marker returned from a prior request. Use this marker for
pagination of results from this operation. If this parameter is
specified, the response includes only records beyond the marker, up to
the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a marker is
included in the response so that the remaining results can be
retrieved.

Default: 100

Constraints: minimum 20; maximum 100.



=head2 Source => Str

The parameter types to return.

Valid values: C<user> | C<system> | C<engine-default>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeCacheParameters in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

