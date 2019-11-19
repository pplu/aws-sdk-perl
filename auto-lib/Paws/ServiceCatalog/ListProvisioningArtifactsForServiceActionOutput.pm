# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::ListProvisioningArtifactsForServiceActionOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_ProvisioningArtifactView/;
  has NextPageToken => (is => 'ro', isa => Str);
  has ProvisioningArtifactViews => (is => 'ro', isa => ArrayRef[ServiceCatalog_ProvisioningArtifactView]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ProvisioningArtifactViews' => {
                                                'class' => 'Paws::ServiceCatalog::ProvisioningArtifactView',
                                                'type' => 'ArrayRef[ServiceCatalog_ProvisioningArtifactView]'
                                              },
               'NextPageToken' => {
                                    'type' => 'Str'
                                  }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ListProvisioningArtifactsForServiceActionOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 ProvisioningArtifactViews => ArrayRef[ServiceCatalog_ProvisioningArtifactView]

An array of objects with information about product views and
provisioning artifacts.


=head2 _request_id => Str


=cut

1;