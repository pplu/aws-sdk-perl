package Paws::Forecast::DataDestination;
  use Moose;
  has S3Config => (is => 'ro', isa => 'Paws::Forecast::S3Config', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DataDestination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Forecast::DataDestination object:

  $service_obj->Method(Att1 => { S3Config => $value, ..., S3Config => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Forecast::DataDestination object:

  $result = $service_obj->Method(...);
  $result->Att1->S3Config

=head1 DESCRIPTION

The destination of an exported forecast and credentials to access the
location. This object is submitted in the CreateForecastExportJob
request.

=head1 ATTRIBUTES


=head2 B<REQUIRED> S3Config => L<Paws::Forecast::S3Config>

  The path to an Amazon Simple Storage Service (Amazon S3) bucket along
with the credentials to access the bucket.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

