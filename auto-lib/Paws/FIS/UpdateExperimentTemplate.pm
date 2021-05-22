
package Paws::FIS::UpdateExperimentTemplate;
  use Moose;
  has Actions => (is => 'ro', isa => 'Paws::FIS::UpdateExperimentTemplateActionInputMap', traits => ['NameInRequest'], request_name => 'actions');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn');
  has StopConditions => (is => 'ro', isa => 'ArrayRef[Paws::FIS::UpdateExperimentTemplateStopConditionInput]', traits => ['NameInRequest'], request_name => 'stopConditions');
  has Targets => (is => 'ro', isa => 'Paws::FIS::UpdateExperimentTemplateTargetInputMap', traits => ['NameInRequest'], request_name => 'targets');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateExperimentTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/experimentTemplates/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FIS::UpdateExperimentTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS::UpdateExperimentTemplate - Arguments for method UpdateExperimentTemplate on L<Paws::FIS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateExperimentTemplate on the
L<AWS Fault Injection Simulator|Paws::FIS> service. Use the attributes of this class
as arguments to method UpdateExperimentTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateExperimentTemplate.

=head1 SYNOPSIS

    my $fis = Paws->service('FIS');
    my $UpdateExperimentTemplateResponse = $fis->UpdateExperimentTemplate(
      Id      => 'MyExperimentTemplateId',
      Actions => {
        'MyExperimentTemplateActionName' => {
          ActionId => 'MyActionId',    # max: 128; OPTIONAL
          Description =>
            'MyExperimentTemplateActionDescription',    # max: 512; OPTIONAL
          Parameters => {
            'MyExperimentTemplateActionParameterName' =>
              'MyExperimentTemplateActionParameter'
            ,    # key: max: 64, value: max: 1024
          },    # OPTIONAL
          StartAfter => [
            'MyExperimentTemplateActionStartAfter', ...    # max: 64
          ],                                               # OPTIONAL
          Targets => {
            'MyExperimentTemplateActionTargetName' =>
              'MyExperimentTemplateTargetName',   # key: max: 64, value: max: 64
          },    # OPTIONAL
        },    # key: max: 64
      },    # OPTIONAL
      Description    => 'MyExperimentTemplateDescription',    # OPTIONAL
      RoleArn        => 'MyRoleArn',                          # OPTIONAL
      StopConditions => [
        {
          Source => 'MyStopConditionSource',    # max: 64
          Value  => 'MyStopConditionValue',     # min: 20, max: 2048; OPTIONAL
        },
        ...
      ],                                        # OPTIONAL
      Targets => {
        'MyExperimentTemplateTargetName' => {
          ResourceType  => 'MyResourceType',                           # max: 64
          SelectionMode => 'MyExperimentTemplateTargetSelectionMode',  # max: 64
          Filters       => [
            {
              Path   => 'MyExperimentTemplateTargetFilterPath',    # max: 256
              Values => [
                'MyExperimentTemplateTargetFilterValue', ...       # max: 128
              ],

            },
            ...
          ],                                                       # OPTIONAL
          ResourceArns => [
            'MyResourceArn', ...    # min: 20, max: 2048
          ],                        # max: 5; OPTIONAL
          ResourceTags => {
            'MyTagKey' => 'MyTagValue',    # key: max: 128, value: max: 256
          },    # max: 50; OPTIONAL
        },    # key: max: 64
      },    # OPTIONAL
    );

    # Results:
    my $ExperimentTemplate =
      $UpdateExperimentTemplateResponse->ExperimentTemplate;

    # Returns a L<Paws::FIS::UpdateExperimentTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fis/UpdateExperimentTemplate>

=head1 ATTRIBUTES


=head2 Actions => L<Paws::FIS::UpdateExperimentTemplateActionInputMap>

The actions for the experiment.



=head2 Description => Str

A description for the template.



=head2 B<REQUIRED> Id => Str

The ID of the experiment template.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that grants the AWS FIS
service permission to perform service actions on your behalf.



=head2 StopConditions => ArrayRef[L<Paws::FIS::UpdateExperimentTemplateStopConditionInput>]

The stop conditions for the experiment.



=head2 Targets => L<Paws::FIS::UpdateExperimentTemplateTargetInputMap>

The targets for the experiment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateExperimentTemplate in L<Paws::FIS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

