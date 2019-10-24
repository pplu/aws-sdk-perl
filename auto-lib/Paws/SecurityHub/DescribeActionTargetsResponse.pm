
package Paws::SecurityHub::DescribeActionTargetsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SecurityHub::Types qw/SecurityHub_ActionTarget/;
  has ActionTargets => (is => 'ro', isa => ArrayRef[SecurityHub_ActionTarget], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'ActionTargets' => {
                                    'class' => 'Paws::SecurityHub::ActionTarget',
                                    'type' => 'ArrayRef[SecurityHub_ActionTarget]'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ActionTargets' => 1
                  }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::DescribeActionTargetsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionTargets => ArrayRef[SecurityHub_ActionTarget]

A list of C<ActionTarget> objects. Each object includes the
C<ActionTargetArn>, C<Description>, and C<Name> of a custom action
target available in Security Hub.


=head2 NextToken => Str

The token that is required for pagination.


=head2 _request_id => Str


=cut

