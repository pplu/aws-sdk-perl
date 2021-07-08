
package Paws::Lambda::UpdateFunctionEventInvokeConfig;
  use Moose;
  has DestinationConfig => (is => 'ro', isa => 'Paws::Lambda::DestinationConfig');
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName', required => 1);
  has MaximumEventAgeInSeconds => (is => 'ro', isa => 'Int');
  has MaximumRetryAttempts => (is => 'ro', isa => 'Int');
  has Qualifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Qualifier');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFunctionEventInvokeConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2019-09-25/functions/{FunctionName}/event-invoke-config');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::FunctionEventInvokeConfig');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::UpdateFunctionEventInvokeConfig - Arguments for method UpdateFunctionEventInvokeConfig on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFunctionEventInvokeConfig on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method UpdateFunctionEventInvokeConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFunctionEventInvokeConfig.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    # To update an asynchronous invocation configuration
    # The following example adds an on-failure destination to the existing
    # asynchronous invocation configuration for a function named my-function.
    my $FunctionEventInvokeConfig = $lambda->UpdateFunctionEventInvokeConfig(
      'DestinationConfig' => {
        'OnFailure' => {
          'Destination' => 'arn:aws:sqs:us-east-2:123456789012:destination'
        }
      },
      'FunctionName' => 'my-function'
    );

    # Results:
    my $DestinationConfig = $FunctionEventInvokeConfig->DestinationConfig;
    my $FunctionArn       = $FunctionEventInvokeConfig->FunctionArn;
    my $LastModified      = $FunctionEventInvokeConfig->LastModified;
    my $MaximumEventAgeInSeconds =
      $FunctionEventInvokeConfig->MaximumEventAgeInSeconds;
    my $MaximumRetryAttempts = $FunctionEventInvokeConfig->MaximumRetryAttempts;

    # Returns a L<Paws::Lambda::FunctionEventInvokeConfig> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/UpdateFunctionEventInvokeConfig>

=head1 ATTRIBUTES


=head2 DestinationConfig => L<Paws::Lambda::DestinationConfig>

A destination for events after they have been sent to a function for
processing.

B<Destinations>

=over

=item *

B<Function> - The Amazon Resource Name (ARN) of a Lambda function.

=item *

B<Queue> - The ARN of an SQS queue.

=item *

B<Topic> - The ARN of an SNS topic.

=item *

B<Event Bus> - The ARN of an Amazon EventBridge event bus.

=back




=head2 B<REQUIRED> FunctionName => Str

The name of the Lambda function, version, or alias.

B<Name formats>

=over

=item *

B<Function name> - C<my-function> (name-only), C<my-function:v1> (with
alias).

=item *

B<Function ARN> -
C<arn:aws:lambda:us-west-2:123456789012:function:my-function>.

=item *

B<Partial ARN> - C<123456789012:function:my-function>.

=back

You can append a version number or alias to any of the formats. The
length constraint applies only to the full ARN. If you specify only the
function name, it is limited to 64 characters in length.



=head2 MaximumEventAgeInSeconds => Int

The maximum age of a request that Lambda sends to a function for
processing.



=head2 MaximumRetryAttempts => Int

The maximum number of times to retry when the function returns an
error.



=head2 Qualifier => Str

A version number or alias name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFunctionEventInvokeConfig in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

