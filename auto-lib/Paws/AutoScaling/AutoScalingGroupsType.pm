# Generated from callresult_class.tt

package Paws::AutoScaling::AutoScalingGroupsType;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AutoScaling::Types qw/AutoScaling_AutoScalingGroup/;
  has AutoScalingGroups => (is => 'ro', isa => ArrayRef[AutoScaling_AutoScalingGroup], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AutoScalingGroups' => {
                                        'class' => 'Paws::AutoScaling::AutoScalingGroup',
                                        'type' => 'ArrayRef[AutoScaling_AutoScalingGroup]'
                                      },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'AutoScalingGroups' => 1
                  }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::AutoScalingGroupsType

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoScalingGroups => ArrayRef[AutoScaling_AutoScalingGroup]

The groups.


=head2 NextToken => Str

A string that indicates that the response contains more items than can
be returned in a single response. To receive additional items, specify
this string for the C<NextToken> value when requesting the next set of
items. This value is null when there are no more items to return.


=head2 _request_id => Str


=cut

