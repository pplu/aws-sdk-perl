
package Paws::GuardDuty::GetIPSetResponse;
  use Moose;
  has Format => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'format');
  has Location => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'location');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetIPSetResponse

=head1 ATTRIBUTES


=head2 Format => Str

The format of the file that contains the IPSet.

Valid values are: C<"TXT">, C<"STIX">, C<"OTX_CSV">, C<"ALIEN_VAULT">, C<"PROOF_POINT">, C<"FIRE_EYE">
=head2 Location => Str

The URI of the file that contains the IPSet. For example
(https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key)


=head2 Name => Str

The user friendly name to identify the IPSet. This name is displayed in
all findings that are triggered by activity that involves IP addresses
included in this IPSet.


=head2 Status => Str

The status of ipSet file uploaded.

Valid values are: C<"INACTIVE">, C<"ACTIVATING">, C<"ACTIVE">, C<"DEACTIVATING">, C<"ERROR">, C<"DELETE_PENDING">, C<"DELETED">
=head2 _request_id => Str


=cut

