# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::ListTagOptionsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_TagOptionDetail/;
  has PageToken => (is => 'ro', isa => Str);
  has TagOptionDetails => (is => 'ro', isa => ArrayRef[ServiceCatalog_TagOptionDetail]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'PageToken' => {
                                'type' => 'Str'
                              },
               'TagOptionDetails' => {
                                       'type' => 'ArrayRef[ServiceCatalog_TagOptionDetail]',
                                       'class' => 'Paws::ServiceCatalog::TagOptionDetail'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListTagOptionsOutput

=head1 ATTRIBUTES


=head2 PageToken => Str

The page token for the next set of results. To retrieve the first set
of results, use null.


=head2 TagOptionDetails => ArrayRef[ServiceCatalog_TagOptionDetail]

Information about the TagOptions.


=head2 _request_id => Str


=cut

1;