
package Paws::SecretsManager::ReplicateSecretToRegions;
  use Moose;
  has AddReplicaRegions => (is => 'ro', isa => 'ArrayRef[Paws::SecretsManager::ReplicaRegionType]', required => 1);
  has ForceOverwriteReplicaSecret => (is => 'ro', isa => 'Bool');
  has SecretId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReplicateSecretToRegions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecretsManager::ReplicateSecretToRegionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::ReplicateSecretToRegions - Arguments for method ReplicateSecretToRegions on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReplicateSecretToRegions on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method ReplicateSecretToRegions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReplicateSecretToRegions.

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
    my $ReplicateSecretToRegionsResponse =
      $secretsmanager->ReplicateSecretToRegions(
      AddReplicaRegions => [
        {
          KmsKeyId => 'MyKmsKeyIdType',    # max: 2048; OPTIONAL
          Region   => 'MyRegionType',      # min: 1, max: 128; OPTIONAL
        },
        ...
      ],
      SecretId                    => 'MySecretIdType',
      ForceOverwriteReplicaSecret => 1,                  # OPTIONAL
      );

    # Results:
    my $ARN = $ReplicateSecretToRegionsResponse->ARN;
    my $ReplicationStatus =
      $ReplicateSecretToRegionsResponse->ReplicationStatus;

   # Returns a L<Paws::SecretsManager::ReplicateSecretToRegionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/ReplicateSecretToRegions>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AddReplicaRegions => ArrayRef[L<Paws::SecretsManager::ReplicaRegionType>]

Add Regions to replicate the secret.



=head2 ForceOverwriteReplicaSecret => Bool

(Optional) If set, Secrets Manager replication overwrites a secret with
the same name in the destination region.



=head2 B<REQUIRED> SecretId => Str

Use the C<Secret Id> to replicate a secret to regions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReplicateSecretToRegions in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

