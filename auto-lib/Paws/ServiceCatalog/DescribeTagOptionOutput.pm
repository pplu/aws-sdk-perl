# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::DescribeTagOptionOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_TagOptionDetail/;
  has TagOptionDetail => (is => 'ro', isa => ServiceCatalog_TagOptionDetail);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TagOptionDetail' => {
                                      'class' => 'Paws::ServiceCatalog::TagOptionDetail',
                                      'type' => 'ServiceCatalog_TagOptionDetail'
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

Paws::ServiceCatalog::DescribeTagOptionOutput

=head1 ATTRIBUTES


=head2 TagOptionDetail => ServiceCatalog_TagOptionDetail

Information about the TagOption.


=head2 _request_id => Str


=cut

1;