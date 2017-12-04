package Paws::STS::FederatedUser;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has FederatedUserId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::STS::FederatedUser

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::STS::FederatedUser object:

  $service_obj->Method(Att1 => { Arn => $value, ..., FederatedUserId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::STS::FederatedUser object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Identifiers for the federated user that is associated with the
credentials.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The ARN that specifies the federated user that is associated with the
credentials. For more information about ARNs and how to use them in
policies, see IAM Identifiers
(http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html)
in I<Using IAM>.


=head2 B<REQUIRED> FederatedUserId => Str

  The string that identifies the federated user associated with the
credentials, similar to the unique ID of an IAM user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::STS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

