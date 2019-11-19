# Generated from json/callresult_class.tt

package Paws::Macie::AssociateS3ResourcesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Macie::Types qw/Macie_FailedS3Resource/;
  has FailedS3Resources => (is => 'ro', isa => ArrayRef[Macie_FailedS3Resource]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'FailedS3Resources' => 'failedS3Resources'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'FailedS3Resources' => {
                                        'class' => 'Paws::Macie::FailedS3Resource',
                                        'type' => 'ArrayRef[Macie_FailedS3Resource]'
                                      }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Macie::AssociateS3ResourcesResult

=head1 ATTRIBUTES


=head2 FailedS3Resources => ArrayRef[Macie_FailedS3Resource]

S3 resources that couldn't be associated with Amazon Macie. An error
code and an error message are provided for each failed item.


=head2 _request_id => Str


=cut

1;