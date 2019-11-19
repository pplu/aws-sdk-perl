
package Paws::Lambda::ListAliasesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Lambda::Types qw/Lambda_AliasConfiguration/;
  has Aliases => (is => 'ro', isa => ArrayRef[Lambda_AliasConfiguration]);
  has NextMarker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Aliases' => {
                              'type' => 'ArrayRef[Lambda_AliasConfiguration]',
                              'class' => 'Paws::Lambda::AliasConfiguration'
                            },
               'NextMarker' => {
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

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::ListAliasesResponse

=head1 ATTRIBUTES


=head2 Aliases => ArrayRef[Lambda_AliasConfiguration]

A list of aliases.


=head2 NextMarker => Str

The pagination token that's included if more results are available.


=head2 _request_id => Str


=cut

