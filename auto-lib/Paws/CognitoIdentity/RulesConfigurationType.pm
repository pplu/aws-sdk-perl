package Paws::CognitoIdentity::RulesConfigurationType;
  use Moose;
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::CognitoIdentity::MappingRule]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::RulesConfigurationType

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CognitoIdentity::RulesConfigurationType object:

  $service_obj->Method(Att1 => { Rules => $value, ..., Rules => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CognitoIdentity::RulesConfigurationType object:

  $result = $service_obj->Method(...);
  $result->Att1->Rules

=head1 DESCRIPTION

A container for rules.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Rules => ArrayRef[L<Paws::CognitoIdentity::MappingRule>]

  An array of rules. You can specify up to 25 rules per identity
provider.

Rules are evaluated in order. The first one to match specifies the
role.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CognitoIdentity>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

