# Generated from json/callresult_class.tt

package Paws::ECR::ListImagesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::ECR::Types qw/ECR_ImageIdentifier/;
  has ImageIds => (is => 'ro', isa => ArrayRef[ECR_ImageIdentifier]);
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
               'ImageIds' => {
                               'class' => 'Paws::ECR::ImageIdentifier',
                               'type' => 'ArrayRef[ECR_ImageIdentifier]'
                             }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ImageIds' => 'imageIds'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ECR::ListImagesResponse

=head1 ATTRIBUTES


=head2 ImageIds => ArrayRef[ECR_ImageIdentifier]

The list of image IDs for the requested repository.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListImages> request.
When the results of a C<ListImages> request exceed C<maxResults>, this
value can be used to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

1;