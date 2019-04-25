
package Paws::Glue::GetJobRun;
  use Moose;
  has JobName => (is => 'ro', isa => 'Str', required => 1);
  has PredecessorsIncluded => (is => 'ro', isa => 'Bool');
  has RunId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetJobRun');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetJobRunResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetJobRun - Arguments for method GetJobRun on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetJobRun on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetJobRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetJobRun.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetJobRunResponse = $glue->GetJobRun(
      JobName              => 'MyNameString',
      RunId                => 'MyIdString',
      PredecessorsIncluded => 1,                # OPTIONAL
    );

    # Results:
    my $JobRun = $GetJobRunResponse->JobRun;

    # Returns a L<Paws::Glue::GetJobRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetJobRun>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobName => Str

Name of the job definition being run.



=head2 PredecessorsIncluded => Bool

True if a list of predecessor runs should be returned.



=head2 B<REQUIRED> RunId => Str

The ID of the job run.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetJobRun in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

