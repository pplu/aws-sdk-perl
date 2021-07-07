
package Paws::SageMaker::UpdateArtifact;
  use Moose;
  has ArtifactArn => (is => 'ro', isa => 'Str', required => 1);
  has ArtifactName => (is => 'ro', isa => 'Str');
  has Properties => (is => 'ro', isa => 'Paws::SageMaker::LineageEntityParameters');
  has PropertiesToRemove => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateArtifact');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateArtifactResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateArtifact - Arguments for method UpdateArtifact on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateArtifact on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateArtifact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateArtifact.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateArtifactResponse = $api . sagemaker->UpdateArtifact(
      ArtifactArn  => 'MyArtifactArn',
      ArtifactName => 'MyExperimentEntityName',    # OPTIONAL
      Properties   => {
        'MyStringParameterValue' =>
          'MyStringParameterValue',    # key: max: 256, value: max: 256
      },    # OPTIONAL
      PropertiesToRemove => [
        'MyStringParameterValue', ...    # max: 256
      ],    # OPTIONAL
    );

    # Results:
    my $ArtifactArn = $UpdateArtifactResponse->ArtifactArn;

    # Returns a L<Paws::SageMaker::UpdateArtifactResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateArtifact>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ArtifactArn => Str

The Amazon Resource Name (ARN) of the artifact to update.



=head2 ArtifactName => Str

The new name for the artifact.



=head2 Properties => L<Paws::SageMaker::LineageEntityParameters>

The new list of properties. Overwrites the current property list.



=head2 PropertiesToRemove => ArrayRef[Str|Undef]

A list of properties to remove.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateArtifact in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

