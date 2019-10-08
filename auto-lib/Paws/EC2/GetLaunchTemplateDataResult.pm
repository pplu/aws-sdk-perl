
package Paws::EC2::GetLaunchTemplateDataResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_ResponseLaunchTemplateData/;
  has LaunchTemplateData => (is => 'ro', isa => EC2_ResponseLaunchTemplateData);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'LaunchTemplateData' => {
                                         'class' => 'Paws::EC2::ResponseLaunchTemplateData',
                                         'type' => 'EC2_ResponseLaunchTemplateData'
                                       }
             },
  'NameInRequest' => {
                       'LaunchTemplateData' => 'launchTemplateData'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetLaunchTemplateDataResult

=head1 ATTRIBUTES


=head2 LaunchTemplateData => EC2_ResponseLaunchTemplateData

The instance data.


=head2 _request_id => Str


=cut

