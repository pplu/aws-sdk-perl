
package Paws::Greengrass::ListLoggerDefinitionVersionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Greengrass::Types qw/Greengrass_VersionInformation/;
  has NextToken => (is => 'ro', isa => Str);
  has Versions => (is => 'ro', isa => ArrayRef[Greengrass_VersionInformation]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Versions' => {
                               'class' => 'Paws::Greengrass::VersionInformation',
                               'type' => 'ArrayRef[Greengrass_VersionInformation]'
                             },
               'NextToken' => {
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

1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ListLoggerDefinitionVersionsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token for the next set of results, or ''null'' if there are no
additional results.


=head2 Versions => ArrayRef[Greengrass_VersionInformation]

Information about a version.


=head2 _request_id => Str


=cut

