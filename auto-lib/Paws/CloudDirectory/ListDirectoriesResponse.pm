
package Paws::CloudDirectory::ListDirectoriesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_Directory/;
  has Directories => (is => 'ro', isa => ArrayRef[CloudDirectory_Directory], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Directories' => {
                                  'class' => 'Paws::CloudDirectory::Directory',
                                  'type' => 'ArrayRef[CloudDirectory_Directory]'
                                }
             },
  'IsRequired' => {
                    'Directories' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListDirectoriesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Directories => ArrayRef[CloudDirectory_Directory]

Lists all directories that are associated with your account in
pagination fashion.


=head2 NextToken => Str

The pagination token.


=head2 _request_id => Str


=cut

