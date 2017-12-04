package Paws::CognitoIdp::GroupType;
  use Moose;
  has CreationDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
  has LastModifiedDate => (is => 'ro', isa => 'Str');
  has Precedence => (is => 'ro', isa => 'Int');
  has RoleArn => (is => 'ro', isa => 'Str');
  has UserPoolId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::GroupType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdp::GroupType object:

  $service_obj->Method(Att1 => { CreationDate => $value, ..., UserPoolId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdp::GroupType object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDate

=head1 DESCRIPTION

The group type.

=head1 ATTRIBUTES


=head2 CreationDate => Str

  The date the group was created.


=head2 Description => Str

  A string containing the description of the group.


=head2 GroupName => Str

  The name of the group.


=head2 LastModifiedDate => Str

  The date the group was last modified.


=head2 Precedence => Int

  A nonnegative integer value that specifies the precedence of this group
relative to the other groups that a user can belong to in the user
pool. If a user belongs to two or more groups, it is the group with the
highest precedence whose role ARN will be used in the C<cognito:roles>
and C<cognito:preferred_role> claims in the user's tokens. Groups with
higher C<Precedence> values take precedence over groups with lower
C<Precedence> values or with null C<Precedence> values.

Two groups can have the same C<Precedence> value. If this happens,
neither group takes precedence over the other. If two groups with the
same C<Precedence> have the same role ARN, that role is used in the
C<cognito:preferred_role> claim in tokens for users in each group. If
the two groups have different role ARNs, the C<cognito:preferred_role>
claim is not set in users' tokens.

The default C<Precedence> value is null.


=head2 RoleArn => Str

  The role ARN for the group.


=head2 UserPoolId => Str

  The user pool ID for the user pool.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

