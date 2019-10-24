# Generated from json/callresult_class.tt

package Paws::Athena::GetNamedQueryOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Athena::Types qw/Athena_NamedQuery/;
  has NamedQuery => (is => 'ro', isa => Athena_NamedQuery);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NamedQuery' => {
                                 'class' => 'Paws::Athena::NamedQuery',
                                 'type' => 'Athena_NamedQuery'
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

Paws::Athena::GetNamedQueryOutput

=head1 ATTRIBUTES


=head2 NamedQuery => Athena_NamedQuery

Information about the query.


=head2 _request_id => Str


=cut

1;