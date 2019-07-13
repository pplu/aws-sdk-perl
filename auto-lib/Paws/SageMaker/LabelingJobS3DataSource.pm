package Paws::SageMaker::LabelingJobS3DataSource;
  use Moose;
  has ManifestS3Uri => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::LabelingJobS3DataSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::LabelingJobS3DataSource object:

  $service_obj->Method(Att1 => { ManifestS3Uri => $value, ..., ManifestS3Uri => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::LabelingJobS3DataSource object:

  $result = $service_obj->Method(...);
  $result->Att1->ManifestS3Uri

=head1 DESCRIPTION

The Amazon S3 location of the input data objects.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ManifestS3Uri => Str

  The Amazon S3 location of the manifest file that describes the input
data objects.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

