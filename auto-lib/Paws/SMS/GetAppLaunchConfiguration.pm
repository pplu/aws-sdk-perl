
package Paws::SMS::GetAppLaunchConfiguration;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAppLaunchConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SMS::GetAppLaunchConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SMS::GetAppLaunchConfiguration - Arguments for method GetAppLaunchConfiguration on L<Paws::SMS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAppLaunchConfiguration on the
L<AWS Server Migration Service|Paws::SMS> service. Use the attributes of this class
as arguments to method GetAppLaunchConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAppLaunchConfiguration.

=head1 SYNOPSIS

    my $sms = Paws->service('SMS');
    my $GetAppLaunchConfigurationResponse = $sms->GetAppLaunchConfiguration(
      AppId => 'MyAppId',    # OPTIONAL
    );

    # Results:
    my $AppId    = $GetAppLaunchConfigurationResponse->AppId;
    my $RoleName = $GetAppLaunchConfigurationResponse->RoleName;
    my $ServerGroupLaunchConfigurations =
      $GetAppLaunchConfigurationResponse->ServerGroupLaunchConfigurations;

    # Returns a L<Paws::SMS::GetAppLaunchConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/sms/GetAppLaunchConfiguration>

=head1 ATTRIBUTES


=head2 AppId => Str

ID of the application launch configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAppLaunchConfiguration in L<Paws::SMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

