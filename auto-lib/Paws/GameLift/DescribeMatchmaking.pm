
package Paws::GameLift::DescribeMatchmaking;
  use Moose;
  has TicketIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeMatchmaking');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DescribeMatchmakingOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeMatchmaking - Arguments for method DescribeMatchmaking on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeMatchmaking on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DescribeMatchmaking.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeMatchmaking.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $DescribeMatchmakingOutput = $gamelift->DescribeMatchmaking(
      TicketIds => [
        'MyMatchmakingIdStringModel', ...    # min: 1, max: 128
      ],

    );

    # Results:
    my $TicketList = $DescribeMatchmakingOutput->TicketList;

    # Returns a L<Paws::GameLift::DescribeMatchmakingOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DescribeMatchmaking>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TicketIds => ArrayRef[Str|Undef]

Unique identifier for a matchmaking ticket. You can include up to 10 ID
values.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeMatchmaking in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

