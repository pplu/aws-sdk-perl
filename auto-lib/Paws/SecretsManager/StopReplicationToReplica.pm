
package Paws::SecretsManager::StopReplicationToReplica;
  use Moose;
  has SecretId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopReplicationToReplica');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecretsManager::StopReplicationToReplicaResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::StopReplicationToReplica - Arguments for method StopReplicationToReplica on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopReplicationToReplica on the
L<AWS Secrets Manager|Paws::SecretsManager> service. Use the attributes of this class
as arguments to method StopReplicationToReplica.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopReplicationToReplica.

=head1 SYNOPSIS

    my $secretsmanager = Paws->service('SecretsManager');
    my $StopReplicationToReplicaResponse =
      $secretsmanager->StopReplicationToReplica(
      SecretId => 'MySecretIdType',

      );

    # Results:
    my $ARN = $StopReplicationToReplicaResponse->ARN;

   # Returns a L<Paws::SecretsManager::StopReplicationToReplicaResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/secretsmanager/StopReplicationToReplica>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SecretId => Str

Response to C<StopReplicationToReplica> of a secret, based on the
C<SecretId>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopReplicationToReplica in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

