
package Paws::AuditManager::UpdateAssessmentControl;
  use Moose;
  has AssessmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assessmentId', required => 1);
  has CommentBody => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'commentBody');
  has ControlId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'controlId', required => 1);
  has ControlSetId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'controlSetId', required => 1);
  has ControlStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'controlStatus');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAssessmentControl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assessments/{assessmentId}/controlSets/{controlSetId}/controls/{controlId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::UpdateAssessmentControlResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::UpdateAssessmentControl - Arguments for method UpdateAssessmentControl on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAssessmentControl on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method UpdateAssessmentControl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAssessmentControl.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $UpdateAssessmentControlResponse =
      $auditmanager->UpdateAssessmentControl(
      AssessmentId  => 'MyUUID',
      ControlId     => 'MyUUID',
      ControlSetId  => 'MyControlSetId',
      CommentBody   => 'MyControlCommentBody',    # OPTIONAL
      ControlStatus => 'UNDER_REVIEW',            # OPTIONAL
      );

    # Results:
    my $Control = $UpdateAssessmentControlResponse->Control;

    # Returns a L<Paws::AuditManager::UpdateAssessmentControlResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/UpdateAssessmentControl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentId => Str

The identifier for the specified assessment.



=head2 CommentBody => Str

The comment body text for the specified control.



=head2 B<REQUIRED> ControlId => Str

The identifier for the specified control.



=head2 B<REQUIRED> ControlSetId => Str

The identifier for the specified control set.



=head2 ControlStatus => Str

The status of the specified control.

Valid values are: C<"UNDER_REVIEW">, C<"REVIEWED">, C<"INACTIVE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAssessmentControl in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

