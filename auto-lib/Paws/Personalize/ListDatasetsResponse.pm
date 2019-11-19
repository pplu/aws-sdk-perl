# Generated from json/callresult_class.tt

package Paws::Personalize::ListDatasetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Personalize::Types qw/Personalize_DatasetSummary/;
  has Datasets => (is => 'ro', isa => ArrayRef[Personalize_DatasetSummary]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Datasets' => 'datasets'
                     },
  'types' => {
               'Datasets' => {
                               'type' => 'ArrayRef[Personalize_DatasetSummary]',
                               'class' => 'Paws::Personalize::DatasetSummary'
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


### main pod documentation begin ###

=head1 NAME

Paws::Personalize::ListDatasetsResponse

=head1 ATTRIBUTES


=head2 Datasets => ArrayRef[Personalize_DatasetSummary]

An array of C<Dataset> objects. Each object provides metadata
information.


=head2 NextToken => Str

A token for getting the next set of datasets (if they exist).


=head2 _request_id => Str


=cut

1;