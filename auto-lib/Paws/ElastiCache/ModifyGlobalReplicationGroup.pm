
package Paws::ElastiCache::ModifyGlobalReplicationGroup;
  use Moose;
  has ApplyImmediately => (is => 'ro', isa => 'Bool', required => 1);
  has AutomaticFailoverEnabled => (is => 'ro', isa => 'Bool');
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has GlobalReplicationGroupDescription => (is => 'ro', isa => 'Str');
  has GlobalReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyGlobalReplicationGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::ModifyGlobalReplicationGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyGlobalReplicationGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::ModifyGlobalReplicationGroup - Arguments for method ModifyGlobalReplicationGroup on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyGlobalReplicationGroup on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method ModifyGlobalReplicationGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyGlobalReplicationGroup.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $ModifyGlobalReplicationGroupResult =
      $elasticache->ModifyGlobalReplicationGroup(
      ApplyImmediately                  => 1,
      GlobalReplicationGroupId          => 'MyString',
      AutomaticFailoverEnabled          => 1,             # OPTIONAL
      CacheNodeType                     => 'MyString',    # OPTIONAL
      CacheParameterGroupName           => 'MyString',    # OPTIONAL
      EngineVersion                     => 'MyString',    # OPTIONAL
      GlobalReplicationGroupDescription => 'MyString',    # OPTIONAL
      );

    # Results:
    my $GlobalReplicationGroup =
      $ModifyGlobalReplicationGroupResult->GlobalReplicationGroup;

    # Returns a L<Paws::ElastiCache::ModifyGlobalReplicationGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/ModifyGlobalReplicationGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplyImmediately => Bool

This parameter causes the modifications in this request and any pending
modifications to be applied, asynchronously and as soon as possible.
Modifications to Global Replication Groups cannot be requested to be
applied in PreferredMaintenceWindow.



=head2 AutomaticFailoverEnabled => Bool

Determines whether a read replica is automatically promoted to
read/write primary if the existing primary encounters a failure.



=head2 CacheNodeType => Str

A valid cache node type that you want to scale this Global datastore
to.



=head2 CacheParameterGroupName => Str

The name of the cache parameter group to use with the Global datastore.
It must be compatible with the major engine version used by the Global
datastore.



=head2 EngineVersion => Str

The upgraded version of the cache engine to be run on the clusters in
the Global datastore.



=head2 GlobalReplicationGroupDescription => Str

A description of the Global datastore



=head2 B<REQUIRED> GlobalReplicationGroupId => Str

The name of the Global datastore




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyGlobalReplicationGroup in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

