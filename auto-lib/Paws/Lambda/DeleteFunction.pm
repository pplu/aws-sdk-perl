
package Paws::Lambda::DeleteFunction;
  use Moose;
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName', required => 1);
  has Qualifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Qualifier');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteFunction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/functions/{FunctionName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::DeleteFunction - Arguments for method DeleteFunction on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteFunction on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method DeleteFunction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteFunction.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    # To delete a Lambda function
    # This operation deletes a Lambda function
    $lambda->DeleteFunction(
      {
        'FunctionName' => 'myFunction',
        'Qualifier'    => 1
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/DeleteFunction>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FunctionName => Str

The name of the Lambda function or version.

B<Name formats>

=over

=item *

B<Function name> - C<my-function> (name-only), C<my-function:1> (with
version).

=item *

B<Function ARN> -
C<arn:aws:lambda:us-west-2:123456789012:function:my-function>.

=item *

B<Partial ARN> - C<123456789012:function:my-function>.

=back

You can append a version number or alias to any of the formats. The
length constraint applies only to the full ARN. If you specify only the
function name, it is limited to 64 characters in length.



=head2 Qualifier => Str

Specify a version to delete. You cannot delete a version that is
referenced by an alias.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteFunction in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

