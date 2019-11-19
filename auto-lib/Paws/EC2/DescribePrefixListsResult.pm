
package Paws::EC2::DescribePrefixListsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_PrefixList/;
  has NextToken => (is => 'ro', isa => Str);
  has PrefixLists => (is => 'ro', isa => ArrayRef[EC2_PrefixList]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'PrefixLists' => 'prefixListSet',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'PrefixLists' => {
                                  'type' => 'ArrayRef[EC2_PrefixList]',
                                  'class' => 'Paws::EC2::PrefixList'
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

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribePrefixListsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 PrefixLists => ArrayRef[EC2_PrefixList]

All available prefix lists.


=head2 _request_id => Str


=cut

