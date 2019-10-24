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
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Datasets' => {
                               'class' => 'Paws::Personalize::DatasetSummary',
                               'type' => 'ArrayRef[Personalize_DatasetSummary]'
                             }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Datasets' => 'datasets'
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