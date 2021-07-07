
package Paws::FIS::CreateExperimentTemplate;
  use Moose;
  has Actions => (is => 'ro', isa => 'Paws::FIS::CreateExperimentTemplateActionInputMap', traits => ['NameInRequest'], request_name => 'actions', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has StopConditions => (is => 'ro', isa => 'ArrayRef[Paws::FIS::CreateExperimentTemplateStopConditionInput]', traits => ['NameInRequest'], request_name => 'stopConditions', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::FIS::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Targets => (is => 'ro', isa => 'Paws::FIS::CreateExperimentTemplateTargetInputMap', traits => ['NameInRequest'], request_name => 'targets');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateExperimentTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/experimentTemplates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FIS::CreateExperimentTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FIS::CreateExperimentTemplate - Arguments for method CreateExperimentTemplate on L<Paws::FIS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateExperimentTemplate on the
L<AWS Fault Injection Simulator|Paws::FIS> service. Use the attributes of this class
as arguments to method CreateExperimentTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateExperimentTemplate.

=head1 SYNOPSIS

    my $fis = Paws->service('FIS');
    my $CreateExperimentTemplateResponse = $fis->CreateExperimentTemplate(
      Actions => {
        'MyExperimentTemplateActionName' => {
          ActionId    => 'MyActionId',                  # max: 128
          Description =>
            'MyExperimentTemplateActionDescription',    # max: 512; OPTIONAL
          Parameters => {
            'MyExperimentTemplateActionParameterName' =>
              'MyExperimentTemplateActionParameter'
            ,    # key: max: 64, value: max: 1024
          },    # OPTIONAL
          StartAfter => [
            'MyExperimentTemplateActionStartAfter', ...    # max: 64
          ],    # OPTIONAL
          Targets => {
            'MyExperimentTemplateActionTargetName' =>
              'MyExperimentTemplateTargetName',   # key: max: 64, value: max: 64
          },    # OPTIONAL
        },    # key: max: 64
      },
      ClientToken    => 'MyClientToken',
      Description    => 'MyExperimentTemplateDescription',
      RoleArn        => 'MyRoleArn',
      StopConditions => [
        {
          Source => 'MyStopConditionSource',    # max: 64
          Value  => 'MyStopConditionValue',     # min: 20, max: 2048; OPTIONAL
        },
        ...
      ],
      Tags => {
        'MyTagKey' => 'MyTagValue',             # key: max: 128, value: max: 256
      },    # OPTIONAL
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
          ],    # OPTIONAL
          ResourceArns => [
            'MyResourceArn', ...    # min: 20, max: 2048
          ],    # max: 5; OPTIONAL
          ResourceTags => {
            'MyTagKey' => 'MyTagValue',    # key: max: 128, value: max: 256
          },    # max: 50
        },    # key: max: 64
      },    # OPTIONAL
    );

    # Results:
    my $ExperimentTemplate =
      $CreateExperimentTemplateResponse->ExperimentTemplate;

    # Returns a L<Paws::FIS::CreateExperimentTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/fis/CreateExperimentTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Actions => L<Paws::FIS::CreateExperimentTemplateActionInputMap>

The actions for the experiment.



=head2 B<REQUIRED> ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> Description => Str

A description for the experiment template. Can contain up to 64 letters
(A-Z and a-z).



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of an IAM role that grants the AWS FIS
service permission to perform service actions on your behalf.



=head2 B<REQUIRED> StopConditions => ArrayRef[L<Paws::FIS::CreateExperimentTemplateStopConditionInput>]

The stop conditions.



=head2 Tags => L<Paws::FIS::TagMap>

The tags to apply to the experiment template.



=head2 Targets => L<Paws::FIS::CreateExperimentTemplateTargetInputMap>

The targets for the experiment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateExperimentTemplate in L<Paws::FIS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

