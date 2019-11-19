# Generated from json/callresult_class.tt

package Paws::DeviceFarm::ScheduleRunResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_Run/;
  has Run => (is => 'ro', isa => DeviceFarm_Run);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Run' => 'run'
                     },
  'types' => {
               'Run' => {
                          'class' => 'Paws::DeviceFarm::Run',
                          'type' => 'DeviceFarm_Run'
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

Paws::DeviceFarm::ScheduleRunResult

=head1 ATTRIBUTES


=head2 Run => DeviceFarm_Run

Information about the scheduled run.


=head2 _request_id => Str


=cut

1;