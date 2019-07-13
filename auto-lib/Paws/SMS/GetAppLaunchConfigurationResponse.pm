
package Paws::SMS::GetAppLaunchConfigurationResponse;
  use Moose;
  has AppId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appId' );
  has RoleName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleName' );
  has ServerGroupLaunchConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::SMS::ServerGroupLaunchConfiguration]', traits => ['NameInRequest'], request_name => 'serverGroupLaunchConfigurations' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SMS::GetAppLaunchConfigurationResponse

=head1 ATTRIBUTES


=head2 AppId => Str

ID of the application associated with the launch configuration.


=head2 RoleName => Str

Name of the service role in the customer's account that Amazon
CloudFormation uses to launch the application.


=head2 ServerGroupLaunchConfigurations => ArrayRef[L<Paws::SMS::ServerGroupLaunchConfiguration>]

List of launch configurations for server groups in this application.


=head2 _request_id => Str


=cut

1;