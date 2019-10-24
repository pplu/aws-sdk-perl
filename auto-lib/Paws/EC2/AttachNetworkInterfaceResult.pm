
package Paws::EC2::AttachNetworkInterfaceResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has AttachmentId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'AttachmentId' => {
                                   'type' => 'Str'
                                 }
             },
  'NameInRequest' => {
                       'AttachmentId' => 'attachmentId'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AttachNetworkInterfaceResult

=head1 ATTRIBUTES


=head2 AttachmentId => Str

The ID of the network interface attachment.


=head2 _request_id => Str


=cut

