# Generated from json/callresult_class.tt

package Paws::Route53Domains::CheckDomainTransferabilityResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Route53Domains::Types qw/Route53Domains_DomainTransferability/;
  has Transferability => (is => 'ro', isa => Route53Domains_DomainTransferability, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Transferability' => {
                                      'class' => 'Paws::Route53Domains::DomainTransferability',
                                      'type' => 'Route53Domains_DomainTransferability'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Transferability' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::CheckDomainTransferabilityResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Transferability => Route53Domains_DomainTransferability

A complex type that contains information about whether the specified
domain can be transferred to Amazon Route 53.


=head2 _request_id => Str


=cut

1;