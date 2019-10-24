# Generated from callresult_class.tt

package Paws::IAM::GetContextKeysForPolicyResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::IAM::Types qw//;
  has ContextKeyNames => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ContextKeyNames' => {
                                      'type' => 'ArrayRef[Str|Undef]'
                                    }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::GetContextKeysForPolicyResponse

=head1 ATTRIBUTES


=head2 ContextKeyNames => ArrayRef[Str|Undef]

The list of context keys that are referenced in the input policies.


=head2 _request_id => Str


=cut

