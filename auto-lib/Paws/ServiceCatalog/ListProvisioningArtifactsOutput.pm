# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::ListProvisioningArtifactsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_ProvisioningArtifactDetail/;
  has NextPageToken => (is => 'ro', isa => Str);
  has ProvisioningArtifactDetails => (is => 'ro', isa => ArrayRef[ServiceCatalog_ProvisioningArtifactDetail]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextPageToken' => {
                                    'type' => 'Str'
                                  },
               'ProvisioningArtifactDetails' => {
                                                  'type' => 'ArrayRef[ServiceCatalog_ProvisioningArtifactDetail]',
                                                  'class' => 'Paws::ServiceCatalog::ProvisioningArtifactDetail'
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

Paws::ServiceCatalog::ListProvisioningArtifactsOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 ProvisioningArtifactDetails => ArrayRef[ServiceCatalog_ProvisioningArtifactDetail]

Information about the provisioning artifacts.


=head2 _request_id => Str


=cut

1;