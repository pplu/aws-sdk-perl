# Generated from callresult_class.tt

package Paws::CloudSearch::DescribeDomainsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudSearch::Types qw/CloudSearch_DomainStatus/;
  has DomainStatusList => (is => 'ro', isa => ArrayRef[CloudSearch_DomainStatus], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'DomainStatusList' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DomainStatusList' => {
                                       'type' => 'ArrayRef[CloudSearch_DomainStatus]',
                                       'class' => 'Paws::CloudSearch::DomainStatus'
                                     }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearch::DescribeDomainsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainStatusList => ArrayRef[CloudSearch_DomainStatus]




=head2 _request_id => Str


=cut

