package Paws::Snowball::DataTransfer;
  use Moose;
  has BytesTransferred => (is => 'ro', isa => 'Int');
  has ObjectsTransferred => (is => 'ro', isa => 'Int');
  has TotalBytes => (is => 'ro', isa => 'Int');
  has TotalObjects => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::DataTransfer

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Snowball::DataTransfer object:

  $service_obj->Method(Att1 => { BytesTransferred => $value, ..., TotalObjects => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Snowball::DataTransfer object:

  $result = $service_obj->Method(...);
  $result->Att1->BytesTransferred

=head1 DESCRIPTION

Defines the real-time status of a Snowball's data transfer while the
device is at AWS. This data is only available while a job has a
C<JobState> value of C<InProgress>, for both import and export jobs.

=head1 ATTRIBUTES


=head2 BytesTransferred => Int

  The number of bytes transferred between a Snowball and Amazon S3.


=head2 ObjectsTransferred => Int

  The number of objects transferred between a Snowball and Amazon S3.


=head2 TotalBytes => Int

  The total bytes of data for a transfer between a Snowball and Amazon
S3. This value is set to 0 (zero) until all the keys that will be
transferred have been listed.


=head2 TotalObjects => Int

  The total number of objects for a transfer between a Snowball and
Amazon S3. This value is set to 0 (zero) until all the keys that will
be transferred have been listed.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

