
package Paws::GameLift::DescribeScript;
  use Moose;
  has ScriptId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeScript');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DescribeScriptOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeScript - Arguments for method DescribeScript on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeScript on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DescribeScript.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeScript.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $DescribeScriptOutput = $gamelift->DescribeScript(
      ScriptId => 'MyScriptId',

    );

    # Results:
    my $Script = $DescribeScriptOutput->Script;

    # Returns a L<Paws::GameLift::DescribeScriptOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DescribeScript>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScriptId => Str

A unique identifier for a Realtime script to retrieve properties for.
You can use either the script ID or ARN value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeScript in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

