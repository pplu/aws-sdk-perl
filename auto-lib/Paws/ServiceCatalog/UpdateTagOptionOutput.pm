# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::UpdateTagOptionOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_TagOptionDetail/;
  has TagOptionDetail => (is => 'ro', isa => ServiceCatalog_TagOptionDetail);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'TagOptionDetail' => {
                                      'class' => 'Paws::ServiceCatalog::TagOptionDetail',
                                      'type' => 'ServiceCatalog_TagOptionDetail'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::UpdateTagOptionOutput

=head1 ATTRIBUTES


=head2 TagOptionDetail => ServiceCatalog_TagOptionDetail

Information about the TagOption.


=head2 _request_id => Str


=cut

1;