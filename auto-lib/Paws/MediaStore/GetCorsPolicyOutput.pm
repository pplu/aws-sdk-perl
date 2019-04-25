
package Paws::MediaStore::GetCorsPolicyOutput;
  use Moose;
  has CorsPolicy => (is => 'ro', isa => 'ArrayRef[Paws::MediaStore::CorsRule]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MediaStore::GetCorsPolicyOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CorsPolicy => ArrayRef[L<Paws::MediaStore::CorsRule>]

The CORS policy assigned to the container.


=head2 _request_id => Str


=cut

1;