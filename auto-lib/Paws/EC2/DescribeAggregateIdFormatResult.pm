
package Paws::EC2::DescribeAggregateIdFormatResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef Bool/;
  use Paws::EC2::Types qw/EC2_IdFormat/;
  has Statuses => (is => 'ro', isa => ArrayRef[EC2_IdFormat]);
  has UseLongIdsAggregated => (is => 'ro', isa => Bool);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'Statuses' => {
                               'class' => 'Paws::EC2::IdFormat',
                               'type' => 'ArrayRef[EC2_IdFormat]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'UseLongIdsAggregated' => {
                                           'type' => 'Bool'
                                         }
             },
  'NameInRequest' => {
                       'Statuses' => 'statusSet',
                       'UseLongIdsAggregated' => 'useLongIdsAggregated'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeAggregateIdFormatResult

=head1 ATTRIBUTES


=head2 Statuses => ArrayRef[EC2_IdFormat]

Information about each resource's ID format.


=head2 UseLongIdsAggregated => Bool

Indicates whether all resource types in the Region are configured to
use longer IDs. This value is only C<true> if all users are configured
to use longer IDs for all resources types in the Region.


=head2 _request_id => Str


=cut

