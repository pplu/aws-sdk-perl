package Paws::Lambda::FunctionCode;
  use Moose;
  has S3Bucket => (is => 'ro', isa => 'Str');
  has S3Key => (is => 'ro', isa => 'Str');
  has S3ObjectVersion => (is => 'ro', isa => 'Str');
  has ZipFile => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::FunctionCode

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lambda::FunctionCode object:

  $service_obj->Method(Att1 => { S3Bucket => $value, ..., ZipFile => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lambda::FunctionCode object:

  $result = $service_obj->Method(...);
  $result->Att1->S3Bucket

=head1 DESCRIPTION

The code for the Lambda function.

=head1 ATTRIBUTES


=head2 S3Bucket => Str

  Amazon S3 bucket name where the .zip file containing your deployment
package is stored. This bucket must reside in the same AWS region where
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
(http://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role.html)
in the B<AWS Lambda Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

