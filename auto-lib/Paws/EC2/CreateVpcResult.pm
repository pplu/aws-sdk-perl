
package Paws::EC2::CreateVpcResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw/EC2_Vpc/;
  has Vpc => (is => 'ro', isa => EC2_Vpc);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Vpc' => 'vpc'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Vpc' => {
                          'type' => 'EC2_Vpc',
                          'class' => 'Paws::EC2::Vpc'
                        }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateVpcResult

=head1 ATTRIBUTES


=head2 Vpc => EC2_Vpc

Information about the VPC.


=head2 _request_id => Str


=cut

