package Paws::Batch::JobDependency;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', request_name => 'jobId', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::JobDependency

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Batch::JobDependency object:

  $service_obj->Method(Att1 => { JobId => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Batch::JobDependency object:

  $result = $service_obj->Method(...);
  $result->Att1->JobId

=head1 DESCRIPTION

An object representing an AWS Batch job dependency.

=head1 ATTRIBUTES


=head2 JobId => Str

  The job ID of the AWS Batch job associated with this dependency.


=head2 Type => Str

  The type of the job dependency.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

