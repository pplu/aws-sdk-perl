
package Paws::PinpointEmail::ListDeliverabilityTestReportsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::PinpointEmail::Types qw/PinpointEmail_DeliverabilityTestReport/;
  has DeliverabilityTestReports => (is => 'ro', isa => ArrayRef[PinpointEmail_DeliverabilityTestReport], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DeliverabilityTestReports' => {
                                                'class' => 'Paws::PinpointEmail::DeliverabilityTestReport',
                                                'type' => 'ArrayRef[PinpointEmail_DeliverabilityTestReport]'
                                              },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'DeliverabilityTestReports' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::PinpointEmail::ListDeliverabilityTestReportsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeliverabilityTestReports => ArrayRef[PinpointEmail_DeliverabilityTestReport]

An object that contains a lists of predictive inbox placement tests
that you've performed.


=head2 NextToken => Str

A token that indicates that there are additional predictive inbox
placement tests to list. To view additional predictive inbox placement
tests, issue another request to C<ListDeliverabilityTestReports>, and
pass this token in the C<NextToken> parameter.


=head2 _request_id => Str


=cut

