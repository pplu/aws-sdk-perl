
package Paws::Lambda::PutFunctionConcurrency;
  use Moose;
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName', required => 1);
  has ReservedConcurrentExecutions => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutFunctionConcurrency');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-10-31/functions/{FunctionName}/concurrency');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::Concurrency');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::PutFunctionConcurrency - Arguments for method PutFunctionConcurrency on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutFunctionConcurrency on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method PutFunctionConcurrency.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutFunctionConcurrency.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    my $Concurrency = $lambda->PutFunctionConcurrency(
      FunctionName                 => 'MyFunctionName',
      ReservedConcurrentExecutions => 1,

    );

    # Results:
    my $ReservedConcurrentExecutions =
      $Concurrency->ReservedConcurrentExecutions;

    # Returns a L<Paws::Lambda::Concurrency> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/PutFunctionConcurrency>

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



=head2 B<REQUIRED> ReservedConcurrentExecutions => Int

The number of simultaneous executions to reserve for the function.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutFunctionConcurrency in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

