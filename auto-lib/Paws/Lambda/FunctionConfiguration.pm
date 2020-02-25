
package Paws::Lambda::FunctionConfiguration;
  use Moose;
  has CodeSha256 => (is => 'ro', isa => 'Str');
  has CodeSize => (is => 'ro', isa => 'Int');
  has DeadLetterConfig => (is => 'ro', isa => 'Paws::Lambda::DeadLetterConfig');
  has Description => (is => 'ro', isa => 'Str');
  has Environment => (is => 'ro', isa => 'Paws::Lambda::EnvironmentResponse');
  has FunctionArn => (is => 'ro', isa => 'Str');
  has FunctionName => (is => 'ro', isa => 'Str');
  has Handler => (is => 'ro', isa => 'Str');
  has KMSKeyArn => (is => 'ro', isa => 'Str');
  has LastModified => (is => 'ro', isa => 'Str');
  has LastUpdateStatus => (is => 'ro', isa => 'Str');
  has LastUpdateStatusReason => (is => 'ro', isa => 'Str');
  has LastUpdateStatusReasonCode => (is => 'ro', isa => 'Str');
  has Layers => (is => 'ro', isa => 'ArrayRef[Paws::Lambda::Layer]');
  has MasterArn => (is => 'ro', isa => 'Str');
  has MemorySize => (is => 'ro', isa => 'Int');
  has RevisionId => (is => 'ro', isa => 'Str');
  has Role => (is => 'ro', isa => 'Str');
  has Runtime => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');
  has StateReason => (is => 'ro', isa => 'Str');
  has StateReasonCode => (is => 'ro', isa => 'Str');
  has Timeout => (is => 'ro', isa => 'Int');
  has TracingConfig => (is => 'ro', isa => 'Paws::Lambda::TracingConfigResponse');
  has Version => (is => 'ro', isa => 'Str');
  has VpcConfig => (is => 'ro', isa => 'Paws::Lambda::VpcConfigResponse');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::FunctionConfiguration

=head1 ATTRIBUTES


=head2 CodeSha256 => Str

The SHA256 hash of the function's deployment package.


=head2 CodeSize => Int

The size of the function's deployment package, in bytes.


=head2 DeadLetterConfig => L<Paws::Lambda::DeadLetterConfig>

The function's dead letter queue.


=head2 Description => Str

The function's description.


=head2 Environment => L<Paws::Lambda::EnvironmentResponse>

The function's environment variables.


=head2 FunctionArn => Str

The function's Amazon Resource Name (ARN).


=head2 FunctionName => Str

The name of the function.


=head2 Handler => Str

The function that Lambda calls to begin executing your function.


=head2 KMSKeyArn => Str

The KMS key that's used to encrypt the function's environment
variables. This key is only returned if you've configured a customer
managed CMK.


=head2 LastModified => Str

The date and time that the function was last updated, in ISO-8601
format (https://www.w3.org/TR/NOTE-datetime)
(YYYY-MM-DDThh:mm:ss.sTZD).


=head2 LastUpdateStatus => Str

The status of the last update that was performed on the function. This
is first set to C<Successful> after function creation completes.

Valid values are: C<"Successful">, C<"Failed">, C<"InProgress">
=head2 LastUpdateStatusReason => Str

The reason for the last update that was performed on the function.


=head2 LastUpdateStatusReasonCode => Str

The reason code for the last update that was performed on the function.

Valid values are: C<"EniLimitExceeded">, C<"InsufficientRolePermissions">, C<"InvalidConfiguration">, C<"InternalError">, C<"SubnetOutOfIPAddresses">, C<"InvalidSubnet">, C<"InvalidSecurityGroup">
=head2 Layers => ArrayRef[L<Paws::Lambda::Layer>]

The function's layers
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).


=head2 MasterArn => Str

For Lambda@Edge functions, the ARN of the master function.


=head2 MemorySize => Int

The memory that's allocated to the function.


=head2 RevisionId => Str

The latest updated revision of the function or alias.


=head2 Role => Str

The function's execution role.


=head2 Runtime => Str

The runtime environment for the Lambda function.

Valid values are: C<"nodejs">, C<"nodejs4.3">, C<"nodejs6.10">, C<"nodejs8.10">, C<"nodejs10.x">, C<"nodejs12.x">, C<"java8">, C<"java11">, C<"python2.7">, C<"python3.6">, C<"python3.7">, C<"python3.8">, C<"dotnetcore1.0">, C<"dotnetcore2.0">, C<"dotnetcore2.1">, C<"nodejs4.3-edge">, C<"go1.x">, C<"ruby2.5">, C<"ruby2.7">, C<"provided">
=head2 State => Str

The current state of the function. When the state is C<Inactive>, you
can reactivate the function by invoking it.

Valid values are: C<"Pending">, C<"Active">, C<"Inactive">, C<"Failed">
=head2 StateReason => Str

The reason for the function's current state.


=head2 StateReasonCode => Str

The reason code for the function's current state. When the code is
C<Creating>, you can't invoke or modify the function.

Valid values are: C<"Idle">, C<"Creating">, C<"Restoring">, C<"EniLimitExceeded">, C<"InsufficientRolePermissions">, C<"InvalidConfiguration">, C<"InternalError">, C<"SubnetOutOfIPAddresses">, C<"InvalidSubnet">, C<"InvalidSecurityGroup">
=head2 Timeout => Int

The amount of time that Lambda allows a function to run before stopping
it.


=head2 TracingConfig => L<Paws::Lambda::TracingConfigResponse>

The function's AWS X-Ray tracing configuration.


=head2 Version => Str

The version of the Lambda function.


=head2 VpcConfig => L<Paws::Lambda::VpcConfigResponse>

The function's networking configuration.


=head2 _request_id => Str


=cut

