# Generated from json/callresult_class.tt

package Paws::Lightsail::IsVpcPeeredResult;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::Lightsail::Types qw//;
  has IsPeered => (is => 'ro', isa => Bool);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'IsPeered' => {
                               'type' => 'Bool'
                             }
             },
  'NameInRequest' => {
                       'IsPeered' => 'isPeered'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::IsVpcPeeredResult

=head1 ATTRIBUTES


=head2 IsPeered => Bool

Returns C<true> if the Lightsail VPC is peered; otherwise, C<false>.


=head2 _request_id => Str


=cut

1;