
package Paws::CognitoSync::ListDatasetsResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::CognitoSync::Types qw/CognitoSync_Dataset/;
  has Count => (is => 'ro', isa => Int);
  has Datasets => (is => 'ro', isa => ArrayRef[CognitoSync_Dataset]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Count' => {
                            'type' => 'Int'
                          },
               'Datasets' => {
                               'type' => 'ArrayRef[CognitoSync_Dataset]',
                               'class' => 'Paws::CognitoSync::Dataset'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
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

Paws::CognitoSync::ListDatasetsResponse

=head1 ATTRIBUTES


=head2 Count => Int

Number of datasets returned.


=head2 Datasets => ArrayRef[CognitoSync_Dataset]

A set of datasets.


=head2 NextToken => Str

A pagination token for obtaining the next page of results.


=head2 _request_id => Str


=cut

