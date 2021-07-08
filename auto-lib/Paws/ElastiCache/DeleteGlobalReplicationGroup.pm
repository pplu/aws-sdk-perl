
package Paws::ElastiCache::DeleteGlobalReplicationGroup;
  use Moose;
  has GlobalReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);
  has RetainPrimaryReplicationGroup => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteGlobalReplicationGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::DeleteGlobalReplicationGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteGlobalReplicationGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DeleteGlobalReplicationGroup - Arguments for method DeleteGlobalReplicationGroup on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteGlobalReplicationGroup on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method DeleteGlobalReplicationGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteGlobalReplicationGroup.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $DeleteGlobalReplicationGroupResult =
      $elasticache->DeleteGlobalReplicationGroup(
      GlobalReplicationGroupId      => 'MyString',
      RetainPrimaryReplicationGroup => 1,

      );

    # Results:
    my $GlobalReplicationGroup =
      $DeleteGlobalReplicationGroupResult->GlobalReplicationGroup;

    # Returns a L<Paws::ElastiCache::DeleteGlobalReplicationGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/DeleteGlobalReplicationGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GlobalReplicationGroupId => Str

The name of the Global datastore



=head2 B<REQUIRED> RetainPrimaryReplicationGroup => Bool

The primary replication group is retained as a standalone replication
group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteGlobalReplicationGroup in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

