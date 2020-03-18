package Paws::S3Control::PolicyStatus;
  use Moose;
  has IsPublic => (is => 'ro', isa => 'Bool');

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::PolicyStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::PolicyStatus object:

  $service_obj->Method(Att1 => { IsPublic => $value, ..., IsPublic => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::PolicyStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->IsPublic

=head1 DESCRIPTION

Indicates whether this access point policy is public. For more
information about how Amazon S3 evaluates policies to determine whether
they are public, see The Meaning of "Public"
(https://docs.aws.amazon.com/AmazonS3/latest/dev/access-control-block-public-access.html#access-control-block-public-access-policy-status)
in the I<Amazon Simple Storage Service Developer Guide>.

=head1 ATTRIBUTES


=head2 IsPublic => Bool

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

