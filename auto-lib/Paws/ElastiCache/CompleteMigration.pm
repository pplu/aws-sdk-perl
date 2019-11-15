
package Paws::ElastiCache::CompleteMigration;
  use Moose;
  has Force => (is => 'ro', isa => 'Bool');
  has ReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CompleteMigration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::CompleteMigrationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CompleteMigrationResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CompleteMigration - Arguments for method CompleteMigration on L<Paws::ElastiCache>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CompleteMigration on the
L<Amazon ElastiCache|Paws::ElastiCache> service. Use the attributes of this class
as arguments to method CompleteMigration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CompleteMigration.

=head1 SYNOPSIS

    my $elasticache = Paws->service('ElastiCache');
    my $CompleteMigrationResponse = $elasticache->CompleteMigration(
      ReplicationGroupId => 'MyString',
      Force              => 1,            # OPTIONAL
    );

    # Results:
    my $ReplicationGroup = $CompleteMigrationResponse->ReplicationGroup;

    # Returns a L<Paws::ElastiCache::CompleteMigrationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticache/CompleteMigration>

=head1 ATTRIBUTES


=head2 Force => Bool

Forces the migration to stop without ensuring that data is in sync. It
is recommended to use this option only to abort the migration and not
recommended when application wants to continue migration to
ElastiCache.



=head2 B<REQUIRED> ReplicationGroupId => Str

The ID of the replication group to which data is being migrated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CompleteMigration in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

