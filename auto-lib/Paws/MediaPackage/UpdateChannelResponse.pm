
package Paws::MediaPackage::UpdateChannelResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EgressAccessLogs => (is => 'ro', isa => 'Paws::MediaPackage::EgressAccessLogs', traits => ['NameInRequest'], request_name => 'egressAccessLogs');
  has HlsIngest => (is => 'ro', isa => 'Paws::MediaPackage::HlsIngest', traits => ['NameInRequest'], request_name => 'hlsIngest');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has IngressAccessLogs => (is => 'ro', isa => 'Paws::MediaPackage::IngressAccessLogs', traits => ['NameInRequest'], request_name => 'ingressAccessLogs');
  has Tags => (is => 'ro', isa => 'Paws::MediaPackage::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::UpdateChannelResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) assigned to the Channel.


=head2 Description => Str

A short text description of the Channel.


=head2 EgressAccessLogs => L<Paws::MediaPackage::EgressAccessLogs>




=head2 HlsIngest => L<Paws::MediaPackage::HlsIngest>




=head2 Id => Str

The ID of the Channel.


=head2 IngressAccessLogs => L<Paws::MediaPackage::IngressAccessLogs>




=head2 Tags => L<Paws::MediaPackage::Tags>




=head2 _request_id => Str


=cut

