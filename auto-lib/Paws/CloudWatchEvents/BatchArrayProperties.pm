package Paws::CloudWatchEvents::BatchArrayProperties;
  use Moose;
  has Size => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchEvents::BatchArrayProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchEvents::BatchArrayProperties object:

  $service_obj->Method(Att1 => { Size => $value, ..., Size => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchEvents::BatchArrayProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->Size

=head1 DESCRIPTION

The array properties for the submitted job, such as the size of the
array. The array size can be between 2 and 10,000. If you specify array
properties for a job, it becomes an array job. This parameter is used
only if the target is an AWS Batch job.

=head1 ATTRIBUTES


=head2 Size => Int

  The size of the array, if this is an array batch job. Valid values are
integers between 2 and 10,000.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchEvents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

