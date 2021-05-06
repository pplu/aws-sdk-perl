
package Paws::EC2::ModifyInstanceEventStartTimeResult;
  use Moose;
  has Event => (is => 'ro', isa => 'Paws::EC2::InstanceStatusEvent', request_name => 'event', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyInstanceEventStartTimeResult

=head1 ATTRIBUTES


=head2 Event => L<Paws::EC2::InstanceStatusEvent>




=head2 _request_id => Str


=cut

