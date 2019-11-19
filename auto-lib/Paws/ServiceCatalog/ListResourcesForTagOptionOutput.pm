# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::ListResourcesForTagOptionOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_ResourceDetail/;
  has PageToken => (is => 'ro', isa => Str);
  has ResourceDetails => (is => 'ro', isa => ArrayRef[ServiceCatalog_ResourceDetail]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'PageToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ResourceDetails' => {
                                      'type' => 'ArrayRef[ServiceCatalog_ResourceDetail]',
                                      'class' => 'Paws::ServiceCatalog::ResourceDetail'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListResourcesForTagOptionOutput

=head1 ATTRIBUTES


=head2 PageToken => Str

The page token for the next set of results. To retrieve the first set
of results, use null.


=head2 ResourceDetails => ArrayRef[ServiceCatalog_ResourceDetail]

Information about the resources.


=head2 _request_id => Str


=cut

1;