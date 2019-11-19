
package Paws::MarketplaceCatalog::StartChangeSetResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MarketplaceCatalog::Types qw//;
  has ChangeSetArn => (is => 'ro', isa => Str);
  has ChangeSetId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ChangeSetId' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
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

Paws::MarketplaceCatalog::StartChangeSetResponse

=head1 ATTRIBUTES


=head2 ChangeSetArn => Str

The ARN associated to the unique identifier generated for the request.


=head2 ChangeSetId => Str

Unique identifier generated for the request.


=head2 _request_id => Str


=cut

