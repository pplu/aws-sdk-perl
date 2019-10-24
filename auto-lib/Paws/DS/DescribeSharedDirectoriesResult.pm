# Generated from json/callresult_class.tt

package Paws::DS::DescribeSharedDirectoriesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DS::Types qw/DS_SharedDirectory/;
  has NextToken => (is => 'ro', isa => Str);
  has SharedDirectories => (is => 'ro', isa => ArrayRef[DS_SharedDirectory]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SharedDirectories' => {
                                        'class' => 'Paws::DS::SharedDirectory',
                                        'type' => 'ArrayRef[DS_SharedDirectory]'
                                      },
               'NextToken' => {
                                'type' => 'Str'
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

Paws::DS::DescribeSharedDirectoriesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If not null, token that indicates that more results are available. Pass
this value for the C<NextToken> parameter in a subsequent call to
DescribeSharedDirectories to retrieve the next set of items.


=head2 SharedDirectories => ArrayRef[DS_SharedDirectory]

A list of all shared directories in your account.


=head2 _request_id => Str


=cut

1;