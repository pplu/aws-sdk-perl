# Generated from json/callresult_class.tt

package Paws::DS::CreateAliasResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DS::Types qw//;
  has Alias => (is => 'ro', isa => Str);
  has DirectoryId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Alias' => {
                            'type' => 'Str'
                          },
               'DirectoryId' => {
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

Paws::DS::CreateAliasResult

=head1 ATTRIBUTES


=head2 Alias => Str

The alias for the directory.


=head2 DirectoryId => Str

The identifier of the directory.


=head2 _request_id => Str


=cut

1;