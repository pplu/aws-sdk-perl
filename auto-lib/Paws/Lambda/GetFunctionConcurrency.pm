
package Paws::Lambda::GetFunctionConcurrency;
  use Moose;
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFunctionConcurrency');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2019-09-30/functions/{FunctionName}/concurrency');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::GetFunctionConcurrencyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::GetFunctionConcurrency - Arguments for method GetFunctionConcurrency on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFunctionConcurrency on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method GetFunctionConcurrency.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFunctionConcurrency.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    my $GetFunctionConcurrencyResponse = $lambda->GetFunctionConcurrency(
      FunctionName => 'MyFunctionName',

    );

    # Results:
    my $ReservedConcurrentExecutions =
      $GetFunctionConcurrencyResponse->ReservedConcurrentExecutions;

    # Returns a L<Paws::Lambda::GetFunctionConcurrencyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/GetFunctionConcurrency>

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

This class forms part of L<Paws>, documenting arguments for method GetFunctionConcurrency in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

