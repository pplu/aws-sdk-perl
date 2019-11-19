
package Paws::Backup::ListRecoveryPointsByResourceOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Backup::Types qw/Backup_RecoveryPointByResource/;
  has NextToken => (is => 'ro', isa => Str);
  has RecoveryPoints => (is => 'ro', isa => ArrayRef[Backup_RecoveryPointByResource]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'RecoveryPoints' => {
                                     'class' => 'Paws::Backup::RecoveryPointByResource',
                                     'type' => 'ArrayRef[Backup_RecoveryPointByResource]'
                                   },
               'NextToken' => {
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

Paws::Backup::ListRecoveryPointsByResourceOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

The next item following a partial list of returned items. For example,
if a request is made to return C<maxResults> number of items,
C<NextToken> allows you to return more items in your list starting at
the location pointed to by the next token.


=head2 RecoveryPoints => ArrayRef[Backup_RecoveryPointByResource]

An array of objects that contain detailed information about recovery
points of the specified resource type.


=head2 _request_id => Str


=cut

