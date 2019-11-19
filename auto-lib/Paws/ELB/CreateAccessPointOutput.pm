# Generated from callresult_class.tt

package Paws::ELB::CreateAccessPointOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ELB::Types qw//;
  has DNSName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DNSName' => {
                              'type' => 'Str'
                            }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::CreateAccessPointOutput

=head1 ATTRIBUTES


=head2 DNSName => Str

The DNS name of the load balancer.


=head2 _request_id => Str


=cut

