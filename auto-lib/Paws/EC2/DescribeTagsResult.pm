
package Paws::EC2::DescribeTagsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::EC2::Types qw/EC2_TagDescription/;
  has NextToken => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[EC2_TagDescription]);

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
               'Tags' => {
                           'class' => 'Paws::EC2::TagDescription',
                           'type' => 'ArrayRef[EC2_TagDescription]'
                         }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Tags' => 'tagSet'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeTagsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 Tags => ArrayRef[EC2_TagDescription]

The tags.


=head2 _request_id => Str


=cut

