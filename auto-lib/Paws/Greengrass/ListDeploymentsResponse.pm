
package Paws::Greengrass::ListDeploymentsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Greengrass::Types qw/Greengrass_Deployment/;
  has Deployments => (is => 'ro', isa => ArrayRef[Greengrass_Deployment]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Deployments' => {
                                  'class' => 'Paws::Greengrass::Deployment',
                                  'type' => 'ArrayRef[Greengrass_Deployment]'
                                },
               '_request_id' => {
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

Paws::Greengrass::ListDeploymentsResponse

=head1 ATTRIBUTES


=head2 Deployments => ArrayRef[Greengrass_Deployment]

A list of deployments for the requested groups.


=head2 NextToken => Str

The token for the next set of results, or ''null'' if there are no
additional results.


=head2 _request_id => Str


=cut

