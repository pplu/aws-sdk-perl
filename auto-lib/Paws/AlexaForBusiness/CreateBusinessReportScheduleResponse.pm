# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::CreateBusinessReportScheduleResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AlexaForBusiness::Types qw//;
  has ScheduleArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ScheduleArn' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::CreateBusinessReportScheduleResponse

=head1 ATTRIBUTES


=head2 ScheduleArn => Str

The ARN of the business report schedule.


=head2 _request_id => Str


=cut

1;