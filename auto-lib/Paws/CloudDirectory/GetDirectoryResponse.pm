
package Paws::CloudDirectory::GetDirectoryResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_Directory/;
  has Directory => (is => 'ro', isa => CloudDirectory_Directory, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Directory' => {
                                'class' => 'Paws::CloudDirectory::Directory',
                                'type' => 'CloudDirectory_Directory'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Directory' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::GetDirectoryResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Directory => CloudDirectory_Directory

Metadata about the directory.


=head2 _request_id => Str


=cut

