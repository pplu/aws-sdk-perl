
package Paws::WorkLink::ListWebsiteCertificateAuthoritiesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkLink::Types qw/WorkLink_WebsiteCaSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has WebsiteCertificateAuthorities => (is => 'ro', isa => ArrayRef[WorkLink_WebsiteCaSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'WebsiteCertificateAuthorities' => {
                                                    'class' => 'Paws::WorkLink::WebsiteCaSummary',
                                                    'type' => 'ArrayRef[WorkLink_WebsiteCaSummary]'
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

1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::ListWebsiteCertificateAuthoritiesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation. If there are no more pages, this value is null.


=head2 WebsiteCertificateAuthorities => ArrayRef[WorkLink_WebsiteCaSummary]

Information about the certificates.


=head2 _request_id => Str


=cut

