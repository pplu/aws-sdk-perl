
package Paws::Lambda::Invoke;
  use Moose;
  has ClientContext => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Client-Context' );
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName' , required => 1);
  has InvocationType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Invocation-Type' );
  has LogType => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Log-Type' );
  has Payload => (is => 'ro', isa => 'Str');
  has Qualifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Qualifier' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Invoke');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/functions/{FunctionName}/invocations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::InvocationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::Invoke - Arguments for method Invoke on Paws::Lambda

=head1 DESCRIPTION

This class represents the parameters used for calling the method Invoke on the 
AWS Lambda service. Use the attributes of this class
as arguments to method Invoke.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Invoke.

As an example:

  $service_obj->Invoke(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ClientContext => Str

Using the C<ClientContext> you can pass client-specific information to
the Lambda function you are invoking. You can then process the client
information in your Lambda function as you choose through the context
variable. For an example of a C<ClientContext> JSON, see PutEvents in
the I<Amazon Mobile Analytics API Reference and User Guide>.

The ClientContext JSON must be base64-encoded.



=head2 B<REQUIRED> FunctionName => Str

The Lambda function name.

You can specify a function name (for example, C<Thumbnail>) or you can
specify Amazon Resource Name (ARN) of the function (for example,
C<arn:aws:lambda:us-west-2:account-id:function:ThumbNail>). AWS Lambda
also allows you to specify a partial ARN (for example,
C<account-id:Thumbnail>). Note that the length constraint applies only
to the ARN. If you specify only the function name, it is limited to 64
character in length.



=head2 InvocationType => Str

By default, the C<Invoke> API assumes C<RequestResponse> invocation
type. You can optionally request asynchronous execution by specifying
C<Event> as the C<InvocationType>. You can also use this parameter to
request AWS Lambda to not execute the function but do some
verification, such as if the caller is authorized to invoke the
function and if the inputs are valid. You request this by specifying
C<DryRun> as the C<InvocationType>. This is useful in a cross-account
scenario when you want to verify access to a function without running
it.

Valid values are: C<"Event">, C<"RequestResponse">, C<"DryRun">

=head2 LogType => Str

You can set this optional parameter to C<Tail> in the request only if
you specify the C<InvocationType> parameter with value
C<RequestResponse>. In this case, AWS Lambda returns the base64-encoded
last 4 KB of log data produced by your Lambda function in the
C<x-amz-log-results> header.

Valid values are: C<"None">, C<"Tail">

=head2 Payload => Str

JSON that you want to provide to your Lambda function as input.



=head2 Qualifier => Str

You can use this optional parameter to specify a Lambda function
version or alias name. If you specify a function version, the API uses
the qualified function ARN to invoke a specific Lambda function. If you
specify an alias name, the API uses the alias ARN to invoke the Lambda
function version to which the alias points.

If you don't provide this parameter, then the API uses unqualified
function ARN which results in invocation of the C<$LATEST> version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Invoke in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

