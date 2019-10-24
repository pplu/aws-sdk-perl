# Generated from json/callresult_class.tt

package Paws::SMS::GetAppLaunchConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SMS::Types qw/SMS_ServerGroupLaunchConfiguration/;
  has AppId => (is => 'ro', isa => Str);
  has RoleName => (is => 'ro', isa => Str);
  has ServerGroupLaunchConfigurations => (is => 'ro', isa => ArrayRef[SMS_ServerGroupLaunchConfiguration]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServerGroupLaunchConfigurations' => {
                                                      'class' => 'Paws::SMS::ServerGroupLaunchConfiguration',
                                                      'type' => 'ArrayRef[SMS_ServerGroupLaunchConfiguration]'
                                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RoleName' => {
                               'type' => 'Str'
                             },
               'AppId' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'ServerGroupLaunchConfigurations' => 'serverGroupLaunchConfigurations',
                       'RoleName' => 'roleName',
                       'AppId' => 'appId'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SMS::GetAppLaunchConfigurationResponse

=head1 ATTRIBUTES


=head2 AppId => Str

ID of the application associated with the launch configuration.


=head2 RoleName => Str

Name of the service role in the customer's account that Amazon
CloudFormation uses to launch the application.


=head2 ServerGroupLaunchConfigurations => ArrayRef[SMS_ServerGroupLaunchConfiguration]

List of launch configurations for server groups in this application.


=head2 _request_id => Str


=cut

1;