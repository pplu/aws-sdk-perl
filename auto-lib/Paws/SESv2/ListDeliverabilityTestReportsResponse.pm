
package Paws::SESv2::ListDeliverabilityTestReportsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SESv2::Types qw/SESv2_DeliverabilityTestReport/;
  has DeliverabilityTestReports => (is => 'ro', isa => ArrayRef[SESv2_DeliverabilityTestReport], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DeliverabilityTestReports' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DeliverabilityTestReports' => {
                                                'class' => 'Paws::SESv2::DeliverabilityTestReport',
                                                'type' => 'ArrayRef[SESv2_DeliverabilityTestReport]'
                                              },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SESv2::ListDeliverabilityTestReportsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DeliverabilityTestReports => ArrayRef[SESv2_DeliverabilityTestReport]

An object that contains a lists of predictive inbox placement tests
that you've performed.


=head2 NextToken => Str

A token that indicates that there are additional predictive inbox
placement tests to list. To view additional predictive inbox placement
tests, issue another request to C<ListDeliverabilityTestReports>, and
pass this token in the C<NextToken> parameter.


=head2 _request_id => Str


=cut

