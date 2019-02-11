
package Paws::ImportExport::CancelJob;
  use Moose;
  has APIVersion => (is => 'ro', isa => 'Str');
  has JobId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImportExport::CancelJobOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CancelJobResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImportExport::CancelJob - Arguments for method CancelJob on L<Paws::ImportExport>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelJob on the
L<AWS ImportE<sol>Export|Paws::ImportExport> service. Use the attributes of this class
as arguments to method CancelJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelJob.

=head1 SYNOPSIS

    my $importexport = Paws->service('ImportExport');
    my $CancelJobOutput = $importexport->CancelJob(
      JobId      => 'MyJobId',
      APIVersion => 'MyAPIVersion',    # OPTIONAL
    );

    # Results:
    my $Success = $CancelJobOutput->Success;

    # Returns a L<Paws::ImportExport::CancelJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/importexport/CancelJob>

=head1 ATTRIBUTES


=head2 APIVersion => Str





=head2 B<REQUIRED> JobId => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelJob in L<Paws::ImportExport>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

