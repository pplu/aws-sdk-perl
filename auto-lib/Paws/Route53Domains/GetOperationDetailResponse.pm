
package Paws::Route53Domains::GetOperationDetailResponse;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has OperationId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has SubmittedDate => (is => 'ro', isa => 'Paws::API::TimeStamp');
  has Type => (is => 'ro', isa => 'Str');


### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::GetOperationDetailResponse

=head1 ATTRIBUTES


=head2 DomainName => Str

The name of a domain.

Type: String



=head2 Message => Str

Detailed information on the status including possible errors.

Type: String



=head2 OperationId => Str

The identifier for the operation.

Type: String



=head2 Status => Str

The current status of the requested operation in the system.

Type: String

Valid values are: C<"SUBMITTED">, C<"IN_PROGRESS">, C<"ERROR">, C<"SUCCESSFUL">, C<"FAILED">

=head2 SubmittedDate => L<Paws::API::TimeStamp>

The date when the request was submitted.



=head2 Type => Str

The type of operation that was requested.

Type: String

Valid values are: C<"REGISTER_DOMAIN">, C<"DELETE_DOMAIN">, C<"TRANSFER_IN_DOMAIN">, C<"UPDATE_DOMAIN_CONTACT">, C<"UPDATE_NAMESERVER">, C<"CHANGE_PRIVACY_PROTECTION">, C<"DOMAIN_LOCK">


=cut

1;