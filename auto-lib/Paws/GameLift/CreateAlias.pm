
package Paws::GameLift::CreateAlias;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RoutingStrategy => (is => 'ro', isa => 'Paws::GameLift::RoutingStrategy', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAlias');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::CreateAliasOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateAlias - Arguments for method CreateAlias on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAlias on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method CreateAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAlias.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $CreateAliasOutput = $gamelift->CreateAlias(
      Name            => 'MyNonBlankAndLengthConstraintString',
      RoutingStrategy => {
        FleetId => 'MyFleetId',     # OPTIONAL
        Message => 'MyFreeText',    # OPTIONAL
        Type    => 'SIMPLE',        # values: SIMPLE, TERMINAL; OPTIONAL
      },
      Description => 'MyNonZeroAndMaxString',    # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',                   # min: 1, max: 128
          Value => 'MyTagValue',                 # max: 256

        },
        ...
      ],                                         # OPTIONAL
    );

    # Results:
    my $Alias = $CreateAliasOutput->Alias;

    # Returns a L<Paws::GameLift::CreateAliasOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/CreateAlias>

=head1 ATTRIBUTES


=head2 Description => Str

A human-readable description of the alias.



=head2 B<REQUIRED> Name => Str

A descriptive label that is associated with an alias. Alias names do
not need to be unique.



=head2 B<REQUIRED> RoutingStrategy => L<Paws::GameLift::RoutingStrategy>

The routing configuration, including routing type and fleet target, for
the alias.



=head2 Tags => ArrayRef[L<Paws::GameLift::Tag>]

A list of labels to assign to the new alias resource. Tags are
developer-defined key-value pairs. Tagging AWS resources are useful for
resource management, access management and cost allocation. For more
information, see Tagging AWS Resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in the
I<AWS General Reference>. Once the resource is created, you can use
TagResource, UntagResource, and ListTagsForResource to add, remove, and
view tags. The maximum tag limit may be lower than stated. See the AWS
General Reference for actual tagging limits.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAlias in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

