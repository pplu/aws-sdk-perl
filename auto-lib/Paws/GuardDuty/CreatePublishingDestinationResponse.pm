
package Paws::GuardDuty::CreatePublishingDestinationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GuardDuty::Types qw//;
  has DestinationId => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'DestinationId' => {
                                    'type' => 'Str'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'DestinationId' => 'destinationId'
                     },
  'IsRequired' => {
                    'DestinationId' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::CreatePublishingDestinationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationId => Str

The ID of the publishing destination created.


=head2 _request_id => Str


=cut

