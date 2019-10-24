# Generated from json/callresult_class.tt

package Paws::Glue::UpdateJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw//;
  has JobName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'JobName' => {
                              'type' => 'Str'
                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::UpdateJobResponse

=head1 ATTRIBUTES


=head2 JobName => Str

Returns the name of the updated job definition.


=head2 _request_id => Str


=cut

1;