# Generated from json/callresult_class.tt

package Paws::Route53Domains::GetDomainSuggestionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Route53Domains::Types qw/Route53Domains_DomainSuggestion/;
  has SuggestionsList => (is => 'ro', isa => ArrayRef[Route53Domains_DomainSuggestion]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SuggestionsList' => {
                                      'class' => 'Paws::Route53Domains::DomainSuggestion',
                                      'type' => 'ArrayRef[Route53Domains_DomainSuggestion]'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::GetDomainSuggestionsResponse

=head1 ATTRIBUTES


=head2 SuggestionsList => ArrayRef[Route53Domains_DomainSuggestion]

A list of possible domain names. If you specified C<true> for
C<OnlyAvailable> in the request, the list contains only domains that
are available for registration.


=head2 _request_id => Str


=cut

1;