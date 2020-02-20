package Paws::SecurityHub::AwsWafWebAclDetails;
  use Moose;
  has DefaultAction => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AwsWafWebAclRule]');
  has WebAclId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::AwsWafWebAclDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::AwsWafWebAclDetails object:

  $service_obj->Method(Att1 => { DefaultAction => $value, ..., WebAclId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::AwsWafWebAclDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultAction

=head1 DESCRIPTION

Details about a WAF WebACL.

=head1 ATTRIBUTES


=head2 DefaultAction => Str

  The action to perform if none of the Rules contained in the WebACL
match.


=head2 Name => Str

  A friendly name or description of the WebACL. You can't change the name
of a WebACL after you create it.


=head2 Rules => ArrayRef[L<Paws::SecurityHub::AwsWafWebAclRule>]

  An array that contains the action for each rule in a WebACL, the
priority of the rule, and the ID of the rule.


=head2 WebAclId => Str

  A unique identifier for a WebACL.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

