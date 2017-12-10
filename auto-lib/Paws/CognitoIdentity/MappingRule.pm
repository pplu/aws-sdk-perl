package Paws::CognitoIdentity::MappingRule;
  use Moose;
  has Claim => (is => 'ro', isa => 'Str', required => 1);
  has MatchType => (is => 'ro', isa => 'Str', required => 1);
  has RoleARN => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::MappingRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdentity::MappingRule object:

  $service_obj->Method(Att1 => { Claim => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdentity::MappingRule object:

  $result = $service_obj->Method(...);
  $result->Att1->Claim

=head1 DESCRIPTION

A rule that maps a claim name, a claim value, and a match type to a
role ARN.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Claim => Str

  The claim name that must be present in the token, for example,
"isAdmin" or "paid".


=head2 B<REQUIRED> MatchType => Str

  The match condition that specifies how closely the claim value in the
IdP token must match C<Value>.


=head2 B<REQUIRED> RoleARN => Str

  The role ARN.


=head2 B<REQUIRED> Value => Str

  A brief string that the claim must match, for example, "paid" or "yes".



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

