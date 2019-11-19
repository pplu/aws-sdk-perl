# Generated from json/callresult_class.tt

package Paws::Inspector::GetAssessmentReportResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Inspector::Types qw//;
  has Status => (is => 'ro', isa => Str, required => 1);
  has Url => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Url' => 'url',
                       'Status' => 'status'
                     },
  'IsRequired' => {
                    'Status' => 1
                  },
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Url' => {
                          'type' => 'Str'
                        }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::GetAssessmentReportResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => Str

Specifies the status of the request to generate an assessment report.

Valid values are: C<"WORK_IN_PROGRESS">, C<"FAILED">, C<"COMPLETED">
=head2 Url => Str

Specifies the URL where you can find the generated assessment report.
This parameter is only returned if the report is successfully
generated.


=head2 _request_id => Str


=cut

1;