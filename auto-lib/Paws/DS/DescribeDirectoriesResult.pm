# Generated from json/callresult_class.tt

package Paws::DS::DescribeDirectoriesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DS::Types qw/DS_DirectoryDescription/;
  has DirectoryDescriptions => (is => 'ro', isa => ArrayRef[DS_DirectoryDescription]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'DirectoryDescriptions' => {
                                            'class' => 'Paws::DS::DirectoryDescription',
                                            'type' => 'ArrayRef[DS_DirectoryDescription]'
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

Paws::DS::DescribeDirectoriesResult

=head1 ATTRIBUTES


=head2 DirectoryDescriptions => ArrayRef[DS_DirectoryDescription]

The list of DirectoryDescription objects that were retrieved.

It is possible that this list contains less than the number of items
specified in the C<Limit> member of the request. This occurs if there
are less than the requested number of items left to retrieve, or if the
limitations of the operation have been exceeded.


=head2 NextToken => Str

If not null, more results are available. Pass this value for the
C<NextToken> parameter in a subsequent call to DescribeDirectories to
retrieve the next set of items.


=head2 _request_id => Str


=cut

1;