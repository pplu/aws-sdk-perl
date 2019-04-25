package Paws::Glacier::OutputLocation;
  use Moose;
  has S3 => (is => 'ro', isa => 'Paws::Glacier::S3Location');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::OutputLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glacier::OutputLocation object:

  $service_obj->Method(Att1 => { S3 => $value, ..., S3 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glacier::OutputLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->S3

=head1 DESCRIPTION

Contains information about the location where the select job results
are stored.

=head1 ATTRIBUTES


=head2 S3 => L<Paws::Glacier::S3Location>

  Describes an S3 location that will receive the results of the job
request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

