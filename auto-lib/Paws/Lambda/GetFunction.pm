
package Paws::Lambda::GetFunction;
  use Moose;
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName' , required => 1);
  has Qualifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Qualifier' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFunction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/functions/{FunctionName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::GetFunctionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetFunctionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::GetFunction - Arguments for method GetFunction on Paws::Lambda

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFunction on the 
AWS Lambda service. Use the attributes of this class
as arguments to method GetFunction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFunction.

As an example:

  $service_obj->GetFunction(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> FunctionName => Str

  The Lambda function name.

You can specify an unqualified function name (for example, "Thumbnail")
or you can specify Amazon Resource Name (ARN) of the function (for
example, "arn:aws:lambda:us-west-2:account-id:function:ThumbNail"). AWS
Lambda also allows you to specify only the account ID qualifier (for
example, "account-id:Thumbnail"). Note that the length constraint
applies only to the ARN. If you specify only the function name, it is
limited to 64 character in length.


=head2 Qualifier => Str

  Using this optional parameter to specify a function version or alias
name. If you specify function version, the API uses qualified function
ARN for the request and returns information about the specific Lambda
function version. If you specify alias name, the API uses alias ARN and
returns information about the function version to which the alias
points. If you don't provide this parameter, the API uses unqualified
function ARN and returns information about the $LATEST version of the
Lambda function.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFunction in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

