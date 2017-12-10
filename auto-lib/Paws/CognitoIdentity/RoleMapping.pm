package Paws::CognitoIdentity::RoleMapping;
  use Moose;
  has AmbiguousRoleResolution => (is => 'ro', isa => 'Str');
  has RulesConfiguration => (is => 'ro', isa => 'Paws::CognitoIdentity::RulesConfigurationType');
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::RoleMapping

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdentity::RoleMapping object:

  $service_obj->Method(Att1 => { AmbiguousRoleResolution => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdentity::RoleMapping object:

  $result = $service_obj->Method(...);
  $result->Att1->AmbiguousRoleResolution

=head1 DESCRIPTION

A role mapping.

=head1 ATTRIBUTES


=head2 AmbiguousRoleResolution => Str

  If you specify Token or Rules as the C<Type>,
C<AmbiguousRoleResolution> is required.

Specifies the action to be taken if either no rules match the claim
value for the C<Rules> type, or there is no C<cognito:preferred_role>
claim and there are multiple C<cognito:roles> matches for the C<Token>
type.


=head2 RulesConfiguration => L<Paws::CognitoIdentity::RulesConfigurationType>

  The rules to be used for mapping users to roles.

If you specify Rules as the role mapping type, C<RulesConfiguration> is
required.


=head2 B<REQUIRED> Type => Str

  The role mapping type. Token will use C<cognito:roles> and
C<cognito:preferred_role> claims from the Cognito identity provider
token to map groups to roles. Rules will attempt to match claims from
the token to map to a role.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

