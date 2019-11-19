# Generated from json/callresult_class.tt

package Paws::OpsWorks::CloneStackResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::OpsWorks::Types qw//;
  has StackId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'StackId' => {
                              'type' => 'Str'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::CloneStackResult

=head1 ATTRIBUTES


=head2 StackId => Str

The cloned stack ID.


=head2 _request_id => Str


=cut

1;