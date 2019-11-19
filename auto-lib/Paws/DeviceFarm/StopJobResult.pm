# Generated from json/callresult_class.tt

package Paws::DeviceFarm::StopJobResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_Job/;
  has Job => (is => 'ro', isa => DeviceFarm_Job);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Job' => {
                          'type' => 'DeviceFarm_Job',
                          'class' => 'Paws::DeviceFarm::Job'
                        }
             },
  'NameInRequest' => {
                       'Job' => 'job'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::StopJobResult

=head1 ATTRIBUTES


=head2 Job => DeviceFarm_Job

The job that was stopped.


=head2 _request_id => Str


=cut

1;