# Generated from json/callresult_class.tt

package Paws::WAFRegional::ListResourcesForWebACLResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::WAFRegional::Types qw//;
  has ResourceArns => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ResourceArns' => {
                                   'type' => 'ArrayRef[Str|Undef]'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::ListResourcesForWebACLResponse

=head1 ATTRIBUTES


=head2 ResourceArns => ArrayRef[Str|Undef]

An array of ARNs (Amazon Resource Names) of the resources associated
with the specified web ACL. An array with zero elements is returned if
there are no resources associated with the web ACL.


=head2 _request_id => Str


=cut

1;