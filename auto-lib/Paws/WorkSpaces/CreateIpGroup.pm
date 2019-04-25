
package Paws::WorkSpaces::CreateIpGroup;
  use Moose;
  has GroupDesc => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has UserRules => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::IpRuleItem]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIpGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::CreateIpGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::CreateIpGroup - Arguments for method CreateIpGroup on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIpGroup on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method CreateIpGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIpGroup.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $CreateIpGroupResult = $workspaces->CreateIpGroup(
      GroupName => 'MyIpGroupName',
      GroupDesc => 'MyIpGroupDesc',    # OPTIONAL
      UserRules => [
        {
          IpRule   => 'MyIpRule',        # OPTIONAL
          RuleDesc => 'MyIpRuleDesc',    # OPTIONAL
        },
        ...
      ],                                 # OPTIONAL
    );

    # Results:
    my $GroupId = $CreateIpGroupResult->GroupId;

    # Returns a L<Paws::WorkSpaces::CreateIpGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/CreateIpGroup>

=head1 ATTRIBUTES


=head2 GroupDesc => Str

The description of the group.



=head2 B<REQUIRED> GroupName => Str

The name of the group.



=head2 UserRules => ArrayRef[L<Paws::WorkSpaces::IpRuleItem>]

The rules to add to the group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIpGroup in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

