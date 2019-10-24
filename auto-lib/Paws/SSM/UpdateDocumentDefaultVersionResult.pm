# Generated from json/callresult_class.tt

package Paws::SSM::UpdateDocumentDefaultVersionResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SSM::Types qw/SSM_DocumentDefaultVersionDescription/;
  has Description => (is => 'ro', isa => SSM_DocumentDefaultVersionDescription);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Description' => {
                                  'class' => 'Paws::SSM::DocumentDefaultVersionDescription',
                                  'type' => 'SSM_DocumentDefaultVersionDescription'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateDocumentDefaultVersionResult

=head1 ATTRIBUTES


=head2 Description => SSM_DocumentDefaultVersionDescription

The description of a custom document that you want to set as the
default version.


=head2 _request_id => Str


=cut

1;