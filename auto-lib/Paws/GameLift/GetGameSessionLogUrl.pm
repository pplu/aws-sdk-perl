
package Paws::GameLift::GetGameSessionLogUrl;
  use Moose;
  has GameSessionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGameSessionLogUrl');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::GetGameSessionLogUrlOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::GetGameSessionLogUrl - Arguments for method GetGameSessionLogUrl on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetGameSessionLogUrl on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method GetGameSessionLogUrl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetGameSessionLogUrl.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $GetGameSessionLogUrlOutput = $gamelift->GetGameSessionLogUrl(
      GameSessionId => 'MyArnStringModel',

    );

    # Results:
    my $PreSignedUrl = $GetGameSessionLogUrlOutput->PreSignedUrl;

    # Returns a L<Paws::GameLift::GetGameSessionLogUrlOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/GetGameSessionLogUrl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GameSessionId => Str

Unique identifier for the game session to get logs for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetGameSessionLogUrl in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

