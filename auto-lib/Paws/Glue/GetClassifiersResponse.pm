# Generated from json/callresult_class.tt

package Paws::Glue::GetClassifiersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glue::Types qw/Glue_Classifier/;
  has Classifiers => (is => 'ro', isa => ArrayRef[Glue_Classifier]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Classifiers' => {
                                  'type' => 'ArrayRef[Glue_Classifier]',
                                  'class' => 'Paws::Glue::Classifier'
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

Paws::Glue::GetClassifiersResponse

=head1 ATTRIBUTES


=head2 Classifiers => ArrayRef[Glue_Classifier]

The requested list of classifier objects.


=head2 NextToken => Str

A continuation token.


=head2 _request_id => Str


=cut

1;