
package Paws::EC2::ModifyHostsResult;
  use Moose;
  has Successful => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'successful', traits => ['NameInRequest',]);
  has Unsuccessful => (is => 'ro', isa => 'ArrayRef[Paws::EC2::UnsuccessfulItem]', request_name => 'unsuccessful', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyHostsResult

=head1 ATTRIBUTES


=head2 Successful => ArrayRef[Str|Undef]

The IDs of the Dedicated Hosts that were successfully modified.


=head2 Unsuccessful => ArrayRef[L<Paws::EC2::UnsuccessfulItem>]

The IDs of the Dedicated Hosts that could not be modified. Check
whether the setting you requested can be used.


=head2 _request_id => Str


=cut

