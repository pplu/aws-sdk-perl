# Generated from json/callresult_class.tt

package Paws::WorkSpaces::ImportWorkspaceImageResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::WorkSpaces::Types qw//;
  has ImageId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ImageId' => {
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

Paws::WorkSpaces::ImportWorkspaceImageResult

=head1 ATTRIBUTES


=head2 ImageId => Str

The identifier of the WorkSpace image.


=head2 _request_id => Str


=cut

1;