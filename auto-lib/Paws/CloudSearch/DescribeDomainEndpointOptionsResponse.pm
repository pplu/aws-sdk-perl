# Generated from callresult_class.tt

package Paws::CloudSearch::DescribeDomainEndpointOptionsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudSearch::Types qw/CloudSearch_DomainEndpointOptionsStatus/;
  has DomainEndpointOptions => (is => 'ro', isa => CloudSearch_DomainEndpointOptionsStatus);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DomainEndpointOptions' => {
                                            'type' => 'CloudSearch_DomainEndpointOptionsStatus',
                                            'class' => 'Paws::CloudSearch::DomainEndpointOptionsStatus'
                                          }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DescribeDomainEndpointOptionsResponse

=head1 ATTRIBUTES


=head2 DomainEndpointOptions => CloudSearch_DomainEndpointOptionsStatus

The status and configuration of a search domain's endpoint options.


=head2 _request_id => Str


=cut

