
package Paws::Lambda::RemovePermission;
  use Moose;
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName', required => 1);
  has Qualifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Qualifier');
  has RevisionId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'RevisionId');
  has StatementId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'StatementId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemovePermission');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/functions/{FunctionName}/policy/{StatementId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::RemovePermission - Arguments for method RemovePermission on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemovePermission on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method RemovePermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemovePermission.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    # To remove a Lambda function's permissions
    # This operation removes a Lambda function's permissions
    $lambda->RemovePermission(
      {
        'FunctionName' => 'myFunction',
        'Qualifier'    => 1,
        'StatementId'  => 'role-statement-id'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/RemovePermission>

=head1 ATTRIBUTES


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



=head2 Qualifier => Str

Specify a version or alias to remove permissions from a published
version of the function.



=head2 RevisionId => Str

Only update the policy if the revision ID matches the ID specified. Use
this option to avoid modifying a policy that has changed since you last
read it.



=head2 B<REQUIRED> StatementId => Str

Statement ID of the permission to remove.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemovePermission in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

