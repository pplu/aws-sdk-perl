# Generated from json/callresult_class.tt

package Paws::AppStream::UpdateStackResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppStream::Types qw/AppStream_Stack/;
  has Stack => (is => 'ro', isa => AppStream_Stack);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Stack' => {
                            'class' => 'Paws::AppStream::Stack',
                            'type' => 'AppStream_Stack'
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

Paws::AppStream::UpdateStackResult

=head1 ATTRIBUTES


=head2 Stack => AppStream_Stack

Information about the stack.


=head2 _request_id => Str


=cut

1;