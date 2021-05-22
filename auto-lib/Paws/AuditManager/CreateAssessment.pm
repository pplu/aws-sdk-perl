
package Paws::AuditManager::CreateAssessment;
  use Moose;
  has AssessmentReportsDestination => (is => 'ro', isa => 'Paws::AuditManager::AssessmentReportsDestination', traits => ['NameInRequest'], request_name => 'assessmentReportsDestination', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has FrameworkId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'frameworkId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Roles => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::Role]', traits => ['NameInRequest'], request_name => 'roles', required => 1);
  has Scope => (is => 'ro', isa => 'Paws::AuditManager::Scope', traits => ['NameInRequest'], request_name => 'scope', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::AuditManager::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAssessment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assessments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::CreateAssessmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::CreateAssessment - Arguments for method CreateAssessment on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAssessment on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method CreateAssessment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAssessment.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $CreateAssessmentResponse = $auditmanager->CreateAssessment(
      AssessmentReportsDestination => {
        Destination     => 'MyS3Url',    # min: 1, max: 1024; OPTIONAL
        DestinationType => 'S3',         # values: S3; OPTIONAL
      },
      FrameworkId => 'MyUUID',
      Name        => 'MyAssessmentName',
      Roles       => [
        {
          RoleArn => 'MyIamArn',         # min: 20, max: 2048; OPTIONAL
          RoleType =>
            'PROCESS_OWNER',   # values: PROCESS_OWNER, RESOURCE_OWNER; OPTIONAL
        },
        ...
      ],
      Scope => {
        AwsAccounts => [
          {
            EmailAddress => 'MyEmailAddress',    # min: 1, max: 320; OPTIONAL
            Id           => 'MyAccountId',       # min: 12, max: 12; OPTIONAL
            Name         => 'MyAccountName',     # min: 1, max: 50; OPTIONAL
          },
          ...
        ],                                       # OPTIONAL
        AwsServices => [
          {
            ServiceName => 'MyAWSServiceName',    # min: 1, max: 40; OPTIONAL
          },
          ...
        ],                                        # OPTIONAL
      },
      Description => 'MyAssessmentDescription',    # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Assessment = $CreateAssessmentResponse->Assessment;

    # Returns a L<Paws::AuditManager::CreateAssessmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/CreateAssessment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentReportsDestination => L<Paws::AuditManager::AssessmentReportsDestination>

The assessment report storage destination for the specified assessment
that is being created.



=head2 Description => Str

The optional description of the assessment to be created.



=head2 B<REQUIRED> FrameworkId => Str

The identifier for the specified framework.



=head2 B<REQUIRED> Name => Str

The name of the assessment to be created.



=head2 B<REQUIRED> Roles => ArrayRef[L<Paws::AuditManager::Role>]

The list of roles for the specified assessment.



=head2 B<REQUIRED> Scope => L<Paws::AuditManager::Scope>





=head2 Tags => L<Paws::AuditManager::TagMap>

The tags associated with the assessment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAssessment in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

