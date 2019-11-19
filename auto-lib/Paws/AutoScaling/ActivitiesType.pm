# Generated from callresult_class.tt

package Paws::AutoScaling::ActivitiesType;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AutoScaling::Types qw/AutoScaling_Activity/;
  has Activities => (is => 'ro', isa => ArrayRef[AutoScaling_Activity], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Activities' => {
                                 'class' => 'Paws::AutoScaling::Activity',
                                 'type' => 'ArrayRef[AutoScaling_Activity]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Activities' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::ActivitiesType

=head1 ATTRIBUTES


=head2 B<REQUIRED> Activities => ArrayRef[AutoScaling_Activity]

The scaling activities. Activities are sorted by start time. Activities
still in progress are described first.


=head2 NextToken => Str

A string that indicates that the response contains more items than can
be returned in a single response. To receive additional items, specify
this string for the C<NextToken> value when requesting the next set of
items. This value is null when there are no more items to return.


=head2 _request_id => Str


=cut

