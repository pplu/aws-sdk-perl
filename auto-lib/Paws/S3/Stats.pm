package Paws::S3::Stats;
  use Moose;
  has BytesProcessed => (is => 'ro', isa => 'Int');
  has BytesReturned => (is => 'ro', isa => 'Int');
  has BytesScanned => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::Stats

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::Stats object:

  $service_obj->Method(Att1 => { BytesProcessed => $value, ..., BytesScanned => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::Stats object:

  $result = $service_obj->Method(...);
  $result->Att1->BytesProcessed

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 BytesProcessed => Int

  The total number of uncompressed object bytes processed.


=head2 BytesReturned => Int

  The total number of bytes of records payload data returned.


=head2 BytesScanned => Int

  The total number of object bytes scanned.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

