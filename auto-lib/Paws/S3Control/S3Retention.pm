# Generated by default/object.tt
package Paws::S3Control::S3Retention;
  use Moose;
  has Mode => (is => 'ro', isa => 'Str');
  has RetainUntilDate => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::S3Retention

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::S3Retention object:

  $service_obj->Method(Att1 => { Mode => $value, ..., RetainUntilDate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::S3Retention object:

  $result = $service_obj->Method(...);
  $result->Att1->Mode

=head1 DESCRIPTION

Contains the S3 Object Lock retention mode to be applied to all objects
in the S3 Batch Operations job. If you don't provide C<Mode> and
C<RetainUntilDate> data types in your operation, you will remove the
retention from your objects. For more information, see Using S3 Object
Lock retention with S3 Batch Operations
(https://docs.aws.amazon.com/AmazonS3/latest/dev/batch-ops-retention-date.html)
in the I<Amazon S3 User Guide>.

=head1 ATTRIBUTES


=head2 Mode => Str

The Object Lock retention mode to be applied to all objects in the
Batch Operations job.


=head2 RetainUntilDate => Str

The date when the applied Object Lock retention will expire on all
objects set by the Batch Operations job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

