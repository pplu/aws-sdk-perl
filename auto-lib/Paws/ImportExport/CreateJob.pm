
package Paws::ImportExport::CreateJob;
  use Moose;
  has APIVersion => (is => 'ro', isa => 'Str');
  has JobType => (is => 'ro', isa => 'Str', required => 1);
  has Manifest => (is => 'ro', isa => 'Str', required => 1);
  has ManifestAddendum => (is => 'ro', isa => 'Str');
  has ValidateOnly => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImportExport::CreateJobOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateJobResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImportExport::CreateJob - Arguments for method CreateJob on L<Paws::ImportExport>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateJob on the
L<AWS ImportE<sol>Export|Paws::ImportExport> service. Use the attributes of this class
as arguments to method CreateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateJob.

=head1 SYNOPSIS

    my $importexport = Paws->service('ImportExport');
    my $CreateJobOutput = $importexport->CreateJob(
      JobType          => 'Import',
      Manifest         => 'MyManifest',
      ValidateOnly     => 1,
      APIVersion       => 'MyAPIVersion',          # OPTIONAL
      ManifestAddendum => 'MyManifestAddendum',    # OPTIONAL
    );

    # Results:
    my $ArtifactList          = $CreateJobOutput->ArtifactList;
    my $JobId                 = $CreateJobOutput->JobId;
    my $JobType               = $CreateJobOutput->JobType;
    my $Signature             = $CreateJobOutput->Signature;
    my $SignatureFileContents = $CreateJobOutput->SignatureFileContents;
    my $WarningMessage        = $CreateJobOutput->WarningMessage;

    # Returns a L<Paws::ImportExport::CreateJobOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/importexport/CreateJob>

=head1 ATTRIBUTES


=head2 APIVersion => Str





=head2 B<REQUIRED> JobType => Str



Valid values are: C<"Import">, C<"Export">

=head2 B<REQUIRED> Manifest => Str





=head2 ManifestAddendum => Str





=head2 B<REQUIRED> ValidateOnly => Bool






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateJob in L<Paws::ImportExport>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

