
package Paws::AuditManager::UpdateSettings;
  use Moose;
  has DefaultAssessmentReportsDestination => (is => 'ro', isa => 'Paws::AuditManager::AssessmentReportsDestination', traits => ['NameInRequest'], request_name => 'defaultAssessmentReportsDestination');
  has DefaultProcessOwners => (is => 'ro', isa => 'ArrayRef[Paws::AuditManager::Role]', traits => ['NameInRequest'], request_name => 'defaultProcessOwners');
  has KmsKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKey');
  has SnsTopic => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'snsTopic');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/settings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::UpdateSettingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::UpdateSettings - Arguments for method UpdateSettings on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSettings on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method UpdateSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSettings.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $UpdateSettingsResponse = $auditmanager->UpdateSettings(
      DefaultAssessmentReportsDestination => {
        Destination     => 'MyS3Url',    # min: 1, max: 1024; OPTIONAL
        DestinationType => 'S3',         # values: S3; OPTIONAL
      },    # OPTIONAL
      DefaultProcessOwners => [
        {
          RoleArn  => 'MyIamArn',    # min: 20, max: 2048; OPTIONAL
          RoleType =>
            'PROCESS_OWNER',   # values: PROCESS_OWNER, RESOURCE_OWNER; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      KmsKey   => 'MyKmsKey',    # OPTIONAL
      SnsTopic => 'MySnsArn',    # OPTIONAL
    );

    # Results:
    my $Settings = $UpdateSettingsResponse->Settings;

    # Returns a L<Paws::AuditManager::UpdateSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/UpdateSettings>

=head1 ATTRIBUTES


=head2 DefaultAssessmentReportsDestination => L<Paws::AuditManager::AssessmentReportsDestination>

The default storage destination for assessment reports.



=head2 DefaultProcessOwners => ArrayRef[L<Paws::AuditManager::Role>]

A list of the default audit owners.



=head2 KmsKey => Str

The AWS KMS key details.



=head2 SnsTopic => Str

The Amazon Simple Notification Service (Amazon SNS) topic to which AWS
Audit Manager sends notifications.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSettings in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

