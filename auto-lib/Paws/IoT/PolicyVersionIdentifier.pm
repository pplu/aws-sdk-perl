package Paws::IoT::PolicyVersionIdentifier;
  use Moose;
  has PolicyName => (is => 'ro', isa => 'Str', request_name => 'policyName', traits => ['NameInRequest']);
  has PolicyVersionId => (is => 'ro', isa => 'Str', request_name => 'policyVersionId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::PolicyVersionIdentifier

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::PolicyVersionIdentifier object:

  $service_obj->Method(Att1 => { PolicyName => $value, ..., PolicyVersionId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::PolicyVersionIdentifier object:

  $result = $service_obj->Method(...);
  $result->Att1->PolicyName

=head1 DESCRIPTION

Information about the version of the policy associated with the
resource.

=head1 ATTRIBUTES


=head2 PolicyName => Str

  The name of the policy.


=head2 PolicyVersionId => Str

  The ID of the version of the policy associated with the resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

