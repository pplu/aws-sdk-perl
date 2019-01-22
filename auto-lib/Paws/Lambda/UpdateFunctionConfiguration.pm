
package Paws::Lambda::UpdateFunctionConfiguration;
  use Moose;
  has DeadLetterConfig => (is => 'ro', isa => 'Paws::Lambda::DeadLetterConfig');
  has Description => (is => 'ro', isa => 'Str');
  has Environment => (is => 'ro', isa => 'Paws::Lambda::Environment');
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName', required => 1);
  has Handler => (is => 'ro', isa => 'Str');
  has KMSKeyArn => (is => 'ro', isa => 'Str');
  has Layers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MemorySize => (is => 'ro', isa => 'Int');
  has RevisionId => (is => 'ro', isa => 'Str');
  has Role => (is => 'ro', isa => 'Str');
  has Runtime => (is => 'ro', isa => 'Str');
  has Timeout => (is => 'ro', isa => 'Int');
  has TracingConfig => (is => 'ro', isa => 'Paws::Lambda::TracingConfig');
  has VpcConfig => (is => 'ro', isa => 'Paws::Lambda::VpcConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFunctionConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/functions/{FunctionName}/configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::FunctionConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::UpdateFunctionConfiguration - Arguments for method UpdateFunctionConfiguration on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFunctionConfiguration on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method UpdateFunctionConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFunctionConfiguration.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    # To update a Lambda function's configuration
    # This operation updates a Lambda function's configuration
    my $FunctionConfiguration = $lambda->UpdateFunctionConfiguration(
      {
        'Description'  => '',
        'FunctionName' => 'myFunction',
        'Handler'      => 'index.handler',
        'MemorySize'   => 128,
        'Role'      => 'arn:aws:iam::123456789012:role/lambda_basic_execution',
        'Runtime'   => 'python2.7',
        'Timeout'   => 123,
        'VpcConfig' => {

        }
      }
    );

    # Results:
    my $CodeSha256   = $FunctionConfiguration->CodeSha256;
    my $CodeSize     = $FunctionConfiguration->CodeSize;
    my $Description  = $FunctionConfiguration->Description;
    my $FunctionArn  = $FunctionConfiguration->FunctionArn;
    my $FunctionName = $FunctionConfiguration->FunctionName;
    my $Handler      = $FunctionConfiguration->Handler;
    my $LastModified = $FunctionConfiguration->LastModified;
    my $MemorySize   = $FunctionConfiguration->MemorySize;
    my $Role         = $FunctionConfiguration->Role;
    my $Runtime      = $FunctionConfiguration->Runtime;
    my $Timeout      = $FunctionConfiguration->Timeout;
    my $Version      = $FunctionConfiguration->Version;
    my $VpcConfig    = $FunctionConfiguration->VpcConfig;

    # Returns a L<Paws::Lambda::FunctionConfiguration> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/UpdateFunctionConfiguration>

=head1 ATTRIBUTES


=head2 DeadLetterConfig => L<Paws::Lambda::DeadLetterConfig>

A dead letter queue configuration that specifies the queue or topic
where Lambda sends asynchronous events when they fail processing. For
more information, see Dead Letter Queues
(http://docs.aws.amazon.com/lambda/latest/dg/dlq.html).



=head2 Description => Str

A short user-defined function description. AWS Lambda does not use this
value. Assign a meaningful description as you see fit.



=head2 Environment => L<Paws::Lambda::Environment>

The parent object that contains your environment's configuration
settings.



=head2 B<REQUIRED> FunctionName => Str

The name of the Lambda function.

B<Name formats>

=over

=item *

B<Function name> - C<my-function>.

=item *

B<Function ARN> -
C<arn:aws:lambda:us-west-2:123456789012:function:my-function>.

=item *

B<Partial ARN> - C<123456789012:function:my-function>.

=back

The length constraint applies only to the full ARN. If you specify only
the function name, it is limited to 64 characters in length.



=head2 Handler => Str

The function that Lambda calls to begin executing your function. For
Node.js, it is the C<module-name.export> value in your function.



=head2 KMSKeyArn => Str

The Amazon Resource Name (ARN) of the KMS key used to encrypt your
function's environment variables. If you elect to use the AWS Lambda
default service key, pass in an empty string ("") for this parameter.



=head2 Layers => ArrayRef[Str|Undef]

A list of function layers
(http://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html)
to add to the function's execution environment.



=head2 MemorySize => Int

The amount of memory, in MB, your Lambda function is given. AWS Lambda
uses this memory size to infer the amount of CPU allocated to your
function. Your function use-case determines your CPU and memory
requirements. For example, a database operation might need less memory
compared to an image processing function. The default value is 128 MB.
The value must be a multiple of 64 MB.



=head2 RevisionId => Str

Only update the function if the revision ID matches the ID specified.
Use this option to avoid modifying a function that has changed since
you last read it.



=head2 Role => Str

The Amazon Resource Name (ARN) of the IAM role that Lambda will assume
when it executes your function.



=head2 Runtime => Str

The runtime version for the function.

Valid values are: C<"nodejs">, C<"nodejs4.3">, C<"nodejs6.10">, C<"nodejs8.10">, C<"java8">, C<"python2.7">, C<"python3.6">, C<"python3.7">, C<"dotnetcore1.0">, C<"dotnetcore2.0">, C<"dotnetcore2.1">, C<"nodejs4.3-edge">, C<"go1.x">, C<"ruby2.5">, C<"provided">

=head2 Timeout => Int

The amount of time that Lambda allows a function to run before
terminating it. The default is 3 seconds. The maximum allowed value is
900 seconds.



=head2 TracingConfig => L<Paws::Lambda::TracingConfig>

Set C<Mode> to C<Active> to sample and trace a subset of incoming
requests with AWS X-Ray.



=head2 VpcConfig => L<Paws::Lambda::VpcConfig>

Specify security groups and subnets in a VPC to which your Lambda
function needs access.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFunctionConfiguration in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

