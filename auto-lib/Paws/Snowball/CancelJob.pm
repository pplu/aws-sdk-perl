
package Paws::Snowball::CancelJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Snowball::CancelJobResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Snowball::CancelJob - Arguments for method CancelJob on L<Paws::Snowball>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelJob on the
L<Amazon ImportE<sol>Export Snowball|Paws::Snowball> service. Use the attributes of this class
as arguments to method CancelJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelJob.

=head1 SYNOPSIS

    my $snowball = Paws->service('Snowball');
   # To cancel a job for a Snowball device
   # This operation cancels a job. You can only cancel a job before its JobState
   # value changes to PreparingAppliance.
    my $CancelJobResult = $snowball->CancelJob(
      {
        'JobId' => 'JID123e4567-e89b-12d3-a456-426655440000'
      }
    );


Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/snowball/CancelJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The 39-character job ID for the job that you want to cancel, for
example C<JID123e4567-e89b-12d3-a456-426655440000>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelJob in L<Paws::Snowball>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

