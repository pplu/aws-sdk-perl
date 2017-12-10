package Paws::Organizations::Policy;
  use Moose;
  has Content => (is => 'ro', isa => 'Str');
  has PolicySummary => (is => 'ro', isa => 'Paws::Organizations::PolicySummary');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::Policy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Organizations::Policy object:

  $service_obj->Method(Att1 => { Content => $value, ..., PolicySummary => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Organizations::Policy object:

  $result = $service_obj->Method(...);
  $result->Att1->Content

=head1 DESCRIPTION

Contains rules to be applied to the affected accounts. Policies can be
attached directly to accounts, or to roots and OUs to affect all
accounts in those hierarchies.

=head1 ATTRIBUTES


=head2 Content => Str

  The text content of the policy.


=head2 PolicySummary => L<Paws::Organizations::PolicySummary>

  A structure that contains additional details about the policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

