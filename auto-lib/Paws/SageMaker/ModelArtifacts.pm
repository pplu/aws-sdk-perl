package Paws::SageMaker::ModelArtifacts;
  use Moose;
  has S3ModelArtifacts => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ModelArtifacts

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::ModelArtifacts object:

  $service_obj->Method(Att1 => { S3ModelArtifacts => $value, ..., S3ModelArtifacts => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::ModelArtifacts object:

  $result = $service_obj->Method(...);
  $result->Att1->S3ModelArtifacts

=head1 DESCRIPTION

Provides information about the location that is configured for storing
model artifacts.

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3ModelArtifacts => Str

  The path of the S3 object that contains the model artifacts. For
example, C<s3://bucket-name/keynameprefix/model.tar.gz>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

