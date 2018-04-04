
package Paws::Lambda::UpdateFunctionCode;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has FunctionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionName', required => 1);
  has Publish => (is => 'ro', isa => 'Bool');
  has RevisionId => (is => 'ro', isa => 'Str');
  has S3Bucket => (is => 'ro', isa => 'Str');
  has S3Key => (is => 'ro', isa => 'Str');
  has S3ObjectVersion => (is => 'ro', isa => 'Str');
  has ZipFile => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateFunctionCode');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-03-31/functions/{FunctionName}/code');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lambda::FunctionConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::UpdateFunctionCode - Arguments for method UpdateFunctionCode on L<Paws::Lambda>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateFunctionCode on the 
AWS Lambda service. Use the attributes of this class
as arguments to method UpdateFunctionCode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFunctionCode.

As an example:

  $service_obj->UpdateFunctionCode(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 DryRun => Bool

This boolean parameter can be used to test your request to AWS Lambda
to update the Lambda function and publish a version as an atomic
operation. It will do all necessary computation and validation of your
code but will not upload it or a publish a version. Each time this
operation is invoked, the C<CodeSha256> hash value of the provided code
will also be computed and returned in the response.



=head2 B<REQUIRED> FunctionName => Str

The existing Lambda function name whose code you want to replace.

You can specify a function name (for example, C<Thumbnail>) or you can
specify Amazon Resource Name (ARN) of the function (for example,
C<arn:aws:lambda:us-west-2:account-id:function:ThumbNail>). AWS Lambda
also allows you to specify a partial ARN (for example,
C<account-id:Thumbnail>). Note that the length constraint applies only
to the ARN. If you specify only the function name, it is limited to 64
characters in length.



=head2 Publish => Bool

This boolean parameter can be used to request AWS Lambda to update the
Lambda function and publish a version as an atomic operation.



=head2 RevisionId => Str

An optional value you can use to ensure you are updating the latest
update of the function version or alias. If the C<RevisionID> you pass
doesn't match the latest C<RevisionId> of the function or alias, it
will fail with an error message, advising you to retrieve the latest
function version or alias C<RevisionID> using either or .



=head2 S3Bucket => Str

Amazon S3 bucket name where the .zip file containing your deployment
package is stored. This bucket must reside in the same AWS Region where
you are creating the Lambda function.



=head2 S3Key => Str

The Amazon S3 object (the deployment package) key name you want to
upload.



=head2 S3ObjectVersion => Str

The Amazon S3 object (the deployment package) version you want to
upload.



=head2 ZipFile => Str

The contents of your zip file containing your deployment package. If
you are using the web API directly, the contents of the zip file must
be base64-encoded. If you are using the AWS SDKs or the AWS CLI, the
SDKs or CLI will do the encoding for you. For more information about
creating a .zip file, see Execution Permissions
(http://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFunctionCode in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

