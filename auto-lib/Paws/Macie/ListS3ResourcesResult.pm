# Generated from json/callresult_class.tt

package Paws::Macie::ListS3ResourcesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Macie::Types qw/Macie_S3ResourceClassification/;
  has NextToken => (is => 'ro', isa => Str);
  has S3Resources => (is => 'ro', isa => ArrayRef[Macie_S3ResourceClassification]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'S3Resources' => 's3Resources'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'S3Resources' => {
                                  'type' => 'ArrayRef[Macie_S3ResourceClassification]',
                                  'class' => 'Paws::Macie::S3ResourceClassification'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Macie::ListS3ResourcesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

When a response is generated, if there is more data to be listed, this
parameter is present in the response and contains the value to use for
the nextToken parameter in a subsequent pagination request. If there is
no more data to be listed, this parameter is set to null.


=head2 S3Resources => ArrayRef[Macie_S3ResourceClassification]

A list of the associated S3 resources returned by the action.


=head2 _request_id => Str


=cut

1;