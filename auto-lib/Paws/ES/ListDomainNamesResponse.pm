
package Paws::ES::ListDomainNamesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ES::Types qw/ES_DomainInfo/;
  has DomainNames => (is => 'ro', isa => ArrayRef[ES_DomainInfo]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DomainNames' => {
                                  'type' => 'ArrayRef[ES_DomainInfo]',
                                  'class' => 'Paws::ES::DomainInfo'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::ListDomainNamesResponse

=head1 ATTRIBUTES


=head2 DomainNames => ArrayRef[ES_DomainInfo]

List of Elasticsearch domain names.


=head2 _request_id => Str


=cut

