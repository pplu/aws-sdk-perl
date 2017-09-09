
package Paws::S3::And;
  use Moose;
  has Prefix  => (is => 'ro', isa => 'Str');
  has Tag     => (is => 'ro', isa => 'Paws::S3::Tag');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::And

=head1 ATTRIBUTES


=head2 Prefix => Str


=head2 Tag => L<Paws::S3::Tag>



=cut

