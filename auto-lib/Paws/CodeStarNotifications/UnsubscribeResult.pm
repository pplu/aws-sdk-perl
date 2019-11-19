
package Paws::CodeStarNotifications::UnsubscribeResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeStarNotifications::Types qw//;
  has Arn => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Arn' => {
                          'type' => 'Str'
                        },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Arn' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarNotifications::UnsubscribeResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the the notification rule from which
you have removed a subscription.


=head2 _request_id => Str


=cut

