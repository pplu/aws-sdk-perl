# Generated from json/callresult_class.tt

package Paws::Config::DescribeOrganizationConformancePackStatusesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_OrganizationConformancePackStatus/;
  has NextToken => (is => 'ro', isa => Str);
  has OrganizationConformancePackStatuses => (is => 'ro', isa => ArrayRef[Config_OrganizationConformancePackStatus]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'OrganizationConformancePackStatuses' => {
                                                          'type' => 'ArrayRef[Config_OrganizationConformancePackStatus]',
                                                          'class' => 'Paws::Config::OrganizationConformancePackStatus'
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

Paws::Config::DescribeOrganizationConformancePackStatusesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The nextToken string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 OrganizationConformancePackStatuses => ArrayRef[Config_OrganizationConformancePackStatus]

A list of C<OrganizationConformancePackStatus> objects.


=head2 _request_id => Str


=cut

1;