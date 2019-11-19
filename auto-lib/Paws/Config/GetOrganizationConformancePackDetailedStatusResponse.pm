# Generated from json/callresult_class.tt

package Paws::Config::GetOrganizationConformancePackDetailedStatusResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_OrganizationConformancePackDetailedStatus/;
  has NextToken => (is => 'ro', isa => Str);
  has OrganizationConformancePackDetailedStatuses => (is => 'ro', isa => ArrayRef[Config_OrganizationConformancePackDetailedStatus]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OrganizationConformancePackDetailedStatuses' => {
                                                                  'class' => 'Paws::Config::OrganizationConformancePackDetailedStatus',
                                                                  'type' => 'ArrayRef[Config_OrganizationConformancePackDetailedStatus]'
                                                                },
               'NextToken' => {
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

Paws::Config::GetOrganizationConformancePackDetailedStatusResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The nextToken string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 OrganizationConformancePackDetailedStatuses => ArrayRef[Config_OrganizationConformancePackDetailedStatus]

A list of C<OrganizationConformancePackDetailedStatus> objects.


=head2 _request_id => Str


=cut

1;