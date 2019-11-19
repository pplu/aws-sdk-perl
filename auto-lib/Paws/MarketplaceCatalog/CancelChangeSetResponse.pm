
package Paws::MarketplaceCatalog::CancelChangeSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MarketplaceCatalog::Types qw//;
  has ChangeSetArn => (is => 'ro', isa => Str);
  has ChangeSetId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ChangeSetId' => {
                                  'type' => 'Str'
                                },
               'ChangeSetArn' => {
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

Paws::MarketplaceCatalog::CancelChangeSetResponse

=head1 ATTRIBUTES


=head2 ChangeSetArn => Str

The ARN associated with the change set referenced in this request.


=head2 ChangeSetId => Str

The unique identifier for the change set referenced in this request.


=head2 _request_id => Str


=cut

