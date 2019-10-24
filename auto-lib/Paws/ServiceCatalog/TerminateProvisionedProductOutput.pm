# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::TerminateProvisionedProductOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_RecordDetail/;
  has RecordDetail => (is => 'ro', isa => ServiceCatalog_RecordDetail);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RecordDetail' => {
                                   'class' => 'Paws::ServiceCatalog::RecordDetail',
                                   'type' => 'ServiceCatalog_RecordDetail'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::TerminateProvisionedProductOutput

=head1 ATTRIBUTES


=head2 RecordDetail => ServiceCatalog_RecordDetail

Information about the result of this request.


=head2 _request_id => Str


=cut

1;