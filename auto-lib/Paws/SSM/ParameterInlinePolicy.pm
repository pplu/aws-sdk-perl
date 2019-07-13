package Paws::SSM::ParameterInlinePolicy;
  use Moose;
  has PolicyStatus => (is => 'ro', isa => 'Str');
  has PolicyText => (is => 'ro', isa => 'Str');
  has PolicyType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ParameterInlinePolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::ParameterInlinePolicy object:

  $service_obj->Method(Att1 => { PolicyStatus => $value, ..., PolicyType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::ParameterInlinePolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->PolicyStatus

=head1 DESCRIPTION

One or more policies assigned to a parameter.

=head1 ATTRIBUTES


=head2 PolicyStatus => Str

  The status of the policy. Policies report the following statuses:
Pending (the policy has not been enforced or applied yet), Finished
(the policy was applied), Failed (the policy was not applied), or
InProgress (the policy is being applied now).


=head2 PolicyText => Str

  The JSON text of the policy.


=head2 PolicyType => Str

  The type of policy. Parameter Store supports the following policy
types: Expiration, ExpirationNotification, and NoChangeNotification.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

