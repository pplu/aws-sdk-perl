# Generated from json/callresult_class.tt

package Paws::DS::AcceptSharedDirectoryResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DS::Types qw/DS_SharedDirectory/;
  has SharedDirectory => (is => 'ro', isa => DS_SharedDirectory);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SharedDirectory' => {
                                      'class' => 'Paws::DS::SharedDirectory',
                                      'type' => 'DS_SharedDirectory'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DS::AcceptSharedDirectoryResult

=head1 ATTRIBUTES


=head2 SharedDirectory => DS_SharedDirectory

The shared directory in the directory consumer account.


=head2 _request_id => Str


=cut

1;