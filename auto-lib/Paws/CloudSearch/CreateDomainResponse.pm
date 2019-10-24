# Generated from callresult_class.tt

package Paws::CloudSearch::CreateDomainResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudSearch::Types qw/CloudSearch_DomainStatus/;
  has DomainStatus => (is => 'ro', isa => CloudSearch_DomainStatus);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DomainStatus' => {
                                   'class' => 'Paws::CloudSearch::DomainStatus',
                                   'type' => 'CloudSearch_DomainStatus'
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

Paws::CloudSearch::CreateDomainResponse

=head1 ATTRIBUTES


=head2 DomainStatus => CloudSearch_DomainStatus




=head2 _request_id => Str


=cut

