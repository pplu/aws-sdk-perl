# Generated from json/callresult_class.tt

package Paws::Discovery::BatchDeleteImportDataResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Discovery::Types qw/Discovery_BatchDeleteImportDataError/;
  has Errors => (is => 'ro', isa => ArrayRef[Discovery_BatchDeleteImportDataError]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Errors' => 'errors'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Errors' => {
                             'type' => 'ArrayRef[Discovery_BatchDeleteImportDataError]',
                             'class' => 'Paws::Discovery::BatchDeleteImportDataError'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Discovery::BatchDeleteImportDataResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[Discovery_BatchDeleteImportDataError]

Error messages returned for each import task that you deleted as a
response for this command.


=head2 _request_id => Str


=cut

1;