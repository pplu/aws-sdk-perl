# Generated from json/callresult_class.tt

package Paws::WorkMail::CreateResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkMail::Types qw//;
  has ResourceId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceId' => {
                                 'type' => 'Str'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::CreateResourceResponse

=head1 ATTRIBUTES


=head2 ResourceId => Str

The identifier of the new resource.


=head2 _request_id => Str


=cut

1;