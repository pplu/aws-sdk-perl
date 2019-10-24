# Generated from json/callresult_class.tt

package Paws::AppStream::DescribeImagesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AppStream::Types qw/AppStream_Image/;
  has Images => (is => 'ro', isa => ArrayRef[AppStream_Image]);
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
               'Images' => {
                             'class' => 'Paws::AppStream::Image',
                             'type' => 'ArrayRef[AppStream_Image]'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeImagesResult

=head1 ATTRIBUTES


=head2 Images => ArrayRef[AppStream_Image]

Information about the images.


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 _request_id => Str


=cut

1;