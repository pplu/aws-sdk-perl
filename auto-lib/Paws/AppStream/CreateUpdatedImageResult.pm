
package Paws::AppStream::CreateUpdatedImageResult;
  use Moose;
  has CanUpdateImage => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'canUpdateImage' );
  has Image => (is => 'ro', isa => 'Paws::AppStream::Image', traits => ['NameInRequest'], request_name => 'image' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::CreateUpdatedImageResult

=head1 ATTRIBUTES


=head2 CanUpdateImage => Bool

Indicates whether a new image can be created.


=head2 Image => L<Paws::AppStream::Image>




=head2 _request_id => Str


=cut

1;