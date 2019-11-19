# Generated from json/callresult_class.tt

package Paws::DS::ShareDirectoryResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DS::Types qw//;
  has SharedDirectoryId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SharedDirectoryId' => {
                                        'type' => 'Str'
                                      }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DS::ShareDirectoryResult

=head1 ATTRIBUTES


=head2 SharedDirectoryId => Str

Identifier of the directory that is stored in the directory consumer
account that is shared from the specified directory (C<DirectoryId>).


=head2 _request_id => Str


=cut

1;