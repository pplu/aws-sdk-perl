package Paws::CodePipeline::Artifact;
  use Moose;
  has Location => (is => 'ro', isa => 'Paws::CodePipeline::ArtifactLocation', request_name => 'location', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Revision => (is => 'ro', isa => 'Str', request_name => 'revision', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::Artifact

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::Artifact object:

  $service_obj->Method(Att1 => { Location => $value, ..., Revision => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::Artifact object:

  $result = $service_obj->Method(...);
  $result->Att1->Location

=head1 DESCRIPTION

Represents information about an artifact that will be worked upon by
actions in the pipeline.

=head1 ATTRIBUTES


=head2 Location => L<Paws::CodePipeline::ArtifactLocation>

  The location of an artifact.


=head2 Name => Str

  The artifact's name.


=head2 Revision => Str

  The artifact's revision ID. Depending on the type of object, this could
be a commit ID (GitHub) or a revision ID (Amazon S3).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

