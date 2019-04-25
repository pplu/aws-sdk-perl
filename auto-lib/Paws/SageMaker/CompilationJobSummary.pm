package Paws::SageMaker::CompilationJobSummary;
  use Moose;
  has CompilationEndTime => (is => 'ro', isa => 'Str');
  has CompilationJobArn => (is => 'ro', isa => 'Str', required => 1);
  has CompilationJobName => (is => 'ro', isa => 'Str', required => 1);
  has CompilationJobStatus => (is => 'ro', isa => 'Str', required => 1);
  has CompilationStartTime => (is => 'ro', isa => 'Str');
  has CompilationTargetDevice => (is => 'ro', isa => 'Str', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', required => 1);
  has LastModifiedTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CompilationJobSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::CompilationJobSummary object:

  $service_obj->Method(Att1 => { CompilationEndTime => $value, ..., LastModifiedTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::CompilationJobSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->CompilationEndTime

=head1 DESCRIPTION

A summary of a model compilation job.

=head1 ATTRIBUTES


=head2 CompilationEndTime => Str

  The time when the model compilation job completed.


=head2 B<REQUIRED> CompilationJobArn => Str

  The Amazon Resource Name (ARN) of the model compilation job.


=head2 B<REQUIRED> CompilationJobName => Str

  The name of the model compilation job that you want a summary for.


=head2 B<REQUIRED> CompilationJobStatus => Str

  The status of the model compilation job.


=head2 CompilationStartTime => Str

  The time when the model compilation job started.


=head2 B<REQUIRED> CompilationTargetDevice => Str

  The type of device that the model will run on after compilation has
completed.


=head2 B<REQUIRED> CreationTime => Str

  The time when the model compilation job was created.


=head2 LastModifiedTime => Str

  The time when the model compilation job was last modified.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

