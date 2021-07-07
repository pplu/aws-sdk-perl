
package Paws::SSMIncidents::CreateResponsePlan;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::SSMIncidents::Action]', traits => ['NameInRequest'], request_name => 'actions');
  has ChatChannel => (is => 'ro', isa => 'Paws::SSMIncidents::ChatChannel', traits => ['NameInRequest'], request_name => 'chatChannel');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has Engagements => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'engagements');
  has IncidentTemplate => (is => 'ro', isa => 'Paws::SSMIncidents::IncidentTemplate', traits => ['NameInRequest'], request_name => 'incidentTemplate', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::SSMIncidents::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateResponsePlan');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/createResponsePlan');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMIncidents::CreateResponsePlanOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::CreateResponsePlan - Arguments for method CreateResponsePlan on L<Paws::SSMIncidents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateResponsePlan on the
L<AWS Systems Manager Incident Manager|Paws::SSMIncidents> service. Use the attributes of this class
as arguments to method CreateResponsePlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateResponsePlan.

=head1 SYNOPSIS

    my $ssm-incidents = Paws->service('SSMIncidents');
    my $CreateResponsePlanOutput = $ssm -incidents->CreateResponsePlan(
      IncidentTemplate => {
        Impact              => 1,                    # min: 1, max: 5
        Title               => 'MyIncidentTitle',    # max: 200
        DedupeString        => 'MyDedupeString',     # max: 1000; OPTIONAL
        NotificationTargets => [
          {
            SnsTopicArn => 'MyArn',                  # max: 1000; OPTIONAL
          },
          ...
        ],    # max: 10; OPTIONAL
        Summary => 'MyIncidentSummary',    # max: 4000; OPTIONAL
      },
      Name    => 'MyResponsePlanName',
      Actions => [
        {
          SsmAutomation => {
            DocumentName    => 'MySsmAutomationDocumentNameString',
            RoleArn         => 'MyRoleArn',                          # max: 1000
            DocumentVersion =>
              'MySsmAutomationDocumentVersionString',    # max: 128; OPTIONAL
            Parameters => {
              'MySsmParametersKeyString' => [
                'MySsmParameterValuesMemberString', ...    # max: 512
              ],    # key: min: 1, max: 50, value: max: 100
            },    # min: 1, max: 200; OPTIONAL
            TargetAccount => 'RESPONSE_PLAN_OWNER_ACCOUNT'
            ,  # values: RESPONSE_PLAN_OWNER_ACCOUNT, IMPACTED_ACCOUNT; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ChatChannel => {
        ChatbotSns => [
          'MySnsArn', ...    # max: 1000
        ],    # min: 1, max: 5; OPTIONAL
        Empty => {

        },    # OPTIONAL
      },    # OPTIONAL
      ClientToken => 'MyClientToken',                # OPTIONAL
      DisplayName => 'MyResponsePlanDisplayName',    # OPTIONAL
      Engagements => [
        'MySsmContactsArn', ...                      # max: 2048
      ],    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn = $CreateResponsePlanOutput->Arn;

    # Returns a L<Paws::SSMIncidents::CreateResponsePlanOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-incidents/CreateResponsePlan>

=head1 ATTRIBUTES


=head2 Actions => ArrayRef[L<Paws::SSMIncidents::Action>]

The actions that the response plan starts at the beginning of an
incident.



=head2 ChatChannel => L<Paws::SSMIncidents::ChatChannel>

The AWS Chatbot chat channel used for collaboration during an incident.



=head2 ClientToken => Str

A token ensuring that the action is called only once with the specified
details.



=head2 DisplayName => Str

The long format of the response plan name. This field can contain
spaces.



=head2 Engagements => ArrayRef[Str|Undef]

The contacts and escalation plans that the response plan engages during
an incident.



=head2 B<REQUIRED> IncidentTemplate => L<Paws::SSMIncidents::IncidentTemplate>

Details used to create an incident when using this response plan.



=head2 B<REQUIRED> Name => Str

The short format name of the response plan. Can't include spaces.



=head2 Tags => L<Paws::SSMIncidents::TagMap>

A list of tags that you are adding to the response plan.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResponsePlan in L<Paws::SSMIncidents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

