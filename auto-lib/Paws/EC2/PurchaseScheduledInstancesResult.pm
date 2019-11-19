
package Paws::EC2::PurchaseScheduledInstancesResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_ScheduledInstance/;
  has ScheduledInstanceSet => (is => 'ro', isa => ArrayRef[EC2_ScheduledInstance]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'ScheduledInstanceSet' => 'scheduledInstanceSet'
                     },
  'types' => {
               'ScheduledInstanceSet' => {
                                           'class' => 'Paws::EC2::ScheduledInstance',
                                           'type' => 'ArrayRef[EC2_ScheduledInstance]'
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

Paws::EC2::PurchaseScheduledInstancesResult

=head1 ATTRIBUTES


=head2 ScheduledInstanceSet => ArrayRef[EC2_ScheduledInstance]

Information about the Scheduled Instances.


=head2 _request_id => Str


=cut

