
package Paws::Lambda::AddPermission;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', required => 1);
  has EventSourceToken => (is => 'ro', isa => 'Str');
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName', required => 1);
  has Principal => (is => 'ro', isa => 'Str', required => 1);
  has Qualifier => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'Qualifier');
  has RevisionId => (is => 'ro', isa => 'Str');
  has SourceAccount => (is => 'ro', isa => 'Str');
  has SourceArn => (is => 'ro', isa => 'Str');
  has StatementId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddPermission');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/functions/{FunctionName}/policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::AddPermissionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::AddPermission - Arguments for method AddPermission on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddPermission on the
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method AddPermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddPermission.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    # add-permission
    # This example adds a permission for an S3 bucket to invoke a Lambda
    # function.
    my $AddPermissionResponse = $lambda->AddPermission(
      {
        'Action'        => 'lambda:InvokeFunction',
        'FunctionName'  => 'MyFunction',
        'Principal'     => 's3.amazonaws.com',
        'SourceAccount' => 123456789012,
        'SourceArn'     => 'arn:aws:s3:::examplebucket/*',
        'StatementId'   => 'ID-1'
      }
    );

    # Results:
    my $Statement = $AddPermissionResponse->Statement;

    # Returns a L<Paws::Lambda::AddPermissionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/AddPermission>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

The action that the principal can use on the function. For example,
C<lambda:InvokeFunction> or C<lambda:GetFunction>.



=head2 EventSourceToken => Str

For Alexa Smart Home functions, a token that must be supplied by the
invoker.



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



=head2 B<REQUIRED> Principal => Str

The AWS service or account that invokes the function. If you specify a
service, use C<SourceArn> or C<SourceAccount> to limit who can invoke
the function through that service.



=head2 Qualifier => Str

Specify a version or alias to add permissions to a published version of
the function.



=head2 RevisionId => Str

Only update the policy if the revision ID matches the ID specified. Use
this option to avoid modifying a policy that has changed since you last
read it.



=head2 SourceAccount => Str

For AWS services, the ID of the account that owns the resource. Use
instead of C<SourceArn> to grant permission to resources owned by
another account (e.g. all of an account's Amazon S3 buckets). Or use
together with C<SourceArn> to ensure that the resource is owned by the
specified account. For example, an Amazon S3 bucket could be deleted by
its owner and recreated by another account.



=head2 SourceArn => Str

For AWS services, the ARN of the AWS resource that invokes the
function. For example, an Amazon S3 bucket or Amazon SNS topic.



=head2 B<REQUIRED> StatementId => Str

A statement identifier that differentiates the statement from others in
the same policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddPermission in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

