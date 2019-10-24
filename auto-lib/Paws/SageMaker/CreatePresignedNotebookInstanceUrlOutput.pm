# Generated from json/callresult_class.tt

package Paws::SageMaker::CreatePresignedNotebookInstanceUrlOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SageMaker::Types qw//;
  has AuthorizedUrl => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AuthorizedUrl' => {
                                    'type' => 'Str'
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

Paws::SageMaker::CreatePresignedNotebookInstanceUrlOutput

=head1 ATTRIBUTES


=head2 AuthorizedUrl => Str

A JSON object that contains the URL string.


=head2 _request_id => Str


=cut

1;