
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
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Errors' => {
                             'class' => 'Paws::S3::Error',
                             'type' => 'ArrayRef[S3_Error]'
                           },
               'Deleted' => {
                              'class' => 'Paws::S3::DeletedObject',
                              'type' => 'ArrayRef[S3_DeletedObject]'
                            },
               'RequestCharged' => {
                                     'type' => 'Str'
                                   }
             },
  'ParamInHeader' => {
                       'RequestCharged' => 'x-amz-request-charged'
                     },
  'NameInRequest' => {
                       'Errors' => 'Error'
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





=head2 Errors => ArrayRef[S3_Error]





=head2 RequestCharged => Str



Valid values are: C<"requester">


=cut

