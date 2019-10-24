# Generated from json/callresult_class.tt

package Paws::MigrationHub::ListDiscoveredResourcesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MigrationHub::Types qw/MigrationHub_DiscoveredResource/;
  has DiscoveredResourceList => (is => 'ro', isa => ArrayRef[MigrationHub_DiscoveredResource]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'DiscoveredResourceList' => {
                                             'class' => 'Paws::MigrationHub::DiscoveredResource',
                                             'type' => 'ArrayRef[MigrationHub_DiscoveredResource]'
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

Paws::MigrationHub::ListDiscoveredResourcesResult

=head1 ATTRIBUTES


=head2 DiscoveredResourceList => ArrayRef[MigrationHub_DiscoveredResource]

Returned list of discovered resources associated with the given
MigrationTask.


=head2 NextToken => Str

If there are more discovered resources than the max result, return the
next token to be passed to the next call as a bookmark of where to
start from.


=head2 _request_id => Str


=cut

1;