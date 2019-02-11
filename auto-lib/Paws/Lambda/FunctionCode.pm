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

The code for the Lambda function. You can specify either an object in
Amazon S3, or upload a deployment package directly.

=head1 ATTRIBUTES


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

This class forms part of L<Paws>, describing an object used in L<Paws::Lambda>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

