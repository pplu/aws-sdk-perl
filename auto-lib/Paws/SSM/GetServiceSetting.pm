
package Paws::SSM::GetServiceSetting;
  use Moose;
  has SettingId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetServiceSetting');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::GetServiceSettingResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetServiceSetting - Arguments for method GetServiceSetting on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetServiceSetting on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method GetServiceSetting.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetServiceSetting.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $GetServiceSettingResult = $ssm->GetServiceSetting(
      SettingId => 'MyServiceSettingId',

    );

    # Results:
    my $ServiceSetting = $GetServiceSettingResult->ServiceSetting;

    # Returns a L<Paws::SSM::GetServiceSettingResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/GetServiceSetting>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SettingId => Str

The ID of the service setting to get. The setting ID can be
C</ssm/automation/customer-script-log-destination>,
C</ssm/automation/customer-script-log-group-name>,
C</ssm/parameter-store/default-parameter-tier>,
C</ssm/parameter-store/high-throughput-enabled>, or
C</ssm/managed-instance/activation-tier>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetServiceSetting in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

