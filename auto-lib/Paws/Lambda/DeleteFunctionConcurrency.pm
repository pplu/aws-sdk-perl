
package Paws::Lambda::DeleteFunctionConcurrency;
  use Moose;
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteFunctionConcurrency');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-10-31/functions/{FunctionName}/concurrency');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::DeleteFunctionConcurrency - Arguments for method DeleteFunctionConcurrency on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteFunctionConcurrency on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method DeleteFunctionConcurrency.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteFunctionConcurrency.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    $lambda->DeleteFunctionConcurrency(
      FunctionName => 'MyFunctionName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/DeleteFunctionConcurrency>

=head1 ATTRIBUTES


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




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteFunctionConcurrency in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

