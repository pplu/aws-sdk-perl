
package Paws::CodePipeline::GetActionType;
  use Moose;
  has Category => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'category' , required => 1);
  has Owner => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'owner' , required => 1);
  has Provider => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'provider' , required => 1);
  has Version => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'version' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetActionType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodePipeline::GetActionTypeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::GetActionType - Arguments for method GetActionType on L<Paws::CodePipeline>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetActionType on the
L<AWS CodePipeline|Paws::CodePipeline> service. Use the attributes of this class
as arguments to method GetActionType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetActionType.

=head1 SYNOPSIS

    my $codepipeline = Paws->service('CodePipeline');
    my $GetActionTypeOutput = $codepipeline->GetActionType(
      Category => 'Source',
      Owner    => 'MyActionTypeOwner',
      Provider => 'MyActionProvider',
      Version  => 'MyVersion',

    );

    # Results:
    my $ActionType = $GetActionTypeOutput->ActionType;

    # Returns a L<Paws::CodePipeline::GetActionTypeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codepipeline/GetActionType>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Category => Str

Defines what kind of action can be taken in the stage. The following
are the valid values:

=over

=item *

C<Source>

=item *

C<Build>

=item *

C<Test>

=item *

C<Deploy>

=item *

C<Approval>

=item *

C<Invoke>

=back


Valid values are: C<"Source">, C<"Build">, C<"Deploy">, C<"Test">, C<"Invoke">, C<"Approval">

=head2 B<REQUIRED> Owner => Str

The creator of an action type that was created with any supported
integration model. There are two valid values: C<AWS> and
C<ThirdParty>.



=head2 B<REQUIRED> Provider => Str

The provider of the action type being called. The provider name is
specified when the action type is created.



=head2 B<REQUIRED> Version => Str

A string that describes the action type version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetActionType in L<Paws::CodePipeline>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

