
package Paws::S3::GetBucketAclOutput;
  use Moose;
  has Grants => (is => 'ro', isa => 'ArrayRef[Paws::S3::Grant]', traits => ['NameInRequest'], request_name => 'AccessControlList');
  has Owner => (is => 'ro', isa => 'Paws::S3::Owner');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketAclOutput

=head1 ATTRIBUTES


=head2 Grants => ArrayRef[L<Paws::S3::Grant>]

A list of grants.



=head2 Owner => L<Paws::S3::Owner>






=cut

