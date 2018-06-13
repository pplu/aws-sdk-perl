
package Paws::GameLift::UpdateBuild;
  use Moose;
  has BuildId => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has Version => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBuild');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::UpdateBuildOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::UpdateBuild - Arguments for method UpdateBuild on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBuild on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method UpdateBuild.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBuild.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $UpdateBuildOutput = $gamelift->UpdateBuild(
      BuildId => 'MyBuildId',
      Name    => 'MyNonZeroAndMaxString',    # OPTIONAL
      Version => 'MyNonZeroAndMaxString',    # OPTIONAL
    );

    # Results:
    my $Build = $UpdateBuildOutput->Build;

    # Returns a L<Paws::GameLift::UpdateBuildOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/UpdateBuild>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BuildId => Str

Unique identifier for a build to update.



=head2 Name => Str

Descriptive label that is associated with a build. Build names do not
need to be unique.



=head2 Version => Str

Version that is associated with this build. Version strings do not need
to be unique.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBuild in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

