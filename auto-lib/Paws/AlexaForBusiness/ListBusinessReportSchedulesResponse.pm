# Generated from json/callresult_class.tt

package Paws::AlexaForBusiness::ListBusinessReportSchedulesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AlexaForBusiness::Types qw/AlexaForBusiness_BusinessReportSchedule/;
  has BusinessReportSchedules => (is => 'ro', isa => ArrayRef[AlexaForBusiness_BusinessReportSchedule]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BusinessReportSchedules' => {
                                              'class' => 'Paws::AlexaForBusiness::BusinessReportSchedule',
                                              'type' => 'ArrayRef[AlexaForBusiness_BusinessReportSchedule]'
                                            },
               'NextToken' => {
                                'type' => 'Str'
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

Paws::AlexaForBusiness::ListBusinessReportSchedulesResponse

=head1 ATTRIBUTES


=head2 BusinessReportSchedules => ArrayRef[AlexaForBusiness_BusinessReportSchedule]

The schedule of the reports.


=head2 NextToken => Str

The token used to list the remaining schedules from the previous API
call.


=head2 _request_id => Str


=cut

1;