
package Paws::WorkLink::ListDomainsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkLink::Types qw/WorkLink_DomainSummary/;
  has Domains => (is => 'ro', isa => ArrayRef[WorkLink_DomainSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Domains' => {
                              'type' => 'ArrayRef[WorkLink_DomainSummary]',
                              'class' => 'Paws::WorkLink::DomainSummary'
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

Paws::WorkLink::ListDomainsResponse

=head1 ATTRIBUTES


=head2 Domains => ArrayRef[WorkLink_DomainSummary]

Information about the domains.


=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation. If there are no more pages, this value is null.


=head2 _request_id => Str


=cut

