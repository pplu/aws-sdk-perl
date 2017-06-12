
package Paws::Rekognition::GetCelebrityInfoResponse;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has Urls => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::GetCelebrityInfoResponse

=head1 ATTRIBUTES


=head2 Name => Str

The name of the celebrity.


=head2 Urls => ArrayRef[Str|Undef]

An array of URLs pointing to additional celebrity information.


=head2 _request_id => Str


=cut

1;