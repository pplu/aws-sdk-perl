
package Paws::ElastiCache::BatchStopUpdateAction;
  use Moose;
  has CacheClusterIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ReplicationGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ServiceUpdateName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchStopUpdateAction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::UpdateActionResultsMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'BatchStopUpdateActionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::BatchStopUpdateAction - Arguments for method BatchStopUpdateAction on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchStopUpdateAction on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method BatchStopUpdateAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchStopUpdateAction.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $UpdateActionResultsMessage = $elasticache->BatchStopUpdateAction(
      ServiceUpdateName   => 'MyString',
      CacheClusterIds     => [ 'MyString', ... ],    # OPTIONAL
      ReplicationGroupIds => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $ProcessedUpdateActions =
      $UpdateActionResultsMessage->ProcessedUpdateActions;
    my $UnprocessedUpdateActions =
      $UpdateActionResultsMessage->UnprocessedUpdateActions;

    # Returns a L<Paws::ElastiCache::UpdateActionResultsMessage> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/BatchStopUpdateAction>

=head1 ATTRIBUTES


=head2 CacheClusterIds => ArrayRef[Str|Undef]

The cache cluster IDs



=head2 ReplicationGroupIds => ArrayRef[Str|Undef]

The replication group IDs



=head2 B<REQUIRED> ServiceUpdateName => Str

The unique ID of the service update




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchStopUpdateAction in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

