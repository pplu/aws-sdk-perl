
package Paws::AuditManager::BatchCreateDelegationByAssessment;
  use Moose;
  has AssessmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assessmentId', required => 1);
  has CreateDelegationRequests => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::CreateDelegationRequest]', traits => ['NameInRequest'], request_name => 'createDelegationRequests', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchCreateDelegationByAssessment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assessments/{assessmentId}/delegations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::BatchCreateDelegationByAssessmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::BatchCreateDelegationByAssessment - Arguments for method BatchCreateDelegationByAssessment on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchCreateDelegationByAssessment on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method BatchCreateDelegationByAssessment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchCreateDelegationByAssessment.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $BatchCreateDelegationByAssessmentResponse =
      $auditmanager->BatchCreateDelegationByAssessment(
      AssessmentId             => 'MyUUID',
      CreateDelegationRequests => [
        {
          Comment      => 'MyDelegationComment',  # max: 350; OPTIONAL
          ControlSetId => 'MyControlSetId',       # min: 1, max: 300; OPTIONAL
          RoleArn      => 'MyIamArn',             # min: 20, max: 2048; OPTIONAL
          RoleType     =>
            'PROCESS_OWNER',   # values: PROCESS_OWNER, RESOURCE_OWNER; OPTIONAL
        },
        ...
      ],

      );

    # Results:
    my $Delegations = $BatchCreateDelegationByAssessmentResponse->Delegations;
    my $Errors      = $BatchCreateDelegationByAssessmentResponse->Errors;

# Returns a L<Paws::AuditManager::BatchCreateDelegationByAssessmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/BatchCreateDelegationByAssessment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentId => Str

The identifier for the specified assessment.



=head2 B<REQUIRED> CreateDelegationRequests => ArrayRef[L<Paws::AuditManager::CreateDelegationRequest>]

The API request to batch create delegations in AWS Audit Manager.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchCreateDelegationByAssessment in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

