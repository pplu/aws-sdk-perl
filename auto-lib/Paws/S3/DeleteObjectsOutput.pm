
package Paws::S3::DeleteObjectsOutput;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::S3::Types qw/S3_DeletedObject S3_Error/;
  has Deleted => (is => 'ro', isa => ArrayRef[S3_DeletedObject]);
  has Errors => (is => 'ro', isa => ArrayRef[S3_Error]);
  has RequestCharged => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Errors' => {
                             'type' => 'ArrayRef[S3_Error]',
                             'class' => 'Paws::S3::Error'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RequestCharged' => {
                                     'type' => 'Str'
                                   },
               'Deleted' => {
                              'class' => 'Paws::S3::DeletedObject',
                              'type' => 'ArrayRef[S3_DeletedObject]'
                            }
             },
  'NameInRequest' => {
                       'Errors' => 'Error'
                     },
  'ParamInHeader' => {
                       'RequestCharged' => 'x-amz-request-charged'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::DeleteObjectsOutput

=head1 ATTRIBUTES


=head2 Deleted => ArrayRef[S3_DeletedObject]

Container element for a successful delete. It identifies the object
that was successfully deleted.



=head2 Errors => ArrayRef[S3_Error]

Container for a failed delete operation that describes the object that
Amazon S3 attempted to delete and the error it encountered.



=head2 RequestCharged => Str



Valid values are: C<"requester">


=cut

