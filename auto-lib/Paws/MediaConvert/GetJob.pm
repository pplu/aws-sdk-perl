
package Paws::MediaConvert::GetJob;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'id', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-08-29/jobs/{id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConvert::GetJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::GetJob - Arguments for method GetJob on L<Paws::MediaConvert>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetJob on the
L<AWS Elemental MediaConvert|Paws::MediaConvert> service. Use the attributes of this class
as arguments to method GetJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetJob.

=head1 SYNOPSIS

    my $mediaconvert = Paws->service('MediaConvert');
    my $GetJobResponse = $mediaconvert->GetJob(
      Id => 'My__string',

    );

    # Results:
    my $Job = $GetJobResponse->Job;

    # Returns a L<Paws::MediaConvert::GetJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconvert/GetJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

the job ID of the job.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetJob in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

