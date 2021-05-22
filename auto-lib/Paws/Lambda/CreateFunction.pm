
package Paws::Lambda::CreateFunction;
  use Moose;
  has Code => (is => 'ro', isa => 'Paws::Lambda::FunctionCode', required => 1);
  has CodeSigningConfigArn => (is => 'ro', isa => 'Str');
  has DeadLetterConfig => (is => 'ro', isa => 'Paws::Lambda::DeadLetterConfig');
  has Description => (is => 'ro', isa => 'Str');
  has Environment => (is => 'ro', isa => 'Paws::Lambda::Environment');
  has FileSystemConfigs => (is => 'ro', isa => 'ArrayRef[Paws::Lambda::FileSystemConfig]');
  has FunctionName => (is => 'ro', isa => 'Str', required => 1);
  has Handler => (is => 'ro', isa => 'Str');
  has ImageConfig => (is => 'ro', isa => 'Paws::Lambda::ImageConfig');
  has KMSKeyArn => (is => 'ro', isa => 'Str');
  has Layers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MemorySize => (is => 'ro', isa => 'Int');
  has PackageType => (is => 'ro', isa => 'Str');
  has Publish => (is => 'ro', isa => 'Bool');
  has Role => (is => 'ro', isa => 'Str', required => 1);
  has Runtime => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::Lambda::Tags');
  has Timeout => (is => 'ro', isa => 'Int');
  has TracingConfig => (is => 'ro', isa => 'Paws::Lambda::TracingConfig');
  has VpcConfig => (is => 'ro', isa => 'Paws::Lambda::VpcConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFunction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/functions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::FunctionConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::CreateFunction - Arguments for method CreateFunction on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFunction on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method CreateFunction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFunction.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    # To create a function
    # The following example creates a function with a deployment package in
    # Amazon S3 and enables X-Ray tracing and environment variable encryption.
    my $FunctionConfiguration = $lambda->CreateFunction(
      'Code' => {
        'S3Bucket' => 'my-bucket-1xpuxmplzrlbh',
        'S3Key'    => 'function.zip'
      },
      'Description' => 'Process image objects from Amazon S3.',
      'Environment' => {
        'Variables' => {
          'BUCKET' => 'my-bucket-1xpuxmplzrlbh',
          'PREFIX' => 'inbound'
        }
      },
      'FunctionName' => 'my-function',
      'Handler'      => 'index.handler',
      'KMSKeyArn' =>
'arn:aws:kms:us-west-2:123456789012:key/b0844d6c-xmpl-4463-97a4-d49f50839966',
      'MemorySize' => 256,
      'Publish'    => 1,
      'Role'       => 'arn:aws:iam::123456789012:role/lambda-role',
      'Runtime'    => 'nodejs12.x',
      'Tags'       => {
        'DEPARTMENT' => 'Assets'
      },
      'Timeout'       => 15,
      'TracingConfig' => {
        'Mode' => 'Active'
      }
    );

    # Results:
    my $CodeSha256       = $FunctionConfiguration->CodeSha256;
    my $CodeSize         = $FunctionConfiguration->CodeSize;
    my $Description      = $FunctionConfiguration->Description;
    my $Environment      = $FunctionConfiguration->Environment;
    my $FunctionArn      = $FunctionConfiguration->FunctionArn;
    my $FunctionName     = $FunctionConfiguration->FunctionName;
    my $Handler          = $FunctionConfiguration->Handler;
    my $KMSKeyArn        = $FunctionConfiguration->KMSKeyArn;
    my $LastModified     = $FunctionConfiguration->LastModified;
    my $LastUpdateStatus = $FunctionConfiguration->LastUpdateStatus;
    my $MemorySize       = $FunctionConfiguration->MemorySize;
    my $RevisionId       = $FunctionConfiguration->RevisionId;
    my $Role             = $FunctionConfiguration->Role;
    my $Runtime          = $FunctionConfiguration->Runtime;
    my $State            = $FunctionConfiguration->State;
    my $Timeout          = $FunctionConfiguration->Timeout;
    my $TracingConfig    = $FunctionConfiguration->TracingConfig;
    my $Version          = $FunctionConfiguration->Version;

    # Returns a L<Paws::Lambda::FunctionConfiguration> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/CreateFunction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Code => L<Paws::Lambda::FunctionCode>

The code for the function.



=head2 CodeSigningConfigArn => Str

To enable code signing for this function, specify the ARN of a
code-signing configuration. A code-signing configuration includes a set
of signing profiles, which define the trusted publishers for this
function.



=head2 DeadLetterConfig => L<Paws::Lambda::DeadLetterConfig>

A dead letter queue configuration that specifies the queue or topic
where Lambda sends asynchronous events when they fail processing. For
more information, see Dead Letter Queues
(https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#dlq).



=head2 Description => Str

A description of the function.



=head2 Environment => L<Paws::Lambda::Environment>

Environment variables that are accessible from function code during
execution.



=head2 FileSystemConfigs => ArrayRef[L<Paws::Lambda::FileSystemConfig>]

Connection settings for an Amazon EFS file system.



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

The name of the method within your code that Lambda calls to execute
your function. The format includes the file name. It can also include
namespaces and other qualifiers, depending on the runtime. For more
information, see Programming Model
(https://docs.aws.amazon.com/lambda/latest/dg/programming-model-v2.html).



=head2 ImageConfig => L<Paws::Lambda::ImageConfig>

Container image configuration values
(https://docs.aws.amazon.com/lambda/latest/dg/images-parms.html) that
override the values in the container image Dockerfile.



=head2 KMSKeyArn => Str

The ARN of the AWS Key Management Service (AWS KMS) key that's used to
encrypt your function's environment variables. If it's not provided,
AWS Lambda uses a default service key.



=head2 Layers => ArrayRef[Str|Undef]

A list of function layers
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html)
to add to the function's execution environment. Specify each layer by
its ARN, including the version.



=head2 MemorySize => Int

The amount of memory available to the function at runtime. Increasing
the function's memory also increases its CPU allocation. The default
value is 128 MB. The value can be any multiple of 1 MB.



=head2 PackageType => Str

The type of deployment package. Set to C<Image> for container image and
set C<Zip> for ZIP archive.

Valid values are: C<"Zip">, C<"Image">

=head2 Publish => Bool

Set to true to publish the first version of the function during
creation.



=head2 B<REQUIRED> Role => Str

The Amazon Resource Name (ARN) of the function's execution role.



=head2 Runtime => Str

The identifier of the function's runtime
(https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html).

Valid values are: C<"nodejs">, C<"nodejs4.3">, C<"nodejs6.10">, C<"nodejs8.10">, C<"nodejs10.x">, C<"nodejs12.x">, C<"nodejs14.x">, C<"java8">, C<"java8.al2">, C<"java11">, C<"python2.7">, C<"python3.6">, C<"python3.7">, C<"python3.8">, C<"dotnetcore1.0">, C<"dotnetcore2.0">, C<"dotnetcore2.1">, C<"dotnetcore3.1">, C<"nodejs4.3-edge">, C<"go1.x">, C<"ruby2.5">, C<"ruby2.7">, C<"provided">, C<"provided.al2">

=head2 Tags => L<Paws::Lambda::Tags>

A list of tags
(https://docs.aws.amazon.com/lambda/latest/dg/tagging.html) to apply to
the function.



=head2 Timeout => Int

The amount of time that Lambda allows a function to run before stopping
it. The default is 3 seconds. The maximum allowed value is 900 seconds.



=head2 TracingConfig => L<Paws::Lambda::TracingConfig>

Set C<Mode> to C<Active> to sample and trace a subset of incoming
requests with AWS X-Ray.



=head2 VpcConfig => L<Paws::Lambda::VpcConfig>

For network connectivity to AWS resources in a VPC, specify a list of
security groups and subnets in the VPC. When you connect a function to
a VPC, it can only access resources and the internet through that VPC.
For more information, see VPC Settings
(https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFunction in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

