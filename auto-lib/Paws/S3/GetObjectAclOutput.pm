
package Paws::S3::GetObjectAclOutput;
  use Moose;
  has Grants => (is => 'ro', isa => 'ArrayRef[Paws::S3::Grant]', traits => ['Unwrapped'], xmlname => 'Grant');
  has Owner => (is => 'ro', isa => 'Paws::S3::Owner');
  has RequestCharged => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetObjectAclOutput

=head1 ATTRIBUTES


=head2 Grants => ArrayRef[L<Paws::S3::Grant>]

A list of grants.



=head2 Owner => L<Paws::S3::Owner>





=head2 RequestCharged => Str



Valid values are: C<"requester">


=cut

