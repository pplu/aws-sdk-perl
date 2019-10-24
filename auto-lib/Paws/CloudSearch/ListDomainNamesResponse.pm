# Generated from callresult_class.tt

package Paws::CloudSearch::ListDomainNamesResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudSearch::Types qw/CloudSearch_DomainNameMap/;
  has DomainNames => (is => 'ro', isa => CloudSearch_DomainNameMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DomainNames' => {
                                  'class' => 'Paws::CloudSearch::DomainNameMap',
                                  'type' => 'CloudSearch_DomainNameMap'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::ListDomainNamesResponse

=head1 ATTRIBUTES


=head2 DomainNames => CloudSearch_DomainNameMap

The names of the search domains owned by an account.


=head2 _request_id => Str


=cut

