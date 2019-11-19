
package Paws::Greengrass::ListBulkDeploymentsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Greengrass::Types qw/Greengrass_BulkDeployment/;
  has BulkDeployments => (is => 'ro', isa => ArrayRef[Greengrass_BulkDeployment]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'BulkDeployments' => {
                                      'type' => 'ArrayRef[Greengrass_BulkDeployment]',
                                      'class' => 'Paws::Greengrass::BulkDeployment'
                                    },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ListBulkDeploymentsResponse

=head1 ATTRIBUTES


=head2 BulkDeployments => ArrayRef[Greengrass_BulkDeployment]

A list of bulk deployments.


=head2 NextToken => Str

The token for the next set of results, or ''null'' if there are no
additional results.


=head2 _request_id => Str


=cut

