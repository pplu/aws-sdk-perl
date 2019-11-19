
package Paws::EC2::DescribeScheduledInstancesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_ScheduledInstance/;
  has NextToken => (is => 'ro', isa => Str);
  has ScheduledInstanceSet => (is => 'ro', isa => ArrayRef[EC2_ScheduledInstance]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ScheduledInstanceSet' => 'scheduledInstanceSet',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ScheduledInstanceSet' => {
                                           'type' => 'ArrayRef[EC2_ScheduledInstance]',
                                           'class' => 'Paws::EC2::ScheduledInstance'
                                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeScheduledInstancesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token required to retrieve the next set of results. This value is
C<null> when there are no more results to return.


=head2 ScheduledInstanceSet => ArrayRef[EC2_ScheduledInstance]

Information about the Scheduled Instances.


=head2 _request_id => Str


=cut

