
package Paws::SageMaker::UpdateExperiment;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has ExperimentName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateExperiment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateExperimentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateExperiment - Arguments for method UpdateExperiment on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateExperiment on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateExperiment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateExperiment.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateExperimentResponse = $api . sagemaker->UpdateExperiment(
      ExperimentName => 'MyExperimentEntityName',
      Description    => 'MyExperimentDescription',    # OPTIONAL
      DisplayName    => 'MyExperimentEntityName',     # OPTIONAL
    );

    # Results:
    my $ExperimentArn = $UpdateExperimentResponse->ExperimentArn;

    # Returns a L<Paws::SageMaker::UpdateExperimentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateExperiment>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the experiment.



=head2 DisplayName => Str

The name of the experiment as displayed. The name doesn't need to be
unique. If C<DisplayName> isn't specified, C<ExperimentName> is
displayed.



=head2 B<REQUIRED> ExperimentName => Str

The name of the experiment to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateExperiment in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

