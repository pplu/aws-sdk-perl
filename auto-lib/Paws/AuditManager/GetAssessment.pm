
package Paws::AuditManager::GetAssessment;
  use Moose;
  has AssessmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'assessmentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAssessment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assessments/{assessmentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::GetAssessmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::GetAssessment - Arguments for method GetAssessment on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAssessment on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method GetAssessment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAssessment.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $GetAssessmentResponse = $auditmanager->GetAssessment(
      AssessmentId => 'MyUUID',

    );

    # Results:
    my $Assessment = $GetAssessmentResponse->Assessment;
    my $UserRole   = $GetAssessmentResponse->UserRole;

    # Returns a L<Paws::AuditManager::GetAssessmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/GetAssessment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentId => Str

The identifier for the specified assessment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAssessment in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

