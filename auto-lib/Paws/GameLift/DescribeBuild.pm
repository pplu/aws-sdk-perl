
package Paws::GameLift::DescribeBuild;
  use Moose;
  has BuildId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeBuild');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DescribeBuildOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeBuild - Arguments for method DescribeBuild on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeBuild on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DescribeBuild.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeBuild.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $DescribeBuildOutput = $gamelift->DescribeBuild(
      BuildId => 'MyBuildIdOrArn',

    );

    # Results:
    my $Build = $DescribeBuildOutput->Build;

    # Returns a L<Paws::GameLift::DescribeBuildOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DescribeBuild>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BuildId => Str

A unique identifier for the build to retrieve properties for. You can
use either the build ID or ARN value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeBuild in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

