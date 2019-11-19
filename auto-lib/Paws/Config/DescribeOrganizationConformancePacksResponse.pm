# Generated from json/callresult_class.tt

package Paws::Config::DescribeOrganizationConformancePacksResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Config::Types qw/Config_OrganizationConformancePack/;
  has NextToken => (is => 'ro', isa => Str);
  has OrganizationConformancePacks => (is => 'ro', isa => ArrayRef[Config_OrganizationConformancePack]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'OrganizationConformancePacks' => {
                                                   'class' => 'Paws::Config::OrganizationConformancePack',
                                                   'type' => 'ArrayRef[Config_OrganizationConformancePack]'
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

Paws::Config::DescribeOrganizationConformancePacksResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The nextToken string returned on a previous page that you use to get
the next page of results in a paginated response.


=head2 OrganizationConformancePacks => ArrayRef[Config_OrganizationConformancePack]

Returns a list of OrganizationConformancePacks objects.


=head2 _request_id => Str


=cut

1;