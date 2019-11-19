# Generated from json/callresult_class.tt

package Paws::AppStream::DescribeImageBuildersResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AppStream::Types qw/AppStream_ImageBuilder/;
  has ImageBuilders => (is => 'ro', isa => ArrayRef[AppStream_ImageBuilder]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ImageBuilders' => {
                                    'type' => 'ArrayRef[AppStream_ImageBuilder]',
                                    'class' => 'Paws::AppStream::ImageBuilder'
                                  },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeImageBuildersResult

=head1 ATTRIBUTES


=head2 ImageBuilders => ArrayRef[AppStream_ImageBuilder]

Information about the image builders.


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 _request_id => Str


=cut

1;