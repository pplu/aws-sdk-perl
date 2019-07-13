package Paws::S3Control::JobFailure;
  use Moose;
  has FailureCode => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::JobFailure

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::JobFailure object:

  $service_obj->Method(Att1 => { FailureCode => $value, ..., FailureReason => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::JobFailure object:

  $result = $service_obj->Method(...);
  $result->Att1->FailureCode

=head1 DESCRIPTION

If this job failed, this element indicates why the job failed.

=head1 ATTRIBUTES


=head2 FailureCode => Str

  The failure code, if any, for the specified job.


=head2 FailureReason => Str

  The failure reason, if any, for the specified job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

