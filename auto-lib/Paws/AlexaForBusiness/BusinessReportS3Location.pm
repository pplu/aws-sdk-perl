package Paws::AlexaForBusiness::BusinessReportS3Location;
  use Moose;
  has BucketName => (is => 'ro', isa => 'Str');
  has Path => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::BusinessReportS3Location

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::BusinessReportS3Location object:

  $service_obj->Method(Att1 => { BucketName => $value, ..., Path => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::BusinessReportS3Location object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketName

=head1 DESCRIPTION

The S3 location of the output reports.

=head1 ATTRIBUTES


=head2 BucketName => Str

  The S3 bucket name of the output reports.


=head2 Path => Str

  The path of the business report.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

