
package Paws::PinpointEmail::CreateDeliverabilityTestReportResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::PinpointEmail::Types qw//;
  has DeliverabilityTestStatus => (is => 'ro', isa => Str, required => 1);
  has ReportId => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ReportId' => {
                               'type' => 'Str'
                             },
               'DeliverabilityTestStatus' => {
                                               'type' => 'Str'
                                             }
             },
  'IsRequired' => {
                    'DeliverabilityTestStatus' => 1,
                    'ReportId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::CreateDeliverabilityTestReportResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeliverabilityTestStatus => Str

The status of the predictive inbox placement test. If the status is
C<IN_PROGRESS>, then the predictive inbox placement test is currently
running. Predictive inbox placement tests are usually complete within
24 hours of creating the test. If the status is C<COMPLETE>, then the
test is finished, and you can use the C<GetDeliverabilityTestReport> to
view the results of the test.

Valid values are: C<"IN_PROGRESS">, C<"COMPLETED">
=head2 B<REQUIRED> ReportId => Str

A unique string that identifies the predictive inbox placement test.


=head2 _request_id => Str


=cut

