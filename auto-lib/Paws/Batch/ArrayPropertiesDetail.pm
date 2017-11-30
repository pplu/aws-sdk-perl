package Paws::Batch::ArrayPropertiesDetail;
  use Moose;
  has Index => (is => 'ro', isa => 'Int', request_name => 'index', traits => ['NameInRequest']);
  has Size => (is => 'ro', isa => 'Int', request_name => 'size', traits => ['NameInRequest']);
  has StatusSummary => (is => 'ro', isa => 'Paws::Batch::ArrayJobStatusSummary', request_name => 'statusSummary', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::ArrayPropertiesDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::ArrayPropertiesDetail object:

  $service_obj->Method(Att1 => { Index => $value, ..., StatusSummary => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::ArrayPropertiesDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->Index

=head1 DESCRIPTION

An object representing the array properties of a job.

=head1 ATTRIBUTES


=head2 Index => Int

  The job index within the array that is associated with this job. This
parameter is returned for array job children.


=head2 Size => Int

  The size of the array job. This parameter is returned for parent array
jobs.


=head2 StatusSummary => L<Paws::Batch::ArrayJobStatusSummary>

  A summary of the number of array job children in each available job
status. This parameter is returned for parent array jobs.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

