
package Paws::ElastiCache::ResetCacheParameterGroup;
  use Moose;
  has CacheParameterGroupName => (is => 'ro', isa => 'Str', required => 1);
  has ParameterNameValues => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::ParameterNameValue]');
  has ResetAllParameters => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ResetCacheParameterGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::CacheParameterGroupNameMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ResetCacheParameterGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ResetCacheParameterGroup - Arguments for method ResetCacheParameterGroup on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ResetCacheParameterGroup on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method ResetCacheParameterGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ResetCacheParameterGroup.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $CacheParameterGroupNameMessage = $elasticache->ResetCacheParameterGroup(
      CacheParameterGroupName => 'MyString',
      ParameterNameValues     => [
        {
          ParameterName  => 'MyString',
          ParameterValue => 'MyString',
        },
        ...
      ],    # OPTIONAL
      ResetAllParameters => 1,    # OPTIONAL
    );

    # Results:
    my $CacheParameterGroupName =
      $CacheParameterGroupNameMessage->CacheParameterGroupName;

    # Returns a L<Paws::ElastiCache::CacheParameterGroupNameMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/ResetCacheParameterGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CacheParameterGroupName => Str

The name of the cache parameter group to reset.



=head2 ParameterNameValues => ArrayRef[L<Paws::ElastiCache::ParameterNameValue>]

An array of parameter names to reset to their default values. If
C<ResetAllParameters> is C<true>, do not use C<ParameterNameValues>. If
C<ResetAllParameters> is C<false>, you must specify the name of at
least one parameter to reset.



=head2 ResetAllParameters => Bool

If C<true>, all parameters in the cache parameter group are reset to
their default values. If C<false>, only the parameters listed by
C<ParameterNameValues> are reset to their default values.

Valid values: C<true> | C<false>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ResetCacheParameterGroup in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

