package Paws::SageMaker::AutoMLJobArtifacts;
  use Moose;
  has CandidateDefinitionNotebookLocation => (is => 'ro', isa => 'Str');
  has DataExplorationNotebookLocation => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::AutoMLJobArtifacts

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::AutoMLJobArtifacts object:

  $service_obj->Method(Att1 => { CandidateDefinitionNotebookLocation => $value, ..., DataExplorationNotebookLocation => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::AutoMLJobArtifacts object:

  $result = $service_obj->Method(...);
  $result->Att1->CandidateDefinitionNotebookLocation

=head1 DESCRIPTION

Artifacts that are generation during a job.

=head1 ATTRIBUTES


=head2 CandidateDefinitionNotebookLocation => Str

  The URL to the notebook location.


=head2 DataExplorationNotebookLocation => Str

  The URL to the notebook location.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

