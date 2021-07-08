
package Paws::AuditManager::CreateAssessmentFramework;
  use Moose;
  has ComplianceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'complianceType');
  has ControlSets => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::CreateAssessmentFrameworkControlSet]', traits => ['NameInRequest'], request_name => 'controlSets', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::AuditManager::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAssessmentFramework');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/assessmentFrameworks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::CreateAssessmentFrameworkResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::CreateAssessmentFramework - Arguments for method CreateAssessmentFramework on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAssessmentFramework on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method CreateAssessmentFramework.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAssessmentFramework.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $CreateAssessmentFrameworkResponse =
      $auditmanager->CreateAssessmentFramework(
      ControlSets => [
        {
          Name     => 'MyControlSetName',    # min: 1, max: 300
          Controls => [
            {
              Id => 'MyUUID',                # min: 36, max: 36; OPTIONAL
            },
            ...
          ],    # min: 1; OPTIONAL
        },
        ...
      ],
      Name           => 'MyFrameworkName',
      ComplianceType => 'MyComplianceType',          # OPTIONAL
      Description    => 'MyFrameworkDescription',    # OPTIONAL
      Tags           => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $Framework = $CreateAssessmentFrameworkResponse->Framework;

    # Returns a L<Paws::AuditManager::CreateAssessmentFrameworkResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/CreateAssessmentFramework>

=head1 ATTRIBUTES


=head2 ComplianceType => Str

The compliance type that the new custom framework supports, such as CIS
or HIPAA.



=head2 B<REQUIRED> ControlSets => ArrayRef[L<Paws::AuditManager::CreateAssessmentFrameworkControlSet>]

The control sets to be associated with the framework.



=head2 Description => Str

An optional description for the new custom framework.



=head2 B<REQUIRED> Name => Str

The name of the new custom framework.



=head2 Tags => L<Paws::AuditManager::TagMap>

The tags associated with the framework.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAssessmentFramework in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

