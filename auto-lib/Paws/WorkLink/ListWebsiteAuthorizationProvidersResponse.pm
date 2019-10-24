
package Paws::WorkLink::ListWebsiteAuthorizationProvidersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkLink::Types qw/WorkLink_WebsiteAuthorizationProviderSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has WebsiteAuthorizationProviders => (is => 'ro', isa => ArrayRef[WorkLink_WebsiteAuthorizationProviderSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'WebsiteAuthorizationProviders' => {
                                                    'class' => 'Paws::WorkLink::WebsiteAuthorizationProviderSummary',
                                                    'type' => 'ArrayRef[WorkLink_WebsiteAuthorizationProviderSummary]'
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

Paws::WorkLink::ListWebsiteAuthorizationProvidersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If this value is null, it retrieves the first page.


=head2 WebsiteAuthorizationProviders => ArrayRef[WorkLink_WebsiteAuthorizationProviderSummary]

The website authorization providers.


=head2 _request_id => Str


=cut

