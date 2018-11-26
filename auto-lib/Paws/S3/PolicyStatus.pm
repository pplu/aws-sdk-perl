package Paws::S3::PolicyStatus;
  use Moose;
  has IsPublic => (is => 'ro', isa => 'Bool', request_name => 'IsPublic', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PolicyStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::PolicyStatus object:

  $service_obj->Method(Att1 => { IsPublic => $value, ..., IsPublic => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::PolicyStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->IsPublic

=head1 DESCRIPTION

The container element for a bucket's policy status.

=head1 ATTRIBUTES


=head2 IsPublic => Bool

  The policy status for this bucket. C<TRUE> indicates that this bucket
is public. C<FALSE> indicates that the bucket is not public.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

