# Generated from json/callresult_class.tt

package Paws::ServiceCatalog::ListOrganizationPortfolioAccessOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_OrganizationNode/;
  has NextPageToken => (is => 'ro', isa => Str);
  has OrganizationNodes => (is => 'ro', isa => ArrayRef[ServiceCatalog_OrganizationNode]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OrganizationNodes' => {
                                        'class' => 'Paws::ServiceCatalog::OrganizationNode',
                                        'type' => 'ArrayRef[ServiceCatalog_OrganizationNode]'
                                      },
               'NextPageToken' => {
                                    'type' => 'Str'
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

Paws::ServiceCatalog::ListOrganizationPortfolioAccessOutput

=head1 ATTRIBUTES


=head2 NextPageToken => Str

The page token to use to retrieve the next set of results. If there are
no additional results, this value is null.


=head2 OrganizationNodes => ArrayRef[ServiceCatalog_OrganizationNode]

Displays information about the organization nodes.


=head2 _request_id => Str


=cut

1;