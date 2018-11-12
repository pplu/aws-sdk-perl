package Paws::Rekognition::S3Object;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::S3Object

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Rekognition::S3Object object:

  $service_obj->Method(Att1 => { Bucket => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Rekognition::S3Object object:

  $result = $service_obj->Method(...);
  $result->Att1->Bucket

=head1 DESCRIPTION

Provides the S3 bucket name and object name.

The region for the S3 bucket containing the S3 object must match the
region you use for Amazon Rekognition operations.

For Amazon Rekognition to process an S3 object, the user must have
permission to access the S3 object. For more information, see
Resource-Based Policies in the Amazon Rekognition Developer Guide.

=head1 ATTRIBUTES


=head2 Bucket => Str

  Name of the S3 bucket.


=head2 Name => Str

  S3 object key name.


=head2 Version => Str

  If the bucket is versioning enabled, you can specify the object
version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

