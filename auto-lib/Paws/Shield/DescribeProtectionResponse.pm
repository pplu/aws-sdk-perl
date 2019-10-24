# Generated from json/callresult_class.tt

package Paws::Shield::DescribeProtectionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Shield::Types qw/Shield_Protection/;
  has Protection => (is => 'ro', isa => Shield_Protection);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Protection' => {
                                 'class' => 'Paws::Shield::Protection',
                                 'type' => 'Shield_Protection'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Shield::DescribeProtectionResponse

=head1 ATTRIBUTES


=head2 Protection => Shield_Protection

The Protection object that is described.


=head2 _request_id => Str


=cut

1;