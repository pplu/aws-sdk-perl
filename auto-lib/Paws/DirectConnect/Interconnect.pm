
package Paws::DirectConnect::Interconnect;
  use Moose;
  has AwsDevice => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsDevice' );
  has Bandwidth => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bandwidth' );
  has InterconnectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'interconnectId' );
  has InterconnectName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'interconnectName' );
  has InterconnectState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'interconnectState' );
  has LagId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lagId' );
  has LoaIssueTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'loaIssueTime' );
  has Location => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'location' );
  has Region => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'region' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::Interconnect

=head1 ATTRIBUTES


=head2 AwsDevice => Str

The Direct Connection endpoint which the physical connection terminates
on.


=head2 Bandwidth => Str




=head2 InterconnectId => Str




=head2 InterconnectName => Str




=head2 InterconnectState => Str



Valid values are: C<"requested">, C<"pending">, C<"available">, C<"down">, C<"deleting">, C<"deleted">
=head2 LagId => Str




=head2 LoaIssueTime => Str

The time of the most recent call to DescribeInterconnectLoa for this
Interconnect.


=head2 Location => Str




=head2 Region => Str




=head2 _request_id => Str


=cut

1;