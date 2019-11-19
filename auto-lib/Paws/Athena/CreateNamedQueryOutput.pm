# Generated from json/callresult_class.tt

package Paws::Athena::CreateNamedQueryOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Athena::Types qw//;
  has NamedQueryId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NamedQueryId' => {
                                   'type' => 'Str'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Athena::CreateNamedQueryOutput

=head1 ATTRIBUTES


=head2 NamedQueryId => Str

The unique ID of the query.


=head2 _request_id => Str


=cut

1;