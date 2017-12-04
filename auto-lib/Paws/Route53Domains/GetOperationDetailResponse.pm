
package Paws::Route53Domains::GetOperationDetailResponse;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has OperationId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has SubmittedDate => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::GetOperationDetailResponse

=head1 ATTRIBUTES


=head2 DomainName => Str

The name of a domain.


=head2 Message => Str

Detailed information on the status including possible errors.


=head2 OperationId => Str

The identifier for the operation.


=head2 Status => Str

The current status of the requested operation in the system.

Valid values are: C<"SUBMITTED">, C<"IN_PROGRESS">, C<"ERROR">, C<"SUCCESSFUL">, C<"FAILED">
=head2 SubmittedDate => Str

The date when the request was submitted.


=head2 Type => Str

The type of operation that was requested.

Valid values are: C<"REGISTER_DOMAIN">, C<"DELETE_DOMAIN">, C<"TRANSFER_IN_DOMAIN">, C<"UPDATE_DOMAIN_CONTACT">, C<"UPDATE_NAMESERVER">, C<"CHANGE_PRIVACY_PROTECTION">, C<"DOMAIN_LOCK">, C<"ENABLE_AUTORENEW">, C<"DISABLE_AUTORENEW">, C<"ADD_DNSSEC">, C<"REMOVE_DNSSEC">, C<"EXPIRE_DOMAIN">, C<"TRANSFER_OUT_DOMAIN">, C<"CHANGE_DOMAIN_OWNER">, C<"RENEW_DOMAIN">, C<"PUSH_DOMAIN">
=head2 _request_id => Str


=cut

1;