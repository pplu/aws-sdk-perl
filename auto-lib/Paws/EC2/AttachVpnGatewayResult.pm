
package Paws::EC2::AttachVpnGatewayResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_VpcAttachment/;
  has VpcAttachment => (is => 'ro', isa => EC2_VpcAttachment);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'VpcAttachment' => {
                                    'class' => 'Paws::EC2::VpcAttachment',
                                    'type' => 'EC2_VpcAttachment'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'VpcAttachment' => 'attachment'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AttachVpnGatewayResult

=head1 ATTRIBUTES


=head2 VpcAttachment => EC2_VpcAttachment

Information about the attachment.


=head2 _request_id => Str


=cut

