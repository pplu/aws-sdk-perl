
package Paws::Kafka::BatchDisassociateScramSecret;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'clusterArn', required => 1);
  has SecretArnList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'secretArnList', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDisassociateScramSecret');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/clusters/{clusterArn}/scram-secrets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::BatchDisassociateScramSecretResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::BatchDisassociateScramSecret - Arguments for method BatchDisassociateScramSecret on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDisassociateScramSecret on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method BatchDisassociateScramSecret.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDisassociateScramSecret.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $BatchDisassociateScramSecretResponse =
      $kafka->BatchDisassociateScramSecret(
      ClusterArn    => 'My__string',
      SecretArnList => [ 'My__string', ... ],

      );

    # Results:
    my $ClusterArn = $BatchDisassociateScramSecretResponse->ClusterArn;
    my $UnprocessedScramSecrets =
      $BatchDisassociateScramSecretResponse->UnprocessedScramSecrets;

    # Returns a L<Paws::Kafka::BatchDisassociateScramSecretResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/BatchDisassociateScramSecret>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterArn => Str

The Amazon Resource Name (ARN) of the cluster to be updated.



=head2 B<REQUIRED> SecretArnList => ArrayRef[Str|Undef]

List of AWS Secrets Manager secret ARNs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDisassociateScramSecret in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

