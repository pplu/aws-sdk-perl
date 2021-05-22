
package Paws::AuditManager::UpdateAssessment;
  use Moose;
  has AssessmentDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentDescription');
  has AssessmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assessmentId', required => 1);
  has AssessmentName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentName');
  has AssessmentReportsDestination => (is => 'ro', isa => 'Paws::AuditManager::AssessmentReportsDestination', traits => ['NameInRequest'], request_name => 'assessmentReportsDestination');
  has Roles => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::Role]', traits => ['NameInRequest'], request_name => 'roles');
  has Scope => (is => 'ro', isa => 'Paws::AuditManager::Scope', traits => ['NameInRequest'], request_name => 'scope', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAssessment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assessments/{assessmentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::UpdateAssessmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::UpdateAssessment - Arguments for method UpdateAssessment on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAssessment on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method UpdateAssessment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAssessment.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $UpdateAssessmentResponse = $auditmanager->UpdateAssessment(
      AssessmentId => 'MyUUID',
      Scope        => {
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
      AssessmentDescription        => 'MyAssessmentDescription',    # OPTIONAL
      AssessmentName               => 'MyAssessmentName',           # OPTIONAL
      AssessmentReportsDestination => {
        Destination     => 'MyS3Url',    # min: 1, max: 1024; OPTIONAL
        DestinationType => 'S3',         # values: S3; OPTIONAL
      },    # OPTIONAL
      Roles => [
        {
          RoleArn => 'MyIamArn',    # min: 20, max: 2048; OPTIONAL
          RoleType =>
            'PROCESS_OWNER',   # values: PROCESS_OWNER, RESOURCE_OWNER; OPTIONAL
        },
        ...
      ],                       # OPTIONAL
    );

    # Results:
    my $Assessment = $UpdateAssessmentResponse->Assessment;

    # Returns a L<Paws::AuditManager::UpdateAssessmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/UpdateAssessment>

=head1 ATTRIBUTES


=head2 AssessmentDescription => Str

The description of the specified assessment.



=head2 B<REQUIRED> AssessmentId => Str

The identifier for the specified assessment.



=head2 AssessmentName => Str

The name of the specified assessment to be updated.



=head2 AssessmentReportsDestination => L<Paws::AuditManager::AssessmentReportsDestination>

The assessment report storage destination for the specified assessment
that is being updated.



=head2 Roles => ArrayRef[L<Paws::AuditManager::Role>]

The list of roles for the specified assessment.



=head2 B<REQUIRED> Scope => L<Paws::AuditManager::Scope>

The scope of the specified assessment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAssessment in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

