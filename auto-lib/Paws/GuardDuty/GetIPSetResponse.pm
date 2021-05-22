
package Paws::GuardDuty::GetIPSetResponse;
  use Moose;
  has Format => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'format', required => 1);
  has Location => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'location', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::GuardDuty::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetIPSetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Format => Str

The format of the file that contains the IPSet.

Valid values are: C<"TXT">, C<"STIX">, C<"OTX_CSV">, C<"ALIEN_VAULT">, C<"PROOF_POINT">, C<"FIRE_EYE">
=head2 B<REQUIRED> Location => Str

The URI of the file that contains the IPSet. For example:
https://s3.us-west-2.amazonaws.com/my-bucket/my-object-key.


=head2 B<REQUIRED> Name => Str

The user-friendly name for the IPSet.


=head2 B<REQUIRED> Status => Str

The status of IPSet file that was uploaded.

Valid values are: C<"INACTIVE">, C<"ACTIVATING">, C<"ACTIVE">, C<"DEACTIVATING">, C<"ERROR">, C<"DELETE_PENDING">, C<"DELETED">
=head2 Tags => L<Paws::GuardDuty::TagMap>

The tags of the IPSet resource.


=head2 _request_id => Str


=cut

