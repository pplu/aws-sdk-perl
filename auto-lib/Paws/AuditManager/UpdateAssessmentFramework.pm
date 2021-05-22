
package Paws::AuditManager::UpdateAssessmentFramework;
  use Moose;
  has ComplianceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'complianceType');
  has ControlSets => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::UpdateAssessmentFrameworkControlSet]', traits => ['NameInRequest'], request_name => 'controlSets', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has FrameworkId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'frameworkId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAssessmentFramework');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assessmentFrameworks/{frameworkId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::UpdateAssessmentFrameworkResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::UpdateAssessmentFramework - Arguments for method UpdateAssessmentFramework on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAssessmentFramework on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method UpdateAssessmentFramework.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAssessmentFramework.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $UpdateAssessmentFrameworkResponse =
      $auditmanager->UpdateAssessmentFramework(
      ControlSets => [
        {
          Name     => 'MyControlSetName',    # min: 1, max: 300
          Controls => [
            {
              Id => 'MyUUID',                # min: 36, max: 36; OPTIONAL
            },
            ...
          ],                                 # min: 1; OPTIONAL
          Id => 'MyControlSetName',          # min: 1, max: 300
        },
        ...
      ],
      FrameworkId    => 'MyUUID',
      Name           => 'MyFrameworkName',
      ComplianceType => 'MyComplianceType',          # OPTIONAL
      Description    => 'MyFrameworkDescription',    # OPTIONAL
      );

    # Results:
    my $Framework = $UpdateAssessmentFrameworkResponse->Framework;

    # Returns a L<Paws::AuditManager::UpdateAssessmentFrameworkResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/UpdateAssessmentFramework>

=head1 ATTRIBUTES


=head2 ComplianceType => Str

The compliance type that the new custom framework supports, such as CIS
or HIPAA.



=head2 B<REQUIRED> ControlSets => ArrayRef[L<Paws::AuditManager::UpdateAssessmentFrameworkControlSet>]

The control sets associated with the framework.



=head2 Description => Str

The description of the framework that is to be updated.



=head2 B<REQUIRED> FrameworkId => Str

The identifier for the specified framework.



=head2 B<REQUIRED> Name => Str

The name of the framework to be updated.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAssessmentFramework in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

