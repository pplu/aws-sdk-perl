
package Paws::CognitoIdp::CreateGroup;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has Precedence => (is => 'ro', isa => 'Int');
  has RoleArn => (is => 'ro', isa => 'Str');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::CreateGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::CreateGroup - Arguments for method CreateGroup on Paws::CognitoIdp

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGroup on the 
Amazon Cognito Identity Provider service. Use the attributes of this class
as arguments to method CreateGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGroup.

As an example:

  $service_obj->CreateGroup(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Description => Str

A string containing the description of the group.



=head2 B<REQUIRED> GroupName => Str

The name of the group. Must be unique.



=head2 Precedence => Int

A nonnegative integer value that specifies the precedence of this group
relative to the other groups that a user can belong to in the user
pool. Zero is the highest precedence value. Groups with lower
C<Precedence> values take precedence over groups with higher or null
C<Precedence> values. If a user belongs to two or more groups, it is
the group with the lowest precedence value whose role ARN will be used
in the C<cognito:roles> and C<cognito:preferred_role> claims in the
user's tokens.

Two groups can have the same C<Precedence> value. If this happens,
neither group takes precedence over the other. If two groups with the
same C<Precedence> have the same role ARN, that role is used in the
C<cognito:preferred_role> claim in tokens for users in each group. If
the two groups have different role ARNs, the C<cognito:preferred_role>
claim is not set in users' tokens.

The default C<Precedence> value is null.



=head2 RoleArn => Str

The role ARN for the group.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for the user pool.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGroup in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

