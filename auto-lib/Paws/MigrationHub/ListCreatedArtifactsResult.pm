# Generated from json/callresult_class.tt

package Paws::MigrationHub::ListCreatedArtifactsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MigrationHub::Types qw/MigrationHub_CreatedArtifact/;
  has CreatedArtifactList => (is => 'ro', isa => ArrayRef[MigrationHub_CreatedArtifact]);
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
               'CreatedArtifactList' => {
                                          'class' => 'Paws::MigrationHub::CreatedArtifact',
                                          'type' => 'ArrayRef[MigrationHub_CreatedArtifact]'
                                        }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::ListCreatedArtifactsResult

=head1 ATTRIBUTES


=head2 CreatedArtifactList => ArrayRef[MigrationHub_CreatedArtifact]

List of created artifacts up to the maximum number of results specified
in the request.


=head2 NextToken => Str

If there are more created artifacts than the max result, return the
next token to be passed to the next call as a bookmark of where to
start from.


=head2 _request_id => Str


=cut

1;