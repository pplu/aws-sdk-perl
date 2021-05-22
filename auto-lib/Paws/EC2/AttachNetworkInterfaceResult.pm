
package Paws::EC2::AttachNetworkInterfaceResult;
  use Moose;
  has AttachmentId => (is => 'ro', isa => 'Str', request_name => 'attachmentId', traits => ['NameInRequest',]);
  has NetworkCardIndex => (is => 'ro', isa => 'Int', request_name => 'networkCardIndex', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AttachNetworkInterfaceResult

=head1 ATTRIBUTES


=head2 AttachmentId => Str

The ID of the network interface attachment.


=head2 NetworkCardIndex => Int

The index of the network card.


=head2 _request_id => Str


=cut

