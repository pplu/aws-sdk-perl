package Paws::GameLift::S3Location;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str');
  has Key => (is => 'ro', isa => 'Str');
  has ObjectVersion => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::S3Location

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::S3Location object:

  $service_obj->Method(Att1 => { Bucket => $value, ..., RoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::S3Location object:

  $result = $service_obj->Method(...);
  $result->Att1->Bucket

=head1 DESCRIPTION

The location in Amazon S3 where build or script files are stored for
access by Amazon GameLift. This location is specified in CreateBuild,
CreateScript, and UpdateScript requests.

=head1 ATTRIBUTES


=head2 Bucket => Str

  An Amazon S3 bucket identifier. This is the name of the S3 bucket.


=head2 Key => Str

  The name of the zip file that contains the build files or script files.


=head2 ObjectVersion => Str

  The version of the file, if object versioning is turned on for the
bucket. Amazon GameLift uses this information when retrieving files
from an S3 bucket that you own. Use this parameter to specify a
specific version of the file. If not set, the latest version of the
file is retrieved.


=head2 RoleArn => Str

  The Amazon Resource Name (ARN
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html))
for an IAM role that allows Amazon GameLift to access the S3 bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

