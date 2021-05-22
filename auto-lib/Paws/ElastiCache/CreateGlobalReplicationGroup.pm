
package Paws::ElastiCache::CreateGlobalReplicationGroup;
  use Moose;
  has GlobalReplicationGroupDescription => (is => 'ro', isa => 'Str');
  has GlobalReplicationGroupIdSuffix => (is => 'ro', isa => 'Str', required => 1);
  has PrimaryReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGlobalReplicationGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::CreateGlobalReplicationGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateGlobalReplicationGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CreateGlobalReplicationGroup - Arguments for method CreateGlobalReplicationGroup on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGlobalReplicationGroup on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method CreateGlobalReplicationGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGlobalReplicationGroup.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $CreateGlobalReplicationGroupResult =
      $elasticache->CreateGlobalReplicationGroup(
      GlobalReplicationGroupIdSuffix    => 'MyString',
      PrimaryReplicationGroupId         => 'MyString',
      GlobalReplicationGroupDescription => 'MyString',    # OPTIONAL
      );

    # Results:
    my $GlobalReplicationGroup =
      $CreateGlobalReplicationGroupResult->GlobalReplicationGroup;

    # Returns a L<Paws::ElastiCache::CreateGlobalReplicationGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/CreateGlobalReplicationGroup>

=head1 ATTRIBUTES


=head2 GlobalReplicationGroupDescription => Str

Provides details of the Global datastore



=head2 B<REQUIRED> GlobalReplicationGroupIdSuffix => Str

The suffix name of a Global datastore. Amazon ElastiCache automatically
applies a prefix to the Global datastore ID when it is created. Each
AWS Region has its own prefix. For instance, a Global datastore ID
created in the US-West-1 region will begin with "dsdfu" along with the
suffix name you provide. The suffix, combined with the auto-generated
prefix, guarantees uniqueness of the Global datastore name across
multiple regions.

For a full list of AWS Regions and their respective Global datastore iD
prefixes, see Using the AWS CLI with Global datastores
(http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Redis-Global-Datastores-CLI.html).



=head2 B<REQUIRED> PrimaryReplicationGroupId => Str

The name of the primary cluster that accepts writes and will replicate
updates to the secondary cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGlobalReplicationGroup in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

