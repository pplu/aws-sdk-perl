
package Paws::XRay::GetGroupsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::XRay::Types qw/XRay_GroupSummary/;
  has Groups => (is => 'ro', isa => ArrayRef[XRay_GroupSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Groups' => {
                             'class' => 'Paws::XRay::GroupSummary',
                             'type' => 'ArrayRef[XRay_GroupSummary]'
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

1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::GetGroupsResult

=head1 ATTRIBUTES


=head2 Groups => ArrayRef[XRay_GroupSummary]

The collection of all active groups.


=head2 NextToken => Str

Pagination token. Not used.


=head2 _request_id => Str


=cut

