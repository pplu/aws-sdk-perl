# Generated from json/callresult_class.tt

package Paws::AppStream::DescribeDirectoryConfigsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AppStream::Types qw/AppStream_DirectoryConfig/;
  has DirectoryConfigs => (is => 'ro', isa => ArrayRef[AppStream_DirectoryConfig]);
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
               'DirectoryConfigs' => {
                                       'class' => 'Paws::AppStream::DirectoryConfig',
                                       'type' => 'ArrayRef[AppStream_DirectoryConfig]'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeDirectoryConfigsResult

=head1 ATTRIBUTES


=head2 DirectoryConfigs => ArrayRef[AppStream_DirectoryConfig]

Information about the directory configurations. Note that although the
response syntax in this topic includes the account password, this
password is not returned in the actual response.


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 _request_id => Str


=cut

1;