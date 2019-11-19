# Generated from json/callresult_class.tt

package Paws::Support::DescribeTrustedAdvisorChecksResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Support::Types qw/Support_TrustedAdvisorCheckDescription/;
  has Checks => (is => 'ro', isa => ArrayRef[Support_TrustedAdvisorCheckDescription], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Checks' => 'checks'
                     },
  'IsRequired' => {
                    'Checks' => 1
                  },
  'types' => {
               'Checks' => {
                             'type' => 'ArrayRef[Support_TrustedAdvisorCheckDescription]',
                             'class' => 'Paws::Support::TrustedAdvisorCheckDescription'
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

Paws::Support::DescribeTrustedAdvisorChecksResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Checks => ArrayRef[Support_TrustedAdvisorCheckDescription]

Information about all available Trusted Advisor checks.


=head2 _request_id => Str


=cut

1;