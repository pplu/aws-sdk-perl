# Generated from json/callresult_class.tt

package Paws::AppStream::CreateFleetResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppStream::Types qw/AppStream_Fleet/;
  has Fleet => (is => 'ro', isa => AppStream_Fleet);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Fleet' => {
                            'class' => 'Paws::AppStream::Fleet',
                            'type' => 'AppStream_Fleet'
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

Paws::AppStream::CreateFleetResult

=head1 ATTRIBUTES


=head2 Fleet => AppStream_Fleet

Information about the fleet.


=head2 _request_id => Str


=cut

1;