# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::ListServiceActionsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_ServiceActionSummary/;
  has NextPageToken => (is => 'ro', isa => Str);
  has ServiceActionSummaries => (is => 'ro', isa => ArrayRef[ServiceCatalog_ServiceActionSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               'ServiceActionSummaries' => {
                                             'type' => 'ArrayRef[ServiceCatalog_ServiceActionSummary]',
                                             'class' => 'Paws::ServiceCatalog::ServiceActionSummary'
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

Paws::ServiceCatalog::ListServiceActionsOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 ServiceActionSummaries => ArrayRef[ServiceCatalog_ServiceActionSummary]

An object containing information about the service actions associated
with the provisioning artifact.


=head2 _request_id => Str


=cut

1;