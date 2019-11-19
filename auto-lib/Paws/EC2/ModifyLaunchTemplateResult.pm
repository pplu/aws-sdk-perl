
package Paws::EC2::ModifyLaunchTemplateResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_LaunchTemplate/;
  has LaunchTemplate => (is => 'ro', isa => EC2_LaunchTemplate);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'LaunchTemplate' => 'launchTemplate'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LaunchTemplate' => {
                                     'class' => 'Paws::EC2::LaunchTemplate',
                                     'type' => 'EC2_LaunchTemplate'
                                   }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyLaunchTemplateResult

=head1 ATTRIBUTES


=head2 LaunchTemplate => EC2_LaunchTemplate

Information about the launch template.


=head2 _request_id => Str


=cut

