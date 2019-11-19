# Generated from json/callresult_class.tt

package Paws::DeviceFarm::UpdateProjectResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_Project/;
  has Project => (is => 'ro', isa => DeviceFarm_Project);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Project' => 'project'
                     },
  'types' => {
               'Project' => {
                              'type' => 'DeviceFarm_Project',
                              'class' => 'Paws::DeviceFarm::Project'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::UpdateProjectResult

=head1 ATTRIBUTES


=head2 Project => DeviceFarm_Project

The project you wish to update.


=head2 _request_id => Str


=cut

1;