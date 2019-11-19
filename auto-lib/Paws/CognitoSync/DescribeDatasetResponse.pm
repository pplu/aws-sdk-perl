
package Paws::CognitoSync::DescribeDatasetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoSync::Types qw/CognitoSync_Dataset/;
  has Dataset => (is => 'ro', isa => CognitoSync_Dataset);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Dataset' => {
                              'type' => 'CognitoSync_Dataset',
                              'class' => 'Paws::CognitoSync::Dataset'
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

Paws::CognitoSync::DescribeDatasetResponse

=head1 ATTRIBUTES


=head2 Dataset => CognitoSync_Dataset

Meta data for a collection of data for an identity. An identity can
have multiple datasets. A dataset can be general or associated with a
particular entity in an application (like a saved game). Datasets are
automatically created if they don't exist. Data is synced by dataset,
and a dataset can hold up to 1MB of key-value pairs.


=head2 _request_id => Str


=cut

