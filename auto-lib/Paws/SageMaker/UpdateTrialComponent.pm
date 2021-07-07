
package Paws::SageMaker::UpdateTrialComponent;
  use Moose;
  has DisplayName => (is => 'ro', isa => 'Str');
  has EndTime => (is => 'ro', isa => 'Str');
  has InputArtifacts => (is => 'ro', isa => 'Paws::SageMaker::TrialComponentArtifacts');
  has InputArtifactsToRemove => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has OutputArtifacts => (is => 'ro', isa => 'Paws::SageMaker::TrialComponentArtifacts');
  has OutputArtifactsToRemove => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Parameters => (is => 'ro', isa => 'Paws::SageMaker::TrialComponentParameters');
  has ParametersToRemove => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StartTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Paws::SageMaker::TrialComponentStatus');
  has TrialComponentName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTrialComponent');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateTrialComponentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateTrialComponent - Arguments for method UpdateTrialComponent on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTrialComponent on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateTrialComponent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTrialComponent.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateTrialComponentResponse = $api . sagemaker->UpdateTrialComponent(
      TrialComponentName => 'MyExperimentEntityName',
      DisplayName        => 'MyExperimentEntityName',    # OPTIONAL
      EndTime            => '1970-01-01T01:00:00',       # OPTIONAL
      InputArtifacts     => {
        'MyTrialComponentKey64' => {
          Value     => 'MyTrialComponentArtifactValue',    # max: 2048
          MediaType => 'MyMediaType',                      # max: 64; OPTIONAL
        },    # key: max: 64
      },    # OPTIONAL
      InputArtifactsToRemove => [
        'MyTrialComponentKey256', ...    # max: 256
      ],    # OPTIONAL
      OutputArtifacts => {
        'MyTrialComponentKey64' => {
          Value     => 'MyTrialComponentArtifactValue',    # max: 2048
          MediaType => 'MyMediaType',                      # max: 64; OPTIONAL
        },    # key: max: 64
      },    # OPTIONAL
      OutputArtifactsToRemove => [
        'MyTrialComponentKey256', ...    # max: 256
      ],    # OPTIONAL
      Parameters => {
        'MyTrialComponentKey256' => {
          NumberValue => 1,                           # OPTIONAL
          StringValue => 'MyStringParameterValue',    # max: 256; OPTIONAL
        },    # key: max: 256
      },    # OPTIONAL
      ParametersToRemove => [
        'MyTrialComponentKey256', ...    # max: 256
      ],    # OPTIONAL
      StartTime => '1970-01-01T01:00:00',    # OPTIONAL
      Status    => {
        Message       => 'MyTrialComponentStatusMessage',  # max: 1024; OPTIONAL
        PrimaryStatus => 'InProgress'
        ,   # values: InProgress, Completed, Failed, Stopping, Stopped; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $TrialComponentArn = $UpdateTrialComponentResponse->TrialComponentArn;

    # Returns a L<Paws::SageMaker::UpdateTrialComponentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateTrialComponent>

=head1 ATTRIBUTES


=head2 DisplayName => Str

The name of the component as displayed. The name doesn't need to be
unique. If C<DisplayName> isn't specified, C<TrialComponentName> is
displayed.



=head2 EndTime => Str

When the component ended.



=head2 InputArtifacts => L<Paws::SageMaker::TrialComponentArtifacts>

Replaces all of the component's input artifacts with the specified
artifacts.



=head2 InputArtifactsToRemove => ArrayRef[Str|Undef]

The input artifacts to remove from the component.



=head2 OutputArtifacts => L<Paws::SageMaker::TrialComponentArtifacts>

Replaces all of the component's output artifacts with the specified
artifacts.



=head2 OutputArtifactsToRemove => ArrayRef[Str|Undef]

The output artifacts to remove from the component.



=head2 Parameters => L<Paws::SageMaker::TrialComponentParameters>

Replaces all of the component's hyperparameters with the specified
hyperparameters.



=head2 ParametersToRemove => ArrayRef[Str|Undef]

The hyperparameters to remove from the component.



=head2 StartTime => Str

When the component started.



=head2 Status => L<Paws::SageMaker::TrialComponentStatus>

The new status of the component.



=head2 B<REQUIRED> TrialComponentName => Str

The name of the component to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTrialComponent in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

