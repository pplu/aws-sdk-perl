
package Paws::GameLift::AcceptMatch;
  use Moose;
  has AcceptanceType => (is => 'ro', isa => 'Str', required => 1);
  has PlayerIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has TicketId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AcceptMatch');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::AcceptMatchOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::AcceptMatch - Arguments for method AcceptMatch on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AcceptMatch on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method AcceptMatch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AcceptMatch.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $AcceptMatchOutput = $gamelift->AcceptMatch(
      AcceptanceType => 'ACCEPT',
      PlayerIds      => [
        'MyNonZeroAndMaxString', ...    # min: 1, max: 1024
      ],
      TicketId => 'MyMatchmakingIdStringModel',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/AcceptMatch>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AcceptanceType => Str

Player response to the proposed match.

Valid values are: C<"ACCEPT">, C<"REJECT">

=head2 B<REQUIRED> PlayerIds => ArrayRef[Str|Undef]

Unique identifier for a player delivering the response. This parameter
can include one or multiple player IDs.



=head2 B<REQUIRED> TicketId => Str

Unique identifier for a matchmaking ticket. The ticket must be in
status C<REQUIRES_ACCEPTANCE>; otherwise this request will fail.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AcceptMatch in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

