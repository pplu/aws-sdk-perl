# Generated from json/callresult_class.tt

package Paws::WorkMail::ListAliasesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::WorkMail::Types qw//;
  has Aliases => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Aliases' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'NextToken' => {
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

Paws::WorkMail::ListAliasesResponse

=head1 ATTRIBUTES


=head2 Aliases => ArrayRef[Str|Undef]

The entity's paginated aliases.


=head2 NextToken => Str

The token to use to retrieve the next page of results. The value is
"null" when there are no more results to return.


=head2 _request_id => Str


=cut

1;