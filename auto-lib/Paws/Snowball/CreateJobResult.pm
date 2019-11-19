# Generated from json/callresult_class.tt

package Paws::Snowball::CreateJobResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Snowball::Types qw//;
  has JobId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'JobId' => {
                            'type' => 'Str'
                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Snowball::CreateJobResult

=head1 ATTRIBUTES


=head2 JobId => Str

The automatically generated ID for a job, for example
C<JID123e4567-e89b-12d3-a456-426655440000>.


=head2 _request_id => Str


=cut

1;