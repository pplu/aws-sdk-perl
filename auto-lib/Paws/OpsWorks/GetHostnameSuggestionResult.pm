# Generated from json/callresult_class.tt

package Paws::OpsWorks::GetHostnameSuggestionResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::OpsWorks::Types qw//;
  has Hostname => (is => 'ro', isa => Str);
  has LayerId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Hostname' => {
                               'type' => 'Str'
                             },
               'LayerId' => {
                              'type' => 'Str'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::GetHostnameSuggestionResult

=head1 ATTRIBUTES


=head2 Hostname => Str

The generated host name.


=head2 LayerId => Str

The layer ID.


=head2 _request_id => Str


=cut

1;