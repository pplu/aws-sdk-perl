# Generated from json/callresult_class.tt

package Paws::Discovery::StopContinuousExportResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Discovery::Types qw//;
  has StartTime => (is => 'ro', isa => Str);
  has StopTime => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'StartTime' => {
                                'type' => 'Str'
                              },
               'StopTime' => {
                               'type' => 'Str'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'StopTime' => 'stopTime',
                       'StartTime' => 'startTime'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Discovery::StopContinuousExportResponse

=head1 ATTRIBUTES


=head2 StartTime => Str

Timestamp that represents when this continuous export started
collecting data.


=head2 StopTime => Str

Timestamp that represents when this continuous export was stopped.


=head2 _request_id => Str


=cut

1;