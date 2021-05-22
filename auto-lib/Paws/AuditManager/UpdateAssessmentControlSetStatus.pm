
package Paws::AuditManager::UpdateAssessmentControlSetStatus;
  use Moose;
  has AssessmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assessmentId', required => 1);
  has Comment => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'comment', required => 1);
  has ControlSetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'controlSetId', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAssessmentControlSetStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assessments/{assessmentId}/controlSets/{controlSetId}/status');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::UpdateAssessmentControlSetStatusResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::UpdateAssessmentControlSetStatus - Arguments for method UpdateAssessmentControlSetStatus on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAssessmentControlSetStatus on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method UpdateAssessmentControlSetStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAssessmentControlSetStatus.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $UpdateAssessmentControlSetStatusResponse =
      $auditmanager->UpdateAssessmentControlSetStatus(
      AssessmentId => 'MyUUID',
      Comment      => 'MyDelegationComment',
      ControlSetId => 'MyString',
      Status       => 'ACTIVE',

      );

    # Results:
    my $ControlSet = $UpdateAssessmentControlSetStatusResponse->ControlSet;

# Returns a L<Paws::AuditManager::UpdateAssessmentControlSetStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/UpdateAssessmentControlSetStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentId => Str

The identifier for the specified assessment.



=head2 B<REQUIRED> Comment => Str

The comment related to the status update.



=head2 B<REQUIRED> ControlSetId => Str

The identifier for the specified control set.



=head2 B<REQUIRED> Status => Str

The status of the control set that is being updated.

Valid values are: C<"ACTIVE">, C<"UNDER_REVIEW">, C<"REVIEWED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAssessmentControlSetStatus in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

