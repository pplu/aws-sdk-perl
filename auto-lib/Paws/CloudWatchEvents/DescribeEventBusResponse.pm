# Generated from json/callresult_class.tt

package Paws::CloudWatchEvents::DescribeEventBusResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudWatchEvents::Types qw//;
  has Arn => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Policy => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Policy' => {
                             'type' => 'Str'
                           },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Name' => {
                           'type' => 'Str'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::DescribeEventBusResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the account permitted to write events
to the current account.


=head2 Name => Str

The name of the event bus. Currently, this is always C<default>.


=head2 Policy => Str

The policy that enables the external account to send events to your
account.


=head2 _request_id => Str


=cut

1;