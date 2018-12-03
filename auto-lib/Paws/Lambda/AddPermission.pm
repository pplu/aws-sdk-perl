
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

The AWS Lambda action you want to allow in this statement. Each Lambda
action is a string starting with C<lambda:> followed by the API name .
For example, C<lambda:CreateFunction>. You can use wildcard
(C<lambda:*>) to grant permission for all AWS Lambda actions.



=head2 EventSourceToken => Str

A unique token that must be supplied by the principal invoking the
function. This is currently only used for Alexa Smart Home functions.



=head2 B<REQUIRED> FunctionName => Str

The name of the Lambda function.

B<Name formats>

=over

=item *

B<Function name> - C<MyFunction>.

=item *

B<Function ARN> -
C<arn:aws:lambda:us-west-2:123456789012:function:MyFunction>.

=item *

B<Partial ARN> - C<123456789012:function:MyFunction>.

=back

The length constraint applies only to the full ARN. If you specify only
the function name, it is limited to 64 characters in length.



=head2 B<REQUIRED> Principal => Str

The principal who is getting this permission. The principal can be an
AWS service (e.g. C<s3.amazonaws.com> or C<sns.amazonaws.com>) for
service triggers, or an account ID for cross-account access. If you
specify a service as a principal, use the C<SourceArn> parameter to
limit who can invoke the function through that service.



=head2 Qualifier => Str

Specify a version or alias to add permissions to a published version of
the function.



=head2 RevisionId => Str

An optional value you can use to ensure you are updating the latest
update of the function version or alias. If the C<RevisionID> you pass
doesn't match the latest C<RevisionId> of the function or alias, it
will fail with an error message, advising you to retrieve the latest
function version or alias C<RevisionID> using either GetFunction or
GetAlias



=head2 SourceAccount => Str

This parameter is used for S3 and SES. The AWS account ID (without a
hyphen) of the source owner. For example, if the C<SourceArn>
identifies a bucket, then this is the bucket owner's account ID. You
can use this additional condition to ensure the bucket you specify is
owned by a specific account (it is possible the bucket owner deleted
the bucket and some other AWS account created the bucket). You can also
use this condition to specify all sources (that is, you don't specify
the C<SourceArn>) owned by a specific account.



=head2 SourceArn => Str

The Amazon Resource Name of the invoker.

If you add a permission to a service principal without providing the
source ARN, any AWS account that creates a mapping to your function ARN
can invoke your Lambda function.



=head2 B<REQUIRED> StatementId => Str

A unique statement identifier.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddPermission in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

