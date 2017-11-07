package Paws::CodePipeline::ArtifactLocation;
  use Moose;
  has S3Location => (is => 'ro', isa => 'Paws::CodePipeline::S3ArtifactLocation', request_name => 's3Location', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ArtifactLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ArtifactLocation object:

  $service_obj->Method(Att1 => { S3Location => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ArtifactLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->S3Location

=head1 DESCRIPTION

Represents information about the location of an artifact.

=head1 ATTRIBUTES


=head2 S3Location => L<Paws::CodePipeline::S3ArtifactLocation>

  The Amazon S3 bucket that contains the artifact.


=head2 Type => Str

  The type of artifact in the location.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

