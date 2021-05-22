
package Paws::AuditManager::GetSettings;
  use Moose;
  has Attribute => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'attribute', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/settings/{attribute}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AuditManager::GetSettingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AuditManager::GetSettings - Arguments for method GetSettings on L<Paws::AuditManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSettings on the
L<AWS Audit Manager|Paws::AuditManager> service. Use the attributes of this class
as arguments to method GetSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSettings.

=head1 SYNOPSIS

    my $auditmanager = Paws->service('AuditManager');
    my $GetSettingsResponse = $auditmanager->GetSettings(
      Attribute => 'ALL',

    );

    # Results:
    my $Settings = $GetSettingsResponse->Settings;

    # Returns a L<Paws::AuditManager::GetSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/auditmanager/GetSettings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attribute => Str

The list of C<SettingAttribute> enum values.

Valid values are: C<"ALL">, C<"IS_AWS_ORG_ENABLED">, C<"SNS_TOPIC">, C<"DEFAULT_ASSESSMENT_REPORTS_DESTINATION">, C<"DEFAULT_PROCESS_OWNERS">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSettings in L<Paws::AuditManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

