# Generated from json/callresult_class.tt

package Paws::FSX::DescribeFileSystemsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::FSX::Types qw/FSX_FileSystem/;
  has FileSystems => (is => 'ro', isa => ArrayRef[FSX_FileSystem]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'FileSystems' => {
                                  'class' => 'Paws::FSX::FileSystem',
                                  'type' => 'ArrayRef[FSX_FileSystem]'
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

Paws::FSX::DescribeFileSystemsResponse

=head1 ATTRIBUTES


=head2 FileSystems => ArrayRef[FSX_FileSystem]

An array of file system descriptions.


=head2 NextToken => Str

Present if there are more file systems than returned in the response
(String). You can use the C<NextToken> value in the later request to
fetch the descriptions.


=head2 _request_id => Str


=cut

1;