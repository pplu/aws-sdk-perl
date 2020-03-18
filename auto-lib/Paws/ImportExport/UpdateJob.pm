
package Paws::ImportExport::UpdateJob;
  use Moose;
  has APIVersion => (is => 'ro', isa => 'Str');
  has JobId => (is => 'ro', isa => 'Str', required => 1);
  has JobType => (is => 'ro', isa => 'Str', required => 1);
  has Manifest => (is => 'ro', isa => 'Str', required => 1);
  has ValidateOnly => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImportExport::UpdateJobOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateJobResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImportExport::UpdateJob - Arguments for method UpdateJob on L<Paws::ImportExport>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateJob on the
L<AWS ImportE<sol>Export|Paws::ImportExport> service. Use the attributes of this class
as arguments to method UpdateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateJob.

=head1 SYNOPSIS

    my $importexport = Paws->service('ImportExport');
    my $UpdateJobOutput = $importexport->UpdateJob(
      JobId        => 'MyJobId',
      JobType      => 'Import',
      Manifest     => 'MyManifest',
      ValidateOnly => 1,
      APIVersion   => 'MyAPIVersion',    # OPTIONAL
    );

    # Results:
    my $ArtifactList   = $UpdateJobOutput->ArtifactList;
    my $Success        = $UpdateJobOutput->Success;
    my $WarningMessage = $UpdateJobOutput->WarningMessage;

    # Returns a L<Paws::ImportExport::UpdateJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/importexport/UpdateJob>

=head1 ATTRIBUTES


=head2 APIVersion => Str





=head2 B<REQUIRED> JobId => Str





=head2 B<REQUIRED> JobType => Str



Valid values are: C<"Import">, C<"Export">

=head2 B<REQUIRED> Manifest => Str





=head2 B<REQUIRED> ValidateOnly => Bool






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateJob in L<Paws::ImportExport>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

