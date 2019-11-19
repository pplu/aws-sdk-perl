
package Paws::Quicksight::DescribeGroupResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::Quicksight::Types qw/Quicksight_Group/;
  has Group => (is => 'ro', isa => Quicksight_Group);
  has RequestId => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RequestId' => {
                                'type' => 'Str'
                              },
               'Group' => {
                            'class' => 'Paws::Quicksight::Group',
                            'type' => 'Quicksight_Group'
                          },
               'Status' => {
                             'type' => 'Int'
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

Paws::Quicksight::DescribeGroupResponse

=head1 ATTRIBUTES


=head2 Group => Quicksight_Group

The name of the group.


=head2 RequestId => Str

The AWS request ID for this operation.


=head2 Status => Int

The http status of the request.


=head2 _request_id => Str


=cut

