
package Paws::AuditManager::CreateControl;
  use Moose;
  has ActionPlanInstructions => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionPlanInstructions');
  has ActionPlanTitle => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'actionPlanTitle');
  has ControlMappingSources => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::CreateControlMappingSource]', traits => ['NameInRequest'], request_name => 'controlMappingSources', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::AuditManager::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has TestingInformation => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'testingInformation');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateControl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/controls');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::CreateControlResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::CreateControl - Arguments for method CreateControl on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateControl on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method CreateControl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateControl.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $CreateControlResponse = $auditmanager->CreateControl(
      ControlMappingSources => [
        {
          SourceDescription => 'MySourceDescription',    # max: 1000; OPTIONAL
          SourceFrequency => 'DAILY', # values: DAILY, WEEKLY, MONTHLY; OPTIONAL
          SourceKeyword   => {
            KeywordInputType =>
              'SELECT_FROM_LIST',     # values: SELECT_FROM_LIST; OPTIONAL
            KeywordValue => 'MyKeywordValue',    # min: 1, max: 100; OPTIONAL
          },    # OPTIONAL
          SourceName => 'MySourceName',    # min: 1, max: 100; OPTIONAL
          SourceSetUpOption => 'System_Controls_Mapping'
          , # values: System_Controls_Mapping, Procedural_Controls_Mapping; OPTIONAL
          SourceType => 'AWS_Cloudtrail'
          , # values: AWS_Cloudtrail, AWS_Config, AWS_Security_Hub, AWS_API_Call, MANUAL; OPTIONAL
          TroubleshootingText => 'MyTroubleshootingText',  # max: 1000; OPTIONAL
        },
        ...
      ],
      Name                   => 'MyControlName',
      ActionPlanInstructions => 'MyActionPlanInstructions',    # OPTIONAL
      ActionPlanTitle        => 'MyActionPlanTitle',           # OPTIONAL
      Description            => 'MyControlDescription',        # OPTIONAL
      Tags                   => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      TestingInformation => 'MyTestingInformation',    # OPTIONAL
    );

    # Results:
    my $Control = $CreateControlResponse->Control;

    # Returns a L<Paws::AuditManager::CreateControlResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/CreateControl>

=head1 ATTRIBUTES


=head2 ActionPlanInstructions => Str

The recommended actions to carry out if the control is not fulfilled.



=head2 ActionPlanTitle => Str

The title of the action plan for remediating the control.



=head2 B<REQUIRED> ControlMappingSources => ArrayRef[L<Paws::AuditManager::CreateControlMappingSource>]

The data mapping sources for the specified control.



=head2 Description => Str

The description of the control.



=head2 B<REQUIRED> Name => Str

The name of the control.



=head2 Tags => L<Paws::AuditManager::TagMap>

The tags associated with the control.



=head2 TestingInformation => Str

The steps to follow to determine if the control has been satisfied.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateControl in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

