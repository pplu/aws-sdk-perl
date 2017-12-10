package Paws::S3::RestoreRequest;
  use Moose;
  has Days => (is => 'ro', isa => 'Int');
  has Description => (is => 'ro', isa => 'Str');
  has GlacierJobParameters => (is => 'ro', isa => 'Paws::S3::GlacierJobParameters');
  has OutputLocation => (is => 'ro', isa => 'Paws::S3::OutputLocation');
  has SelectParameters => (is => 'ro', isa => 'Paws::S3::SelectParameters');
  has Tier => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::RestoreRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::RestoreRequest object:

  $service_obj->Method(Att1 => { Days => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::RestoreRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Days

=head1 DESCRIPTION

Container for restore job parameters.

=head1 ATTRIBUTES


=head2 Days => Int

  Lifetime of the active copy in days. Do not use with restores that
specify OutputLocation.


=head2 Description => Str

  The optional description for the job.


=head2 GlacierJobParameters => L<Paws::S3::GlacierJobParameters>

  Glacier related parameters pertaining to this job. Do not use with
restores that specify OutputLocation.


=head2 OutputLocation => L<Paws::S3::OutputLocation>

  Describes the location where the restore job's output is stored.


=head2 SelectParameters => L<Paws::S3::SelectParameters>

  Describes the parameters for Select job types.


=head2 Tier => Str

  Glacier retrieval tier at which the restore will be processed.


=head2 Type => Str

  Type of restore request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

