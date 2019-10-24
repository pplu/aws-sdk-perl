# Generated from json/callresult_class.tt

package Paws::DeviceFarm::CreateProjectResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_Project/;
  has Project => (is => 'ro', isa => DeviceFarm_Project);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Project' => {
                              'class' => 'Paws::DeviceFarm::Project',
                              'type' => 'DeviceFarm_Project'
                            }
             },
  'NameInRequest' => {
                       'Project' => 'project'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::CreateProjectResult

=head1 ATTRIBUTES


=head2 Project => DeviceFarm_Project

The newly created project.


=head2 _request_id => Str


=cut

1;