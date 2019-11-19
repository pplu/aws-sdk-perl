
package Paws::IoT::ListMitigationActionsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IoT::Types qw/IoT_MitigationActionIdentifier/;
  has ActionIdentifiers => (is => 'ro', isa => ArrayRef[IoT_MitigationActionIdentifier]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'ActionIdentifiers' => 'actionIdentifiers'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ActionIdentifiers' => {
                                        'type' => 'ArrayRef[IoT_MitigationActionIdentifier]',
                                        'class' => 'Paws::IoT::MitigationActionIdentifier'
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

Paws::IoT::ListMitigationActionsResponse

=head1 ATTRIBUTES


=head2 ActionIdentifiers => ArrayRef[IoT_MitigationActionIdentifier]

A set of actions that matched the specified filter criteria.


=head2 NextToken => Str

The token for the next set of results.


=head2 _request_id => Str


=cut

