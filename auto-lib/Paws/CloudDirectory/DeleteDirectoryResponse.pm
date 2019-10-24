
package Paws::CloudDirectory::DeleteDirectoryResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudDirectory::Types qw//;
  has DirectoryArn => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DirectoryArn' => {
                                   'type' => 'Str'
                                 }
             },
  'IsRequired' => {
                    'DirectoryArn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::DeleteDirectoryResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryArn => Str

The ARN of the deleted directory.


=head2 _request_id => Str


=cut

