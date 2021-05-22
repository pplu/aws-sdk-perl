
package Paws::CloudWatchEvents::UpdateApiDestinationResponse;
  use Moose;
  has ApiDestinationArn => (is => 'ro', isa => 'Str');
  has ApiDestinationState => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has LastModifiedTime => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::UpdateApiDestinationResponse

=head1 ATTRIBUTES


=head2 ApiDestinationArn => Str

The ARN of the API destination that was updated.


=head2 ApiDestinationState => Str

The state of the API destination that was updated.

Valid values are: C<"ACTIVE">, C<"INACTIVE">
=head2 CreationTime => Str

A time stamp for the time that the API destination was created.


=head2 LastModifiedTime => Str

A time stamp for the time that the API destination was last modified.


=head2 _request_id => Str


=cut

1;