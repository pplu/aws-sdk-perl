# Generated from json/callresult_class.tt

package Paws::DeviceFarm::GetJobResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_Job/;
  has Job => (is => 'ro', isa => DeviceFarm_Job);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Job' => {
                          'class' => 'Paws::DeviceFarm::Job',
                          'type' => 'DeviceFarm_Job'
                        },
               '_request_id' => {
                                  'type' => 'Str'
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

Paws::DeviceFarm::GetJobResult

=head1 ATTRIBUTES


=head2 Job => DeviceFarm_Job

An object containing information about the requested job.


=head2 _request_id => Str


=cut

1;