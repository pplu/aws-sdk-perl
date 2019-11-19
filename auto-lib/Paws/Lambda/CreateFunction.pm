
package Paws::Lambda::CreateFunction;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Int Bool/;
  use Paws::Lambda::Types qw/Lambda_Tags Lambda_Environment Lambda_DeadLetterConfig Lambda_FunctionCode Lambda_VpcConfig Lambda_TracingConfig/;
  has Code => (is => 'ro', isa => Lambda_FunctionCode, required => 1, predicate => 1);
  has DeadLetterConfig => (is => 'ro', isa => Lambda_DeadLetterConfig, predicate => 1);
  has Description => (is => 'ro', isa => Str, predicate => 1);
  has Environment => (is => 'ro', isa => Lambda_Environment, predicate => 1);
  has FunctionName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Handler => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has KMSKeyArn => (is => 'ro', isa => Str, predicate => 1);
  has Layers => (is => 'ro', isa => ArrayRef[Str|Undef], predicate => 1);
  has MemorySize => (is => 'ro', isa => Int, predicate => 1);
  has Publish => (is => 'ro', isa => Bool, predicate => 1);
  has Role => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Runtime => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has Tags => (is => 'ro', isa => Lambda_Tags, predicate => 1);
  has Timeout => (is => 'ro', isa => Int, predicate => 1);
  has TracingConfig => (is => 'ro', isa => Lambda_TracingConfig, predicate => 1);
  has VpcConfig => (is => 'ro', isa => Lambda_VpcConfig, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateFunction');
  class_has _api_uri  => (isa => Str, is => 'ro', default => '/2015-03-31/functions');
  class_has _api_method  => (isa => Str, is => 'ro', default => 'POST');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::Lambda::FunctionConfiguration');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Handler' => 1,
                    'FunctionName' => 1,
                    'Role' => 1,
                    'Code' => 1,
                    'Runtime' => 1
                  },
  'types' => {
               'Layers' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               'Description' => {
                                  'type' => 'Str'
                                },
               'VpcConfig' => {
                                'class' => 'Paws::Lambda::VpcConfig',
                                'type' => 'Lambda_VpcConfig'
                              },
               'Role' => {
                           'type' => 'Str'
                         },
               'Timeout' => {
                              'type' => 'Int'
                            },
               'Runtime' => {
                              'type' => 'Str'
                            },
               'Tags' => {
                           'type' => 'Lambda_Tags',
                           'class' => 'Paws::Lambda::Tags'
                         },
               'TracingConfig' => {
                                    'class' => 'Paws::Lambda::TracingConfig',
                                    'type' => 'Lambda_TracingConfig'
                                  },
               'Handler' => {
                              'type' => 'Str'
                            },
               'KMSKeyArn' => {
                                'type' => 'Str'
                              },
               'Publish' => {
                              'type' => 'Bool'
                            },
               'Environment' => {
                                  'type' => 'Lambda_Environment',
                                  'class' => 'Paws::Lambda::Environment'
                                },
               'MemorySize' => {
                                 'type' => 'Int'
                               },
               'FunctionName' => {
                                   'type' => 'Str'
                                 },
               'Code' => {
                           'class' => 'Paws::Lambda::FunctionCode',
                           'type' => 'Lambda_FunctionCode'
                         },
               'DeadLetterConfig' => {
                                       'type' => 'Lambda_DeadLetterConfig',
                                       'class' => 'Paws::Lambda::DeadLetterConfig'
                                     }
             }
}
;
    return $Params_map;
  }

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
    # create-function
    # This example creates a Lambda function.
    my $FunctionConfiguration = $lambda->CreateFunction(
      'Code' => {

      },
      'Description'  => '',
      'FunctionName' => 'MyFunction',
      'Handler'      => 'souce_file.handler_name',
      'MemorySize'   => 128,
      'Publish'      => 1,
      'Role'         => 'arn:aws:iam::123456789012:role/service-role/role-name',
      'Runtime'      => 'nodejs4.3',
      'Timeout'      => 15,
      'VpcConfig'    => {

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
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/CreateFunction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Code => Lambda_FunctionCode

The code for the function.



=head2 DeadLetterConfig => Lambda_DeadLetterConfig

A dead letter queue configuration that specifies the queue or topic
where Lambda sends asynchronous events when they fail processing. For
more information, see Dead Letter Queues
(https://docs.aws.amazon.com/lambda/latest/dg/dlq.html).



=head2 Description => Str

A description of the function.



=head2 Environment => Lambda_Environment

Environment variables that are accessible from function code during
execution.



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



=head2 B<REQUIRED> Handler => Str

The name of the method within your code that Lambda calls to execute
your function. The format includes the file name. It can also include
namespaces and other qualifiers, depending on the runtime. For more
information, see Programming Model
(https://docs.aws.amazon.com/lambda/latest/dg/programming-model-v2.html).



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

The amount of memory that your function has access to. Increasing the
function's memory also increases its CPU allocation. The default value
is 128 MB. The value must be a multiple of 64 MB.



=head2 Publish => Bool

Set to true to publish the first version of the function during
creation.



=head2 B<REQUIRED> Role => Str

The Amazon Resource Name (ARN) of the function's execution role.



=head2 B<REQUIRED> Runtime => Str

The identifier of the function's runtime
(https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html).

Valid values are: C<"nodejs">, C<"nodejs4.3">, C<"nodejs6.10">, C<"nodejs8.10">, C<"nodejs10.x">, C<"nodejs12.x">, C<"java8">, C<"java11">, C<"python2.7">, C<"python3.6">, C<"python3.7">, C<"python3.8">, C<"dotnetcore1.0">, C<"dotnetcore2.0">, C<"dotnetcore2.1">, C<"nodejs4.3-edge">, C<"go1.x">, C<"ruby2.5">, C<"provided">

=head2 Tags => Lambda_Tags

A list of tags
(https://docs.aws.amazon.com/lambda/latest/dg/tagging.html) to apply to
the function.



=head2 Timeout => Int

The amount of time that Lambda allows a function to run before stopping
it. The default is 3 seconds. The maximum allowed value is 900 seconds.



=head2 TracingConfig => Lambda_TracingConfig

Set C<Mode> to C<Active> to sample and trace a subset of incoming
requests with AWS X-Ray.



=head2 VpcConfig => Lambda_VpcConfig

For network connectivity to AWS resources in a VPC, specify a list of
security groups and subnets in the VPC. When you connect a function to
a VPC, it can only access resources and the internet through that VPC.
For more information, see VPC Settings
(https://docs.aws.amazon.com/lambda/latest/dg/vpc.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFunction in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

