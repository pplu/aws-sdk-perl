# Generated from json/callresult_class.tt

package Paws::DeviceFarm::ListArtifactsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DeviceFarm::Types qw/DeviceFarm_Artifact/;
  has Artifacts => (is => 'ro', isa => ArrayRef[DeviceFarm_Artifact]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Artifacts' => {
                                'class' => 'Paws::DeviceFarm::Artifact',
                                'type' => 'ArrayRef[DeviceFarm_Artifact]'
                              },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Artifacts' => 'artifacts',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListArtifactsResult

=head1 ATTRIBUTES


=head2 Artifacts => ArrayRef[DeviceFarm_Artifact]

Information about the artifacts.


=head2 NextToken => Str

If the number of items that are returned is significantly large, this
is an identifier that is also returned, which can be used in a
subsequent call to this operation to return the next set of items in
the list.


=head2 _request_id => Str


=cut

1;