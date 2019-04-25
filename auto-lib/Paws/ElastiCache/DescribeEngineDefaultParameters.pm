
package Paws::ElastiCache::DescribeEngineDefaultParameters;
  use Moose;
  has CacheParameterGroupFamily => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEngineDefaultParameters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::DescribeEngineDefaultParametersResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEngineDefaultParametersResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DescribeEngineDefaultParameters - Arguments for method DescribeEngineDefaultParameters on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEngineDefaultParameters on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method DescribeEngineDefaultParameters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEngineDefaultParameters.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $DescribeEngineDefaultParametersResult =
      $elasticache->DescribeEngineDefaultParameters(
      CacheParameterGroupFamily => 'MyString',
      Marker                    => 'MyString',    # OPTIONAL
      MaxRecords                => 1,             # OPTIONAL
      );

    # Results:
    my $EngineDefaults = $DescribeEngineDefaultParametersResult->EngineDefaults;

 # Returns a L<Paws::ElastiCache::DescribeEngineDefaultParametersResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/DescribeEngineDefaultParameters>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CacheParameterGroupFamily => Str

The name of the cache parameter group family.

Valid values are: C<memcached1.4> | C<redis2.6> | C<redis2.8> |
C<redis3.2> | C<redis4.0>



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




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEngineDefaultParameters in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

