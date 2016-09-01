package Paws::CodePipeline::ArtifactRevisionInformation;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', xmlname => 'name', request_name => 'name', traits => ['Unwrapped','NameInRequest']);
  has Revision => (is => 'ro', isa => 'Paws::CodePipeline::ArtifactRevision', xmlname => 'revision', request_name => 'revision', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ArtifactRevisionInformation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodePipeline::ArtifactRevisionInformation object:

  $service_obj->Method(Att1 => { Name => $value, ..., Revision => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodePipeline::ArtifactRevisionInformation object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Represents information about an artifact revision.

=head1 ATTRIBUTES


=head2 Name => Str

  The name of an artifact. This name might be system-generated, such as
"MyApp", or might be defined by the user when an action is created.


=head2 Revision => L<Paws::CodePipeline::ArtifactRevision>

  Represents details about the ArtifactRevision object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

