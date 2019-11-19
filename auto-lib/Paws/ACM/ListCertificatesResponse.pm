# Generated from json/callresult_class.tt

package Paws::ACM::ListCertificatesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ACM::Types qw/ACM_CertificateSummary/;
  has CertificateSummaryList => (is => 'ro', isa => ArrayRef[ACM_CertificateSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CertificateSummaryList' => {
                                             'class' => 'Paws::ACM::CertificateSummary',
                                             'type' => 'ArrayRef[ACM_CertificateSummary]'
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

Paws::ACM::ListCertificatesResponse

=head1 ATTRIBUTES


=head2 CertificateSummaryList => ArrayRef[ACM_CertificateSummary]

A list of ACM certificates.


=head2 NextToken => Str

When the list is truncated, this value is present and contains the
value to use for the C<NextToken> parameter in a subsequent pagination
request.


=head2 _request_id => Str


=cut

1;