package Paws::S3::Initiator;
  use Moose;
  has DisplayName => (is => 'ro', isa => 'Str');
  has ID => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::Initiator

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::Initiator object:

  $service_obj->Method(Att1 => { DisplayName => $value, ..., ID => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::Initiator object:

  $result = $service_obj->Method(...);
  $result->Att1->DisplayName

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DisplayName => Str

  Name of the Principal.


=head2 ID => Str

  If the principal is an AWS account, it provides the Canonical User ID.
If the principal is an IAM User, it provides a user ARN value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

