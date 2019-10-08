
package Paws::EC2::RestoreAddressToClassicResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has PublicIp => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'PublicIp' => {
                               'type' => 'Str'
                             },
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'PublicIp' => 'publicIp',
                       'Status' => 'status'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RestoreAddressToClassicResult

=head1 ATTRIBUTES


=head2 PublicIp => Str

The Elastic IP address.


=head2 Status => Str

The move status for the IP address.

Valid values are: C<"MoveInProgress">, C<"InVpc">, C<"InClassic">
=head2 _request_id => Str


=cut

