
package Paws::Lambda::CreateFunction;
  use Moose;
  has Code => (is => 'ro', isa => 'Paws::Lambda::FunctionCode', required => 1);
  has DeadLetterConfig => (is => 'ro', isa => 'Paws::Lambda::DeadLetterConfig');
  has Description => (is => 'ro', isa => 'Str');
  has Environment => (is => 'ro', isa => 'Paws::Lambda::Environment');
  has FunctionName => (is => 'ro', isa => 'Str', required => 1);
  has Handler => (is => 'ro', isa => 'Str', required => 1);
  has KMSKeyArn => (is => 'ro', isa => 'Str');
  has MemorySize => (is => 'ro', isa => 'Int');
  has Publish => (is => 'ro', isa => 'Bool');
  has Role => (is => 'ro', isa => 'Str', required => 1);
  has Runtime => (is => 'ro', isa => 'Str', required => 1);
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
AWS Lambda service. Use the attributes of this class
as arguments to method CreateFunction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFunction.

As an example:

  $service_obj->CreateFunction(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Code => L<Paws::Lambda::FunctionCode>

The code for the Lambda function.



=head2 DeadLetterConfig => L<Paws::Lambda::DeadLetterConfig>

The parent object that contains the target ARN (Amazon Resource Name)
of an Amazon SQS queue or Amazon SNS topic.



=head2 Description => Str

A short, user-defined function description. Lambda does not use this
value. Assign a meaningful description as you see fit.



=head2 Environment => L<Paws::Lambda::Environment>





=head2 B<REQUIRED> FunctionName => Str

The name you want to assign to the function you are uploading. The
function names appear in the console and are returned in the
ListFunctions API. Function names are used to specify functions to
other AWS Lambda API operations, such as Invoke. Note that the length
constraint applies only to the ARN. If you specify only the function
name, it is limited to 64 characters in length.



=head2 B<REQUIRED> Handler => Str

The function within your code that Lambda calls to begin execution. For
Node.js, it is the I<module-name>.I<export> value in your function. For
Java, it can be C<package.class-name::handler> or
C<package.class-name>. For more information, see Lambda Function
Handler (Java)
(http://docs.aws.amazon.com/lambda/latest/dg/java-programming-model-handler-types.html).



=head2 KMSKeyArn => Str

The Amazon Resource Name (ARN) of the KMS key used to encrypt your
function's environment variables. If not provided, AWS Lambda will use
a default service key.



=head2 MemorySize => Int

The amount of memory, in MB, your Lambda function is given. Lambda uses
this memory size to infer the amount of CPU and memory allocated to
your function. Your function use-case determines your CPU and memory
requirements. For example, a database operation might need less memory
compared to an image processing function. The default value is 128 MB.
The value must be a multiple of 64 MB.



=head2 Publish => Bool

This boolean parameter can be used to request AWS Lambda to create the
Lambda function and publish a version as an atomic operation.



=head2 B<REQUIRED> Role => Str

The Amazon Resource Name (ARN) of the IAM role that Lambda assumes when
it executes your function to access any other Amazon Web Services (AWS)
resources. For more information, see AWS Lambda: How it Works
(http://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html).



=head2 B<REQUIRED> Runtime => Str

The runtime environment for the Lambda function you are uploading.

To use the Python runtime v3.6, set the value to "python3.6". To use
the Python runtime v2.7, set the value to "python2.7". To use the
Node.js runtime v6.10, set the value to "nodejs6.10". To use the
Node.js runtime v4.3, set the value to "nodejs4.3".

Node v0.10.42 is currently marked as deprecated. You must migrate
existing functions to the newer Node.js runtime versions available on
AWS Lambda (nodejs4.3 or nodejs6.10) as soon as possible. Failure to do
so will result in an invalid parameter error being returned. Note that
you will have to follow this procedure for each region that contains
functions written in the Node v0.10.42 runtime.

Valid values are: C<"nodejs">, C<"nodejs4.3">, C<"nodejs6.10">, C<"java8">, C<"python2.7">, C<"python3.6">, C<"dotnetcore1.0">, C<"dotnetcore2.0">, C<"nodejs4.3-edge">, C<"go1.x">

=head2 Tags => L<Paws::Lambda::Tags>

The list of tags (key-value pairs) assigned to the new function.



=head2 Timeout => Int

The function execution time at which Lambda should terminate the
function. Because the execution time has cost implications, we
recommend you set this value based on your expected execution time. The
default is 3 seconds.



=head2 TracingConfig => L<Paws::Lambda::TracingConfig>

The parent object that contains your function's tracing settings.



=head2 VpcConfig => L<Paws::Lambda::VpcConfig>

If your Lambda function accesses resources in a VPC, you provide this
parameter identifying the list of security group IDs and subnet IDs.
These must belong to the same VPC. You must provide at least one
security group and one subnet ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFunction in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

