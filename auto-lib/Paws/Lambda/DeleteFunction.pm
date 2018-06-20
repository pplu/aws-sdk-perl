
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

The Lambda function to delete.

You can specify the function name (for example, C<Thumbnail>) or you
can specify Amazon Resource Name (ARN) of the function (for example,
C<arn:aws:lambda:us-west-2:account-id:function:ThumbNail>). If you are
using versioning, you can also provide a qualified function ARN (ARN
that is qualified with function version or alias name as suffix). AWS
Lambda also allows you to specify only the function name with the
account ID qualifier (for example, C<account-id:Thumbnail>). Note that
the length constraint applies only to the ARN. If you specify only the
function name, it is limited to 64 characters in length.



=head2 Qualifier => Str

Using this optional parameter you can specify a function version (but
not the C<$LATEST> version) to direct AWS Lambda to delete a specific
function version. If the function version has one or more aliases
pointing to it, you will get an error because you cannot have aliases
pointing to it. You can delete any function version but not the
C<$LATEST>, that is, you cannot specify C<$LATEST> as the value of this
parameter. The C<$LATEST> version can be deleted only when you want to
delete all the function versions and aliases.

You can only specify a function version, not an alias name, using this
parameter. You cannot delete a function version using its alias.

If you don't specify this parameter, AWS Lambda will delete the
function, including all of its versions and aliases.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteFunction in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

