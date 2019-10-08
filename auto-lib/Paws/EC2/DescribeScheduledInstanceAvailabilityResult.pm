
package Paws::EC2::DescribeScheduledInstanceAvailabilityResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_ScheduledInstanceAvailability/;
  has NextToken => (is => 'ro', isa => Str);
  has ScheduledInstanceAvailabilitySet => (is => 'ro', isa => ArrayRef[EC2_ScheduledInstanceAvailability]);

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
               'ScheduledInstanceAvailabilitySet' => {
                                                       'class' => 'Paws::EC2::ScheduledInstanceAvailability',
                                                       'type' => 'ArrayRef[EC2_ScheduledInstanceAvailability]'
                                                     }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ScheduledInstanceAvailabilitySet' => 'scheduledInstanceAvailabilitySet'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeScheduledInstanceAvailabilityResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token required to retrieve the next set of results. This value is
C<null> when there are no more results to return.


=head2 ScheduledInstanceAvailabilitySet => ArrayRef[EC2_ScheduledInstanceAvailability]

Information about the available Scheduled Instances.


=head2 _request_id => Str


=cut

