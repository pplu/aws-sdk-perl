# Generated from json/callresult_class.tt

package Paws::WorkMail::ListGroupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkMail::Types qw/WorkMail_Group/;
  has Groups => (is => 'ro', isa => ArrayRef[WorkMail_Group]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Groups' => {
                             'class' => 'Paws::WorkMail::Group',
                             'type' => 'ArrayRef[WorkMail_Group]'
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

Paws::WorkMail::ListGroupsResponse

=head1 ATTRIBUTES


=head2 Groups => ArrayRef[WorkMail_Group]

The overview of groups for an organization.


=head2 NextToken => Str

The token to use to retrieve the next page of results. The value is
"null" when there are no more results to return.


=head2 _request_id => Str


=cut

1;