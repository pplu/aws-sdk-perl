
package Paws::MediaPackage::CreateChannelResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has HlsIngest => (is => 'ro', isa => 'Paws::MediaPackage::HlsIngest', traits => ['NameInRequest'], request_name => 'hlsIngest');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::CreateChannelResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) assigned to the Channel.


=head2 Description => Str

A short text description of the Channel.


=head2 HlsIngest => L<Paws::MediaPackage::HlsIngest>




=head2 Id => Str

The ID of the Channel.


=head2 _request_id => Str


=cut

