package Paws::IAM::PolicyDetail;
  use Moose;
  has PolicyDocument => (is => 'ro', isa => 'Str', decode_as => 'URLJSON', method => 'Policy', traits => ['JSONAttribute']);
  has PolicyName => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::PolicyDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::PolicyDetail object:

  $service_obj->Method(Att1 => { PolicyDocument => $value, ..., PolicyName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::PolicyDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->PolicyDocument

=head1 DESCRIPTION

Contains information about an IAM policy, including the policy
document.

This data type is used as a response element in the
GetAccountAuthorizationDetails operation.

=head1 ATTRIBUTES


=head2 PolicyDocument => Str

  The policy document.


=head2 PolicyName => Str

  The name of the policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

