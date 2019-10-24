# Generated from json/callresult_class.tt

package Paws::Glue::GetClassifierResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_Classifier/;
  has Classifier => (is => 'ro', isa => Glue_Classifier);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Classifier' => {
                                 'class' => 'Paws::Glue::Classifier',
                                 'type' => 'Glue_Classifier'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetClassifierResponse

=head1 ATTRIBUTES


=head2 Classifier => Glue_Classifier

The requested classifier.


=head2 _request_id => Str


=cut

1;