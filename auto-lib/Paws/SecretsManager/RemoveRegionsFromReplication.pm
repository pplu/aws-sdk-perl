
package Paws::SecretsManager::RemoveRegionsFromReplication;
  use Moose;
  has RemoveReplicaRegions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has SecretId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveRegionsFromReplication');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecretsManager::RemoveRegionsFromReplicationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::RemoveRegionsFromReplication - Arguments for method RemoveRegionsFromReplication on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveRegionsFromReplication on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method RemoveRegionsFromReplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveRegionsFromReplication.

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
    my $RemoveRegionsFromReplicationResponse =
      $secretsmanager->RemoveRegionsFromReplication(
      RemoveReplicaRegions => [
        'MyRegionType', ...    # min: 1, max: 128
      ],
      SecretId => 'MySecretIdType',

      );

    # Results:
    my $ARN = $RemoveRegionsFromReplicationResponse->ARN;
    my $ReplicationStatus =
      $RemoveRegionsFromReplicationResponse->ReplicationStatus;

# Returns a L<Paws::SecretsManager::RemoveRegionsFromReplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/RemoveRegionsFromReplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RemoveReplicaRegions => ArrayRef[Str|Undef]

Remove replication from specific Regions.



=head2 B<REQUIRED> SecretId => Str

Remove a secret by C<SecretId> from replica Regions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveRegionsFromReplication in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

