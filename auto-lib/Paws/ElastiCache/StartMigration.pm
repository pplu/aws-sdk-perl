
package Paws::ElastiCache::StartMigration;
  use Moose;
  has CustomerNodeEndpointList => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::CustomerNodeEndpoint]', required => 1);
  has ReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartMigration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::StartMigrationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'StartMigrationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::StartMigration - Arguments for method StartMigration on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartMigration on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method StartMigration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartMigration.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $StartMigrationResponse = $elasticache->StartMigration(
      CustomerNodeEndpointList => [
        {
          Address => 'MyString',    # OPTIONAL
          Port    => 1,             # OPTIONAL
        },
        ...
      ],
      ReplicationGroupId => 'MyString',

    );

    # Results:
    my $ReplicationGroup = $StartMigrationResponse->ReplicationGroup;

    # Returns a L<Paws::ElastiCache::StartMigrationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/StartMigration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CustomerNodeEndpointList => ArrayRef[L<Paws::ElastiCache::CustomerNodeEndpoint>]

List of endpoints from which data should be migrated. For Redis
(cluster mode disabled), list should have only one element.



=head2 B<REQUIRED> ReplicationGroupId => Str

The ID of the replication group to which data should be migrated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartMigration in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

