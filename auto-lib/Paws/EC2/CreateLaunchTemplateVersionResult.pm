
package Paws::EC2::CreateLaunchTemplateVersionResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_LaunchTemplateVersion/;
  has LaunchTemplateVersion => (is => 'ro', isa => EC2_LaunchTemplateVersion);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'LaunchTemplateVersion' => 'launchTemplateVersion'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LaunchTemplateVersion' => {
                                            'type' => 'EC2_LaunchTemplateVersion',
                                            'class' => 'Paws::EC2::LaunchTemplateVersion'
                                          }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateLaunchTemplateVersionResult

=head1 ATTRIBUTES


=head2 LaunchTemplateVersion => EC2_LaunchTemplateVersion

Information about the launch template version.


=head2 _request_id => Str


=cut

