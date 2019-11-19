
package Paws::CloudDirectory::BatchWriteResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_BatchWriteOperationResponse/;
  has Responses => (is => 'ro', isa => ArrayRef[CloudDirectory_BatchWriteOperationResponse]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Responses' => {
                                'type' => 'ArrayRef[CloudDirectory_BatchWriteOperationResponse]',
                                'class' => 'Paws::CloudDirectory::BatchWriteOperationResponse'
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

Paws::CloudDirectory::BatchWriteResponse

=head1 ATTRIBUTES


=head2 Responses => ArrayRef[CloudDirectory_BatchWriteOperationResponse]

A list of all the responses for each batch write.


=head2 _request_id => Str


=cut

