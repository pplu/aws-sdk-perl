
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
L<AWS Lambda|Paws::Lambda> service. Use the attributes of this class
as arguments to method UpdateFunctionCode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateFunctionCode.

=head1 SYNOPSIS

    my $lambda = Paws->service('Lambda');
    # To update a Lambda function's code
    # This operation updates a Lambda function's code
    my $FunctionConfiguration = $lambda->UpdateFunctionCode(
      {
        'FunctionName'    => 'myFunction',
        'Publish'         => 1,
        'S3Bucket'        => 'myBucket',
        'S3Key'           => 'myKey',
        'S3ObjectVersion' => 1,
        'ZipFile'         => 'fileb://file-path/file.zip'
      }
    );

    # Results:
    my $CodeSha256   = $FunctionConfiguration->CodeSha256;
    my $CodeSize     = $FunctionConfiguration->CodeSize;
    my $Description  = $FunctionConfiguration->Description;
    my $FunctionArn  = $FunctionConfiguration->FunctionArn;
    my $FunctionName = $FunctionConfiguration->FunctionName;
    my $Handler      = $FunctionConfiguration->Handler;
    my $LastModified = $FunctionConfiguration->LastModified;
    my $MemorySize   = $FunctionConfiguration->MemorySize;
    my $Role         = $FunctionConfiguration->Role;
    my $Runtime      = $FunctionConfiguration->Runtime;
    my $Timeout      = $FunctionConfiguration->Timeout;
    my $Version      = $FunctionConfiguration->Version;
    my $VpcConfig    = $FunctionConfiguration->VpcConfig;

    # Returns a L<Paws::Lambda::FunctionConfiguration> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda/UpdateFunctionCode>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Set to true to validate the request parameters and access permissions
without modifying the function code.



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



=head2 Publish => Bool

Set to true to publish a new version of the function after updating the
code. This has the same effect as calling PublishVersion separately.



=head2 RevisionId => Str

Only update the function if the revision ID matches the ID specified.
Use this option to avoid modifying a function that has changed since
you last read it.



=head2 S3Bucket => Str

An Amazon S3 bucket in the same region as your function. The bucket can
be in a different AWS account.



=head2 S3Key => Str

The Amazon S3 key of the deployment package.



=head2 S3ObjectVersion => Str

For versioned objects, the version of the deployment package object to
use.



=head2 ZipFile => Str

The base64-encoded contents of the deployment package. AWS SDK and AWS
CLI clients handle the encoding for you.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateFunctionCode in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

