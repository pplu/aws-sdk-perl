# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::DescribeServiceActionOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_ServiceActionDetail/;
  has ServiceActionDetail => (is => 'ro', isa => ServiceCatalog_ServiceActionDetail);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ServiceActionDetail' => {
                                          'type' => 'ServiceCatalog_ServiceActionDetail',
                                          'class' => 'Paws::ServiceCatalog::ServiceActionDetail'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::DescribeServiceActionOutput

=head1 ATTRIBUTES


=head2 ServiceActionDetail => ServiceCatalog_ServiceActionDetail

Detailed information about the self-service action.


=head2 _request_id => Str


=cut

1;