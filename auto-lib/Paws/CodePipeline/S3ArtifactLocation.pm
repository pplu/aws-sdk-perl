package Paws::CodePipeline::S3ArtifactLocation;
  use Moose;
  has BucketName => (is => 'ro', isa => 'Str', request_name => 'bucketName', traits => ['NameInRequest'], required => 1);
  has ObjectKey => (is => 'ro', isa => 'Str', request_name => 'objectKey', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::S3ArtifactLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::S3ArtifactLocation object:

  $service_obj->Method(Att1 => { BucketName => $value, ..., ObjectKey => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::S3ArtifactLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketName

=head1 DESCRIPTION

The location of the Amazon S3 bucket that contains a revision.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BucketName => Str

  The name of the Amazon S3 bucket.


=head2 B<REQUIRED> ObjectKey => Str

  The key of the object in the Amazon S3 bucket, which uniquely
identifies the object in the bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

