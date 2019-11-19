# Generated from json/callresult_class.tt

package Paws::Macie::UpdateS3ResourcesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Macie::Types qw/Macie_FailedS3Resource/;
  has FailedS3Resources => (is => 'ro', isa => ArrayRef[Macie_FailedS3Resource]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FailedS3Resources' => {
                                        'type' => 'ArrayRef[Macie_FailedS3Resource]',
                                        'class' => 'Paws::Macie::FailedS3Resource'
                                      },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'FailedS3Resources' => 'failedS3Resources'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Macie::UpdateS3ResourcesResult

=head1 ATTRIBUTES


=head2 FailedS3Resources => ArrayRef[Macie_FailedS3Resource]

The S3 resources whose classification types can't be updated. An error
code and an error message are provided for each failed item.


=head2 _request_id => Str


=cut

1;