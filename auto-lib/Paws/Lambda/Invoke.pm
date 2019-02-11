
package Paws::Lambda::Invoke;
  use Moose;
  has ClientContext => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Client-Context');
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName', required => 1);
  has InvocationType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Invocation-Type');
  has LogType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Log-Type');
  has Payload => (is => 'ro', isa => 'Str');
  has Qualifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Qualifier');

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Payload');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Invoke');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/functions/{FunctionName}/invocations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::InvocationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::Invoke - Arguments for method Invoke on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Invoke on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method Invoke.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Invoke.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    # To invoke a Lambda function
    # This operation invokes a Lambda function
    my $InvocationResponse = $lambda->Invoke(
      {
        'ClientContext'  => 'MyApp',
        'FunctionName'   => 'MyFunction',
        'InvocationType' => 'Event',
        'LogType'        => 'Tail',
        'Payload'        => 'fileb://file-path/input.json',
        'Qualifier'      => 1
      }
    );

    # Results:
    my $FunctionError = $InvocationResponse->FunctionError;
    my $LogResult     = $InvocationResponse->LogResult;
    my $Payload       = $InvocationResponse->Payload;
    my $StatusCode    = $InvocationResponse->StatusCode;

    # Returns a L<Paws::Lambda::InvocationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/Invoke>

=head1 ATTRIBUTES


=head2 ClientContext => Str

Up to 3583 bytes of base64-encoded data about the invoking client to
pass to the function in the context object.



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



=head2 InvocationType => Str

Choose from the following options.

=over

=item *

C<RequestResponse> (default) - Invoke the function synchronously. Keep
the connection open until the function returns a response or times out.
The API response includes the function response and additional data.

=item *

C<Event> - Invoke the function asynchronously. Send events that fail
multiple times to the function's dead-letter queue (if configured). The
API response only includes a status code.

=item *

C<DryRun> - Validate parameter values and verify that the user or role
has permission to invoke the function.

=back


Valid values are: C<"Event">, C<"RequestResponse">, C<"DryRun">

=head2 LogType => Str

Set to C<Tail> to include the execution log in the response.

Valid values are: C<"None">, C<"Tail">

=head2 Payload => Str

JSON that you want to provide to your Lambda function as input.



=head2 Qualifier => Str

Specify a version or alias to invoke a published version of the
function.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Invoke in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

