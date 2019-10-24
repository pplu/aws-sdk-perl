
package Paws::Glacier::ListTagsForVaultOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glacier::Types qw/Glacier_TagMap/;
  has Tags => (is => 'ro', isa => Glacier_TagMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::Glacier::TagMap',
                           'type' => 'Glacier_TagMap'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::ListTagsForVaultOutput

=head1 ATTRIBUTES


=head2 Tags => Glacier_TagMap

The tags attached to the vault. Each tag is composed of a key and a
value.


=head2 _request_id => Str


=cut

