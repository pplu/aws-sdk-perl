
package Paws::Greengrass::ListGroupsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Greengrass::Types qw/Greengrass_GroupInformation/;
  has Groups => (is => 'ro', isa => ArrayRef[Greengrass_GroupInformation]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Groups' => {
                             'type' => 'ArrayRef[Greengrass_GroupInformation]',
                             'class' => 'Paws::Greengrass::GroupInformation'
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

Paws::Greengrass::ListGroupsResponse

=head1 ATTRIBUTES


=head2 Groups => ArrayRef[Greengrass_GroupInformation]

Information about a group.


=head2 NextToken => Str

The token for the next set of results, or ''null'' if there are no
additional results.


=head2 _request_id => Str


=cut

