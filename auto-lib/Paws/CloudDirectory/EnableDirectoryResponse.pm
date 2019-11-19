
package Paws::CloudDirectory::EnableDirectoryResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudDirectory::Types qw//;
  has DirectoryArn => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DirectoryArn' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
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

Paws::CloudDirectory::EnableDirectoryResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryArn => Str

The ARN of the enabled directory.


=head2 _request_id => Str


=cut

