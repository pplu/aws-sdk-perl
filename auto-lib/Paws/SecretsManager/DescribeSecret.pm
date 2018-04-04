
package Paws::SecretsManager::DescribeSecret;
  use Moose;
  has SecretId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSecret');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecretsManager::DescribeSecretResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::DescribeSecret - Arguments for method DescribeSecret on L<Paws::SecretsManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeSecret on the 
AWS Secrets Manager service. Use the attributes of this class
as arguments to method DescribeSecret.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeSecret.

As an example:

  $service_obj->DescribeSecret(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> SecretId => Str

The identifier of the secret whose details you want to retrieve. You
can specify either the Amazon Resource Name (ARN) or the friendly name
of the secret.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeSecret in L<Paws::SecretsManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

