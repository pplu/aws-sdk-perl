package Paws::AlexaForBusiness::BusinessReport;
  use Moose;
  has DeliveryTime => (is => 'ro', isa => 'Str');
  has DownloadUrl => (is => 'ro', isa => 'Str');
  has FailureCode => (is => 'ro', isa => 'Str');
  has S3Location => (is => 'ro', isa => 'Paws::AlexaForBusiness::BusinessReportS3Location');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::BusinessReport

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AlexaForBusiness::BusinessReport object:

  $service_obj->Method(Att1 => { DeliveryTime => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AlexaForBusiness::BusinessReport object:

  $result = $service_obj->Method(...);
  $result->Att1->DeliveryTime

=head1 DESCRIPTION

Usage report with specified parameters.

=head1 ATTRIBUTES


=head2 DeliveryTime => Str

  The time of report delivery.


=head2 DownloadUrl => Str

  The download link where a user can download the report.


=head2 FailureCode => Str

  The failure code.


=head2 S3Location => L<Paws::AlexaForBusiness::BusinessReportS3Location>

  The S3 location of the output reports.


=head2 Status => Str

  The status of the report generation execution (RUNNING, SUCCEEDED, or
FAILED).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

