# Generated from json/callresult_class.tt

package Paws::ECR::DescribeImagesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECR::Types qw/ECR_ImageDetail/;
  has ImageDetails => (is => 'ro', isa => ArrayRef[ECR_ImageDetail]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ImageDetails' => {
                                   'type' => 'ArrayRef[ECR_ImageDetail]',
                                   'class' => 'Paws::ECR::ImageDetail'
                                 },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'NameInRequest' => {
                       'ImageDetails' => 'imageDetails',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECR::DescribeImagesResponse

=head1 ATTRIBUTES


=head2 ImageDetails => ArrayRef[ECR_ImageDetail]

A list of ImageDetail objects that contain data about the image.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<DescribeImages>
request. When the results of a C<DescribeImages> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 _request_id => Str


=cut

1;