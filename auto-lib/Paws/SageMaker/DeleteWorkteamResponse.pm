# Generated from json/callresult_class.tt

package Paws::SageMaker::DeleteWorkteamResponse;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::SageMaker::Types qw//;
  has Success => (is => 'ro', isa => Bool, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Success' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Success' => {
                              'type' => 'Bool'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DeleteWorkteamResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Success => Bool

Returns C<true> if the work team was successfully deleted; otherwise,
returns C<false>.


=head2 _request_id => Str


=cut

1;