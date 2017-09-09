
package Paws::S3::Filter;
  use Moose;
  has And     => (is => 'ro', isa => 'Paws::S3::And', traits => ['NameInRequest'], request_name => 'And');
  has Prefix  => (is => 'ro', isa => 'Str|Undef',     traits => ['NameInRequest'], request_name => 'Prefix');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::Filter

=head1 ATTRIBUTES


=head2 And => L<Paws::S3::And>


=head2 Prefix => Str|Undef



=cut

