# Generated from json/callresult_class.tt

package Paws::WorkMail::ListOrganizationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkMail::Types qw/WorkMail_OrganizationSummary/;
  has NextToken => (is => 'ro', isa => Str);
  has OrganizationSummaries => (is => 'ro', isa => ArrayRef[WorkMail_OrganizationSummary]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'OrganizationSummaries' => {
                                            'class' => 'Paws::WorkMail::OrganizationSummary',
                                            'type' => 'ArrayRef[WorkMail_OrganizationSummary]'
                                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::ListOrganizationsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. The value is
"null" when there are no more results to return.


=head2 OrganizationSummaries => ArrayRef[WorkMail_OrganizationSummary]

The overview of owned organizations presented as a list of organization
summaries.


=head2 _request_id => Str


=cut

1;