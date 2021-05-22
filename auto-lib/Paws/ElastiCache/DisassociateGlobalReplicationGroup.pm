
package Paws::ElastiCache::DisassociateGlobalReplicationGroup;
  use Moose;
  has GlobalReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationGroupRegion => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateGlobalReplicationGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::DisassociateGlobalReplicationGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DisassociateGlobalReplicationGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::DisassociateGlobalReplicationGroup - Arguments for method DisassociateGlobalReplicationGroup on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateGlobalReplicationGroup on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method DisassociateGlobalReplicationGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateGlobalReplicationGroup.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $DisassociateGlobalReplicationGroupResult =
      $elasticache->DisassociateGlobalReplicationGroup(
      GlobalReplicationGroupId => 'MyString',
      ReplicationGroupId       => 'MyString',
      ReplicationGroupRegion   => 'MyString',

      );

    # Results:
    my $GlobalReplicationGroup =
      $DisassociateGlobalReplicationGroupResult->GlobalReplicationGroup;

# Returns a L<Paws::ElastiCache::DisassociateGlobalReplicationGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/DisassociateGlobalReplicationGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GlobalReplicationGroupId => Str

The name of the Global datastore



=head2 B<REQUIRED> ReplicationGroupId => Str

The name of the secondary cluster you wish to remove from the Global
datastore



=head2 B<REQUIRED> ReplicationGroupRegion => Str

The AWS region of secondary cluster you wish to remove from the Global
datastore




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateGlobalReplicationGroup in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

