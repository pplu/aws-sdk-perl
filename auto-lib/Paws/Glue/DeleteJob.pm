
package Paws::Glue::DeleteJob;
  use Moose;
  has JobName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::DeleteJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DeleteJob - Arguments for method DeleteJob on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteJob on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method DeleteJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteJob.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $DeleteJobResponse = $glue->DeleteJob(
      JobName => 'MyNameString',

    );

    # Results:
    my $JobName = $DeleteJobResponse->JobName;

    # Returns a L<Paws::Glue::DeleteJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/DeleteJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobName => Str

The name of the job definition to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteJob in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

